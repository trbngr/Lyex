defmodule Lyex.Parser.Context.ComplexTypeContext do
  use Lyex.Parser.Context, debug: [enabled: false]
  alias Lyex.Parser.{ComplexType, SchemaElement}

  def enter(startElement(name: 'complexType', attributes: attrs), acc) do
    %{stack: [schema | _rest]} = acc
    %{target_namespace: namespace} = schema
    name = read_attr(attrs, 'name')
    type = %ComplexType{name: name, namespace: namespace}
    %{acc | stack: [type | acc.stack]} |> enter_context()
  end

  def enter(startElement(name: 'element', attributes: attrs), acc) do
    %{stack: [complex_type | rest]} = acc
    name = read_attr(attrs, 'name')
    type = read_attr(attrs, 'type')
    min_occurs = read_attr(attrs, 'min_occurs', 0)
    nillable = read_attr(attrs, 'nillable', true) |> Boolean.parse()
    element = %SchemaElement{name: name, type: type, min_occurs: min_occurs, nillable: nillable}
    complex_type = %{complex_type | elements: [element | complex_type.elements]}
    %{acc | stack: [complex_type | rest]}
  end

  def exit(endElement(name: 'complexType'), acc) do
    %{stack: [type, schema | rest]} = acc
    complex_types = Map.put_new(schema.complex_types, type.name, type)
    schema = %{schema | complex_types: complex_types}
    %{acc | stack: [schema | rest]} |> exit_context()
  end
end
