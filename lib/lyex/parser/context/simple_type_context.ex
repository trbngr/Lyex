defmodule Lyex.Parser.Context.SimpleTypeContext do
  use Lyex.Parser.Context
  alias Lyex.Parser.SimpleType

  def enter(startElement(name: 'simpleType', attributes: attrs), acc) do
    %{stack: [schema | _rest]} = acc
    %{target_namespace: namespace} = schema
    name = read_attr(attrs, 'name')
    %{acc | stack: [%SimpleType{name: name, namespace: namespace} | acc.stack]} |> enter_context()
  end

  def enter(startElement(name: 'enumeration', attributes: attrs), acc) do
    %{stack: [type | rest]} = acc
    value = read_attr(attrs, 'value')
    type = %{type | restrictions: [value | type.restrictions]}
    %{acc | stack: [type | rest]}
  end

  def exit(endElement(name: 'simpleType'), acc) do
    %{stack: [type, schema | rest]} = acc
    simple_types = Map.put_new(schema.simple_types, type.name, type)
    schema = %{schema | simple_types: simple_types}
    %{acc | stack: [schema | rest]} |> exit_context()
  end
end
