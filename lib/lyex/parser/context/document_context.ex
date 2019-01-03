defmodule Lyex.Parser.Context.DocumentContext do
  use Lyex.Parser.Context, debug: [enabled: false]

  alias Lyex.Parser.Context.{
    DefinitionsContext,
    SchemaContext,
    MessageContext,
    PortTypeContext,
    BindingContext,
    ServiceContext,
    PolicyContext,
    ImportContext
  }

  def read_prefix(prefixMapping(prefix: prefix, namespace: ns), acc) do
    namespaces = Map.put_new(acc.namespaces, to_string(prefix), to_string(ns))
    %{acc | namespaces: namespaces}
  end

  def enter(startElement(name: 'definitions') = element, acc) do
    DefinitionsContext.enter(element, acc)
  end

  def enter(startElement(name: 'import', prefix: 'wsdl') = element, acc) do
    ImportContext.enter(element, acc)
  end

  def enter(startElement(name: 'import', prefix: 'xsd') = element, acc) do
    ImportContext.enter(element, acc)
  end

  def enter(startElement(name: 'Policy') = element, acc) do
    PolicyContext.enter(element, acc)
  end

  def enter(startElement(name: 'schema') = element, acc) do
    SchemaContext.enter(element, acc)
  end

  def enter(startElement(name: 'message') = element, acc) do
    MessageContext.enter(element, acc)
  end

  def enter(startElement(name: 'portType') = element, acc) do
    PortTypeContext.enter(element, acc)
  end

  def enter(startElement(prefix: 'wsdl', name: 'binding') = element, acc) do
    BindingContext.enter(element, acc)
  end

  def enter(startElement(name: 'service') = element, acc) do
    ServiceContext.enter(element, acc)
  end
end
