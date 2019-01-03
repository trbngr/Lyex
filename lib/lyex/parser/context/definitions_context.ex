defmodule Lyex.Parser.Context.DefinitionsContext do
  use Lyex.Parser.Context

  def enter(startElement(prefix: 'wsdl', name: 'definitions', attributes: attrs), acc) do
    name = read_attr(attrs, 'name')
    target_namespace = read_attr(attrs, 'targetNamespace')
    %{acc | name: name, target_namespace: target_namespace}
  end
end
