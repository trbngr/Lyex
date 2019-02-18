defmodule Lyex.Wsdl.Definition do
  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(prefix: 'wsdl', name: 'definitions', attributes: attrs), state) do
    %{stack: [%Wsdl{} = wsdl]} = state

    target_namespace = read_attr(attrs, 'targetNamespace')

    %{state | stack: [%{wsdl | target_namespace: target_namespace}]}
  end
end
