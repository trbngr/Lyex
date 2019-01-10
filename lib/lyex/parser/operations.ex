defmodule Lyex.Parser.Operations do
  alias Lyex.Parser.{ComplexType, SimpleType}

  def read_operations(definitions) do
    Enum.reduce(definitions, [], fn definition, acc ->
      %{services: services} = definition

      Enum.reduce(services, acc, fn {service_name, %{ports: ports}}, acc ->
        Enum.reduce(ports, acc, fn {port_name, port}, acc ->
          %{choices: [address]} = port

          binding =
            split_qname(port.binding)
            |> resolve_type_namespace(definition)
            |> resolve_type_definition(definitions)
            |> get_binding()

          split_qname(binding.type)
          |> resolve_type_namespace(definition)
          |> resolve_type_definition(definitions)
          |> read_operations_from_port_type(binding, definitions)
          |> Enum.reduce(acc, fn operation, acc ->
            operation =
              operation
              |> Map.put(:service, service_name)
              |> Map.put(:binding, binding.name)
              |> Map.put(:port, port_name)
              |> Map.put(:address, address)
              |> create_envelope_for_operation

            [operation | acc]
          end)
        end)
      end)
    end)
  end

  defp split_qname(qname), do: qname |> String.split(":")

  defp resolve_type_namespace([prefix, type], %{namespaces: nss}) do
    case Map.get(nss, prefix) do
      nil -> raise "unable to location namespace with prefix `#{prefix}`"
      ns -> {ns, type}
    end
  end

  defp resolve_type_namespace(type, definition) do
    resolve_type_namespace(split_qname(type), definition)
  end

  defp resolve_type_definition({target_namespace, type}, definitions) do
    case Enum.find(definitions, fn %{target_namespace: ns} -> target_namespace == ns end) do
      nil -> raise "Unable to find definition with target_namespace `#{target_namespace}`"
      definition -> {type, definition}
    end
  end

  defp read_operation_action_from_binding(name, %{operations: operations, name: binding_name}) do
    case Map.get(operations, name) do
      nil -> raise "Unable to find operation '#{name}' in binding '#{binding_name}'"
      %{action: action} -> action
    end
  end

  defp read_operations_from_port_type({name, definition}, binding, definitions) do
    %{port_types: port_types, target_namespace: ns} = definition

    case Map.get(port_types, name) do
      nil ->
        raise "Unable to find port_types `#{name}`"

      port_type ->
        Enum.map(port_type.operations, fn operation ->
          %{input: input, output: output, name: operation_name} = operation
          action = read_operation_action_from_binding(operation_name, binding)

          input_message =
            split_qname(input.message)
            |> resolve_type_namespace(definition)
            |> resolve_type_definition(definitions)
            |> get_message_type()
            |> resolve_type()

          output_message =
            split_qname(output.message)
            |> resolve_type_namespace(definition)
            |> resolve_type_definition(definitions)
            |> get_message_type()
            |> resolve_type()

          input_parameters = create_operation_parameters(input_message, definition)
          output_parameters = create_operation_parameters(output_message, definition)

          operation
          |> Map.take([:name])
          |> Map.put(:action, action)
          |> Map.put(:input, Map.from_struct(input_message))
          |> Map.put(:output, Map.from_struct(output_message))
          |> Map.put(:input_parameters, input_parameters)
          |> Map.put(:output_parameters, output_parameters)
          |> Map.put(:namespace, ns)
        end)
    end
  end

  defp get_binding({name, %{bindings: bindings}}) do
    case Map.get(bindings, name) do
      nil -> raise "Unable to find binding `#{name}`"
      binding -> binding
    end
  end

  defp get_message_type({name, %{messages: messages} = definition}) do
    case Map.get(messages, name) do
      nil ->
        raise "Unable to find message '#{name}'"

      %{parts: [%{element: element, name: "parameters"}]} ->
        {_ns, name} = resolve_type_namespace(element, definition)
        {name, definition}
    end
  end

  defp resolve_type({name, %{schemas: schemas} = definition}) do
    type =
      Enum.reduce_while(schemas, nil, fn {_, schema}, acc ->
        %{
          complex_types: complex_types,
          elements: elements,
          simple_types: simple_types
        } = schema

        case Map.get(complex_types, name) do
          nil ->
            case Map.get(simple_types, name) do
              nil ->
                case Map.get(elements, name) do
                  nil ->
                    {:cont, acc}

                  element ->
                    [_, type] = split_qname(element.type)
                    {:halt, resolve_type({type, definition})}
                end

              simple_type ->
                {:halt, simple_type}
            end

          complex_type ->
            {:halt, complex_type}
        end
      end)

    case type do
      nil ->
        raise "Unable to find type '#{name}'"

      %{elements: elements} = type ->
        elements = Enum.map(elements, &resolve_element_type(&1, definition))
        %{type | elements: elements}

      type ->
        type
    end
  end

  defp resolve_element_type(%{type: %SimpleType{}} = element, _definition), do: element

  defp resolve_element_type(%{type: %ComplexType{} = type} = element, definition) do
    %{elements: elements} = type
    elements = Enum.map(elements, &resolve_element_type(&1, definition))
    %{element | type: %{type | elements: elements}}
  end

  defp resolve_element_type(%{type: nil} = element, _definition), do: element

  defp resolve_element_type(%{type: element_type} = element, definition) do
    [_ns, element_type] = split_qname(element_type)

    case Lyex.Parser.Primitives.is_primitive(element_type) do
      false -> %{element | type: resolve_type({element_type, definition})}
      true -> element
    end
  end

  defp create_operation_parameters(type, definition, map \\ %{})

  defp create_operation_parameters(%{name: name, restrictions: _}, _def, map) do
    Map.put(map, String.to_atom(name), "")
  end

  defp create_operation_parameters(%{elements: elements}, definition, map) do
    Enum.reduce(elements, map, fn
      %{type: %ComplexType{} = type, name: name}, acc ->
        params = create_operation_parameters(type, definition, %{})
        Map.put(acc, String.to_atom(name), params)

      %{type: _type, name: name}, acc ->
        Map.put(acc, String.to_atom(name), "")
    end)
  end

  defp create_envelope_for_operation(operation) do
    parameters = create_parameters_for_operation(operation)

    envelope =
      """
      <s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
        <s:Header />
        <s:Body>
          <#{operation.name} xmlns="#{operation.namespace}">
            <input xmlns:lyex="#{operation.input.namespace}" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
            #{parameters}
            </input>
          </LookupRecipient>
        </s:Body>
      </s:Envelope>
      """
      |> String.trim()

    Map.put(operation, :envelope, envelope)
  end

  defp create_parameters_for_operation(%{input_parameters: parameters}) do
    Enum.reduce(parameters, "", &create_parameters_for_input/2)
  end

  defp create_parameters_for_input({key, %{} = value}, acc) do
    parameters = Enum.reduce(value, "", &create_parameters_for_input(&1, &2, key))
    acc <> "<lyex:#{key}>" <> parameters <> "</lyex:#{key}>"
  end

  defp create_parameters_for_input({key, _value}, acc) do
    acc <> "<lyex:#{key}><%= @args[:#{key}]%></lyex:#{key}>"
  end

  defp create_parameters_for_input({key, _value}, acc, prefix) do
    acc <> "<lyex:#{key}><%= @args[:#{prefix}][:#{key}] %></lyex:#{key}>"
  end
end
