defmodule Lyex.Parser.Context.BindingContext do
  use Lyex.Parser.Context
  alias Lyex.Parser.{Binding, Operation}

  def enter(startElement(prefix: 'wsdl', name: 'binding', attributes: attrs), acc) do
    name = read_attr(attrs, 'name')
    type = read_attr(attrs, 'type')
    binding = %Binding{name: name, type: type}

    %{acc | stack: [binding | acc.stack]}
    |> enter_context()
  end

  def enter(startElement(prefix: 'soap', name: 'binding', attributes: attrs), acc) do
    %{stack: [binding | rest]} = acc
    transport = read_attr(attrs, 'transport')
    binding = %{binding | transport: transport}
    %{acc | stack: [binding | rest]}
  end

  def enter(startElement(prefix: 'wsdl', name: 'operation', attributes: attributes), acc) do
    name = read_attr(attributes, 'name')
    operation = %Operation{name: name}
    %{acc | stack: [operation | acc.stack]}
  end

  def enter(startElement(prefix: 'soap', name: 'operation', attributes: attributes), acc) do
    %{stack: [operation | rest]} = acc
    action = read_attr(attributes, 'soapAction')
    style = read_attr(attributes, 'style')
    operation = %{operation | action: action, style: style}
    %{acc | stack: [operation | rest]}
  end

  def exit(endElement(prefix: 'wsdl', name: 'binding'), acc) do
    %{stack: [binding | rest]} = acc
    bindings = Map.put_new(acc.bindings, binding.name, binding)
    %{acc | bindings: bindings, stack: rest} |> exit_context()
  end

  def exit(endElement(prefix: 'wsdl', name: 'operation'), acc) do
    %{stack: [operation, binding | rest]} = acc
    operations = Map.put_new(binding.operations, operation.name, operation)
    binding = %{binding | operations: operations}
    %{acc | stack: [binding | rest]}
  end
end
