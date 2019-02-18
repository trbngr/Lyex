defmodule Lyex.Wsdl.Schema.Element do
  defstruct name: nil,
            type: nil,
            fixed: nil,
            default: nil,
            documentation: nil,
            minOccurs: nil,
            maxOccurs: nil,
            nillable: nil

  alias Lyex.Wsdl.Schema
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'element', attributes: attrs), state) do
    name = read_attr(attrs, 'name')
    type = read_attr(attrs, 'type')
    fixed = read_attr(attrs, 'fixed')
    default = read_attr(attrs, 'default')
    nillable = read_attr(attrs, 'nillable') |> parse_boolean()
    minOccurs = read_attr(attrs, 'minOccurs') |> try_parse_int()
    maxOccurs = read_attr(attrs, 'maxOccurs') |> try_parse_int()

    element = %Schema.Element{
      name: name,
      type: type,
      default: default,
      fixed: fixed,
      nillable: nillable,
      minOccurs: minOccurs,
      maxOccurs: maxOccurs
    }

    %{state | stack: [element | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'complexType'), state) do
    %{stack: [element | rest], context: context} = state

    %{
      state
      | context: [Schema.ComplexType | context],
        stack: [%Schema.ComplexType{name: element.name}, element | rest]
    }
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

  def exit(endElement(name: 'element'), state) do
    %{stack: [element, parent | rest]} = state

    parent =
      if Map.has_key?(parent, :elements) do
        cond do
          is_list(parent.elements) ->
            %{parent | elements: [element | parent.elements]}

          is_map(parent.elements) ->
            %{parent | elements: Map.put(parent.elements, element.name, element)}

          true ->
            parent
        end
      end

    %{state | stack: [parent | rest]}
    |> exit_context()
  end

  defp try_parse_int(nil), do: nil

  defp try_parse_int(number) do
    case Integer.parse(number) do
      :error -> number
      {number, _} -> number
    end
  end

  def parse_boolean("true"), do: true
  def parse_boolean('true'), do: true
  def parse_boolean(_), do: false
end
