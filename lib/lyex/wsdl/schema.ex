defmodule Lyex.Wsdl.Schema do
  defstruct complex_types: %{},
            target_namespace: nil,
            simple_types: %{},
            elements: %{}

  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  defimpl String.Chars do
    def to_string(schema) do
      %{target_namespace: ns, complex_types: cts, simple_types: sts, elements: els} = schema
      count = fn map -> length(Map.keys(map)) end

      ~s(#{ns}
        \t\t#{count.(cts)} complex types,
        \t\t#{count.(sts)} simple types,
        \t\t#{count.(els)} elements)
    end
  end

  def merge(%Wsdl.Schema{} = a, %Wsdl.Schema{} = b) do
    %{
      a
      | complex_types: Map.merge(a.complex_types, b.complex_types),
        elements: Map.merge(a.elements, b.elements),
        simple_types: Map.merge(a.simple_types, b.simple_types)
    }
  end

  def enter(startElement(name: 'schema', attributes: attrs), state) do
    target_namespace = read_attr(attrs, 'targetNamespace')

    schema = %Wsdl.Schema{target_namespace: target_namespace}

    %{state | stack: [schema | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'import') = xml, state) do
    Lyex.Wsdl.Import.enter(xml, state)
  end

  def enter(startElement(name: 'element') = xml, state) do
    Wsdl.Schema.Element.enter(xml, state)
  end

  def enter(startElement(name: 'simpleType') = xml, state) do
    Wsdl.Schema.SimpleType.enter(xml, state)
  end

  def enter(startElement(name: 'complexType') = xml, state) do
    Wsdl.Schema.ComplexType.enter(xml, state)
  end

  def exit(endElement(name: 'schema'), state) do
    %{stack: [schema, wsdl | rest]} = state

    state =
      case schema.target_namespace do
        nil ->
          %{state | stack: [wsdl | rest]}

        ns ->
          wsdl = %{wsdl | schemas: Map.put(wsdl.schemas, ns, schema)}
          %{state | stack: [wsdl | rest]}
      end

    exit_context(state)
  end
end
