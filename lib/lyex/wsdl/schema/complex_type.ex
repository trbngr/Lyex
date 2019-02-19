defmodule Lyex.Wsdl.Schema.ComplexType do
  defstruct name: nil,
            documentation: nil,
            elements: [],
            restriction: nil

  alias Lyex.Wsdl.Schema
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'complexType', attributes: attrs), state) do
    name = read_attr(attrs, 'name')

    %{state | stack: [%Schema.ComplexType{name: name} | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'restriction') = xml, state) do
    Schema.Restriction.enter(xml, state)
  end

  def enter(startElement(name: 'element') = xml, state) do
    Schema.Element.enter(xml, state)
  end

  def enter(startElement(name: 'documentation'), state) do
    %{state | stack: [:reading_documentation | state.stack]}
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

  def exit(endElement(name: 'complexType'), state) do
    %{stack: [type, parent | rest]} = state

    parent =
      case parent do
        %Schema{} -> %{parent | complex_types: [type | parent.complex_types]}
        %Schema.Element{} -> %{parent | type: type}
      end

    %{state | stack: [parent | rest]}
    |> exit_context()
  end
end
