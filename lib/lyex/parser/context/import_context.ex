defmodule Lyex.Parser.Context.ImportContext do
  use Lyex.Parser.Context, debug: [enabled: false]

  def enter(startElement(name: 'import', prefix: 'wsdl', attributes: attrs), acc) do
    parse_import(read_attr(attrs, 'location'), acc)
  end

  def enter(startElement(name: 'import', prefix: 'xsd', attributes: attrs), acc) do
    parse_import(read_attr(attrs, 'schemaLocation'), acc)
  end

  defp parse_import(uri, acc) do
    case uri do
      nil ->
        acc

      uri ->
        %{spec: spec, definitions: definitions} = acc
        spec = %{spec | wsdl: uri}

        [definition | _rest] =
          spec
          |> Lyex.SourceFile.resolve_file()
          |> Lyex.Parser.parse()

        case definition do
          %{target_namespace: nil, schemas: schemas} ->
            schemas = Map.merge(acc.schemas, schemas)
            %{acc | schemas: schemas}

          %{target_namespace: _ns} ->
            %{acc | definitions: [definition | definitions]}
        end
    end
  end
end
