defmodule Lyex.Wsdl.Parser do
  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def parse({%Lyex{} = spec, xml}) when is_binary(xml) do
    state = %{
      spec: spec,
      context: [Lyex.Wsdl.Parser],
      stack: [%Wsdl{files_read: [spec.wsdl]}],
      imports: []
    }

    {:ok, %{stack: [wsdl], imports: imports}, _} =
      xml
      |> File.read!()
      |> :erlsom.parse_sax(state, &read/2)

    wsdl = Enum.reduce(imports, wsdl, fn imported, acc -> acc |> Wsdl.merge(imported) end)

    %{wsdl | service: %{wsdl.service | name: spec.service_name}}
  end

  defp read(xml, state) do
    %{context: [context | _]} = state
    context.consume(xml, state)
  end

  def read_prefix(prefixMapping(prefix: prefix, namespace: ns), state) do
    %{stack: [wsdl]} = state
    namespaces = Map.put_new(wsdl.namespaces, to_string(prefix), to_string(ns))
    %{state | stack: [%{wsdl | namespaces: namespaces}]}
  end

  def enter(startElement(name: 'definitions') = xml, state) do
    Lyex.Wsdl.Definition.enter(xml, state)
  end

  def enter(startElement(prefix: 'wsdl', name: 'import') = xml, state) do
    Lyex.Wsdl.Import.enter(xml, state)
  end

  def enter(startElement(name: 'schema') = xml, state) do
    Lyex.Wsdl.Schema.enter(xml, state)
  end

  def enter(startElement(name: 'message') = xml, state) do
    Lyex.Wsdl.Message.enter(xml, state)
  end

  def enter(startElement(name: 'portType') = xml, state) do
    Lyex.Wsdl.PortType.enter(xml, state)
  end

  def enter(startElement(name: 'binding') = xml, state) do
    Lyex.Wsdl.Binding.enter(xml, state)
  end

  def enter(startElement(name: 'service') = xml, state) do
    Lyex.Wsdl.Service.enter(xml, state)
  end
end
