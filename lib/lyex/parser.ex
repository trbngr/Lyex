defmodule Lyex.Parser do
  import Lyex.Records.Xml

  @init %{
    context: [Lyex.Parser.Context.DocumentContext],
    stack: [],
    namespaces: %{},
    name: nil,
    target_namespace: nil,
    messages: %{},
    port_types: %{},
    bindings: %{},
    services: %{},
    schemas: %{},
    definitions: [],
    spec: nil
  }

  def parse({wsdl_file, spec}) do
    state = %{@init | spec: spec}

    {:ok, parsed, _} =
      wsdl_file
      |> File.read!()
      |> :erlsom.parse_sax(state, &read/2)

    definition =
      Map.take(parsed, [
        :namespaces,
        :name,
        :target_namespace,
        :messages,
        :port_types,
        :bindings,
        :services,
        :schemas
      ])

    [definition | parsed.definitions]
  end

  defp read(xml, acc) do
    %{context: [context | _]} = acc
    context.consume(xml, acc)
  end

  def read_attr(attrs, key, default \\ "") do
    case List.keyfind(attrs, key, attribute(:name)) do
      nil -> default
      {_, _, _, _, value} -> to_string(value)
    end
  end
end
