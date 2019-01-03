defmodule Lyex.Parser.Context.SchemaElementContext do
  use Lyex.Parser.Context,
    debug: [
      enabled: false,
      events: [
        unconsumed_node: false,
        enter_context: true,
        exit_context: true,
        enter_node: ['element'],
        exit_node: ['element']
      ]
    ]

  alias Lyex.Parser.{Schema, SchemaElement, Primitives}

  def enter(startElement(name: 'element', attributes: attrs), acc) do
    %{stack: [current_focus | rest]} = acc
    name = read_attr(attrs, 'name')

    case current_focus do
      %Schema{} = schema ->
        case Primitives.is_primitive(name) do
          true ->
            acc

          false ->
            element = %SchemaElement{name: name}
            %{acc | stack: [element, schema | rest]} |> enter_context()
        end

      %SchemaElement{} = element ->
        type = read_attr(attrs, 'type')
        min_occurs = read_attr(attrs, 'min_occurs', 0)
        nillable = read_attr(attrs, 'nillable', true) |> Boolean.parse()
        element = %{element | type: type, min_occurs: min_occurs, nillable: nillable}
        %{acc | stack: [element | rest]}
    end
  end

  def read_prefix(prefixMapping(prefix: prefix, namespace: ns), acc) do
    %{stack: [element | rest]} = acc
    namespaces = Map.put_new(element.namespaces, to_string(prefix), to_string(ns))
    element = %{element | namespaces: namespaces}
    %{acc | stack: [element | rest]}
  end

  def exit(endElement(name: 'element'), acc) do
    %{stack: [element, schema | rest]} = acc
    elements = Map.put_new(schema.elements, element.name, element)
    schema = %{schema | elements: elements}
    %{acc | stack: [schema | rest]} |> exit_context()
  end
end
