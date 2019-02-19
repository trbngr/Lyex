defmodule Lyex.Wsdl.Compiler.Resolver do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Compiler
  alias Lyex.Wsdl.Schema

  def resolve_types(nil, _), do: nil

  def resolve_types(%Schema.Element{type: type} = element, %Schema{} = schema)
      when is_binary(type) do
    [_prefix, type_name] = split_qname(type)

    complex_type = Enum.find(schema.complex_types, fn %{name: name} -> name == type_name end)
    simple_type = Enum.find(schema.simple_types, fn %{name: name} -> name == type_name end)
    el = Enum.find(schema.elements, fn %{name: name} -> name == type_name end)

    type =
      case {complex_type, simple_type, el} do
        # raise Compiler.Error, "Unable to location message #{type}"
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

    Enum.find(messages, fn message -> message.name == type end)
    |> resolve_element(schema)
    |> resolve_types(schema)
  end

  defp resolve_element(%Wsdl.Message{part: %{element: el, name: part_name}}, schema) do
    name =
      case {el, part_name} do
        {nil, part_name} -> part_name
        {_part_name, el} -> el
      end

    [_, name] = split_qname(name)

    Enum.find(schema.elements, fn element -> element.name == name end) ||
      %Schema.Element{type: name}
  end

  def resolve_operation_binding(
        %Wsdl.PortType.Operation{} = operation,
        %Wsdl{} = wsdl,
        %Schema{} = schema
      ) do
    %{service: %{ports: ports}} = wsdl

    if length(ports) > 1 do
      raise Compiler.Error,
            "WSDL services with more than one port defined are unsupported at the moment."
    end

    [_, binding_name] = split_qname(hd(ports).binding)

    with {:ok, binding} <- resolve_binding(binding_name, wsdl),
         {:ok, operation} <- resolve_binding_operation(operation.name, binding) do
      %{
        operation
        | input: %{header: resolve_operation_header(operation.input, wsdl, schema)},
          output: %{header: resolve_operation_header(operation.output, wsdl, schema)}
      }
    end
  end

  defp resolve_operation_header(operation, _, _), do: operation

  defp resolve_operation_header(%{header: %{message: message}}, %{messages: messages}, schema) do
    [_, message_name] = split_qname(message)

    Enum.find(messages, fn msg -> msg.name == message_name end)
    |> resolve_element(schema)
    |> resolve_types(schema)
  end

  defp resolve_binding(name, %Wsdl{bindings: bindings}) do
    case Enum.find(bindings, fn %{name: binding_name} -> binding_name == name end) do
      nil -> raise Compiler.Error, "Unable to located binding #{name}"
      binding -> {:ok, binding}
    end
  end

  defp resolve_binding_operation(name, %Wsdl.Binding{operations: operations}) do
    case Enum.find(operations, fn %{name: operation_name} -> operation_name == name end) do
      nil -> raise Compiler.Error, "Unable to located binding operation #{name}"
      operation -> {:ok, operation}
    end
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
