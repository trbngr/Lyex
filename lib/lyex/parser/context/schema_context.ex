defmodule Lyex.Parser.Context.SchemaContext do
  use Lyex.Parser.Context, debug: [enabled: false]
  alias Lyex.Parser.Schema

  alias Lyex.Parser.Context.{
    ImportContext,
    SchemaElementContext,
    ComplexTypeContext,
    SimpleTypeContext
  }

  def read_prefix(prefixMapping(prefix: prefix, namespace: ns), acc) do
    namespaces = Map.put_new(acc.namespaces, to_string(prefix), to_string(ns))
    %{acc | namespaces: namespaces}
  end

  def enter(startElement(name: 'schema', attributes: attrs), acc) do
    %{stack: stack} = acc
    target_namespace = read_attr(attrs, 'targetNamespace')
    schema = %Schema{target_namespace: target_namespace}
    %{acc | stack: [schema | stack]} |> enter_context()
  end

  def enter(startElement(name: 'import') = element, acc) do
    ImportContext.enter(element, acc)
  end

  def enter(startElement(name: 'element') = element, acc) do
    SchemaElementContext.enter(element, acc)
  end

  def enter(startElement(name: 'simpleType') = element, acc) do
    SimpleTypeContext.enter(element, acc)
  end

  def enter(startElement(name: 'complexType') = element, acc) do
    ComplexTypeContext.enter(element, acc)
  end

  def exit(endElement(name: 'schema'), acc) do
    %{stack: [schema | rest], schemas: schemas} = acc
    schemas = Map.put_new(schemas, schema.target_namespace, schema)
    %{acc | schemas: schemas, stack: rest} |> exit_context()
  end
end
