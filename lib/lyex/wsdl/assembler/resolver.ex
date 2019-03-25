defmodule Lyex.Wsdl.Assembler.Resolver do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Schema
  alias Lyex.Wsdl.Assembler.Soap

  def resolve_binding(%Wsdl.Service.Port{binding: binding}, %Wsdl{bindings: bindings}) do
    [_, binding_name] = split_qname(binding)

    case Enum.find(bindings, fn %{name: name} -> name == binding_name end) do
      nil -> raise Lyex.Error, "Unable to locate binding #{binding}"
      binding -> binding
    end
  end

  def resolve_port_type(
        %Wsdl.Binding{type: type} = binding,
        %Wsdl{port_types: port_types} = wsdl,
        %Schema{} = schema
      ) do
    [_, port_type_name] = split_qname(type)

    case Enum.find(port_types, fn %{name: name} -> name == port_type_name end) do
      nil -> raise Lyex.Error, "Unable to locate port type #{port_type_name}"
      port_type -> port_type |> populate_port_type(binding, wsdl, schema)
    end
  end

  defp populate_port_type(
         %Wsdl.PortType{} = port_type,
         %Wsdl.Binding{} = binding,
         %Wsdl{} = wsdl,
         %Schema{} = schema
       ) do
    %{
      port_type
      | operations:
          Enum.map(
            port_type.operations,
            &populate_port_type_operation(&1, binding, wsdl, schema)
          )
    }
  end

  defp populate_port_type_operation(
         %Wsdl.PortType.Operation{} = operation,
         %Wsdl.Binding{} = binding,
         %Wsdl{} = wsdl,
         %Schema{} = schema
       ) do
    binding_operation = resolve_binding_operation(operation.name, binding)
    %{action: action} = binding_operation

    %{namespace: input_namespace} = binding_operation.input
    %{namespace: output_namespace} = binding_operation.output

    %{type: input_type, message: input} = operation.input |> resolve_message(wsdl, schema)
    %{type: output_type, message: output} = operation.output |> resolve_message(wsdl, schema)

    operation = %{
      operation
      | action: action,
        input: input,
        input_type: input_type,
        input_namespace: input_namespace,
        output: output,
        output_type: output_type,
        output_namespace: output_namespace
    }

    request_template = Soap.generate_request_template(operation, binding, wsdl, input)
    request_headers = Soap.get_request_headers(binding, action)

    %{operation | request_template: request_template, request_headers: request_headers}
  end

  defp resolve_binding_operation(name, %Wsdl.Binding{operations: operations}) do
    case Enum.find(operations, fn %{name: operation_name} -> operation_name == name end) do
      nil -> raise Lyex.Error, "Unable to locate binding operation #{name}"
      operation -> operation
    end
  end

  def resolve_types(nil, _), do: nil

  def resolve_types(%Schema.Element{type: type} = element, %Schema{} = schema)
      when is_binary(type) do
    [_prefix, type_name] = split_qname(type)

    complex_type = Enum.find(schema.complex_types, fn %{name: name} -> name == type_name end)
    simple_type = Enum.find(schema.simple_types, fn %{name: name} -> name == type_name end)
    el = Enum.find(schema.elements, fn %{name: name} -> name == type_name end)

    type =
      case {complex_type, simple_type, el} do
        # raise Lyex.Error, "Unable to locate message #{type}"
        {nil, nil, nil} -> type_name
        {nil, nil, element} -> element.name
        {nil, simple_type, _element} -> simple_type
        {complex_type, nil, _element} -> resolve_types(complex_type, schema)
      end

    %{element | type: type}
  end

  def resolve_types(%Schema.Element{type: type} = element, %Schema{} = schema) do
    %{element | type: resolve_types(type, schema)}
  end

  def resolve_types(%Schema.ComplexType{} = type, %Schema{} = schema) do
    type.elements
    |> Enum.map(&resolve_types(&1, schema))
  end

  def resolve_message(type, %{messages: messages}, schema) do
    [_, type] = split_qname(type)

    case Enum.find(messages, fn message -> message.name == type end) do
      nil ->
        raise Lyex.Error, "Unable to locate message #{type}"

      message ->
        message

        %{
          type: type,
          message:
            message
            |> resolve_element(schema)
            |> resolve_types(schema)
        }
    end
  end

  defp resolve_element(%Wsdl.Message{part: %{element: el, name: part_name}}, schema) do
    name =
      case {el, part_name} do
        {nil, part_name} -> part_name
        {el, _part_name} -> el
      end

    [_, name] = split_qname(name)

    Enum.find(schema.elements, fn element -> element.name == name end) ||
      %Schema.Element{type: name}
  end

  defp split_qname(nil), do: nil

  defp split_qname(qname) do
    parts = qname |> String.split(":")

    if(length(parts) == 1) do
      [nil | parts]
    else
      parts
    end
  end
end
