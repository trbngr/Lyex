defmodule Lyex.Wsdl.Schema.SimpleType do
  defstruct name: nil,
            documentation: nil,
            restriction: nil

  alias Lyex.Wsdl.Schema
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'simpleType', attributes: attrs), state) do
    name = read_attr(attrs, 'name')

    type = %Schema.SimpleType{name: name}

    %{state | stack: [type | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'documentation'), state) do
    %{state | stack: [:reading_documentation | state.stack]}
  end

  def enter(startElement(name: 'restriction') = xml, state) do
    Schema.Restriction.enter(xml, state)
  end

  def value(elementValue(value: value), state) do
    %{stack: [action, target | rest]} = state

    case action do
      :reading_documentation ->
        target = %{target | documentation: value}
        %{state | stack: [target | rest]}

      _ ->
        state
    end
  end

  def exit(endElement(name: 'simpleType'), state) do
    %{stack: [type, schema | rest]} = state
    schema = %{schema | simple_types: [type | schema.simple_types]}

    %{state | stack: [schema | rest]}
    |> exit_context()
  end
end
