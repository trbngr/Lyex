defmodule Lyex.Parser.Context.PortTypeContext do
  use Lyex.Parser.Context
  alias Lyex.Parser.{Operation, PortType}

  def read_prefix(prefixMapping() = p, acc) do
    p |> IO.inspect()
    acc
  end

  def enter(startElement(name: 'portType', attributes: attrs), acc) do
    %{stack: stack} = acc
    name = read_attr(attrs, 'name')

    %{acc | stack: [%PortType{name: name} | stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'operation', attributes: attrs), acc) do
    %{stack: stack} = acc
    name = read_attr(attrs, 'name')
    %{acc | stack: [%Operation{name: name} | stack]}
  end

  def enter(startElement(name: 'input', attributes: attrs), acc) do
    %{stack: [operation | rest]} = acc
    message = read_attr(attrs, 'message')
    action = read_attr(attrs, 'Action')
    operation = %{operation | input: %{message: message, action: action}}
    %{acc | stack: [operation | rest]}
  end

  def enter(startElement(name: 'output', attributes: attrs), acc) do
    %{stack: [operation | rest]} = acc
    message = read_attr(attrs, 'message')
    action = read_attr(attrs, 'Action')
    operation = %{operation | output: %{message: message, action: action}}
    %{acc | stack: [operation | rest]}
  end

  def exit(endElement(name: 'portType'), acc) do
    %{stack: [port_type | rest]} = acc
    port_types = Map.put_new(acc.port_types, port_type.name, port_type)
    exit_context(%{acc | port_types: port_types, stack: rest})
  end

  def exit(endElement(name: 'operation'), acc) do
    %{stack: [operation, port_type | rest]} = acc
    port_type = %{port_type | operations: [operation | port_type.operations]}
    %{acc | stack: [port_type | rest]}
  end
end
