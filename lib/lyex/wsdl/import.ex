defmodule Lyex.Wsdl.Import do
  alias Lyex.SourceFile
  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'import', attributes: attrs), state) do
    schema_import = read_attr(attrs, 'schemaLocation')
    wsdl_import = read_attr(attrs, 'location')

    case {schema_import, wsdl_import} do
      {nil, location} -> read_import(location, state)
      {location, nil} -> read_import(location, state)
      _ -> state
    end
  end

  defp read_import(location, state) do
    require Logger
    spec = %{state.spec | wsdl: location}

    imported =
      spec
      |> SourceFile.resolve_file()
      |> Wsdl.parse()

    # |> debug("parsed")

    %{state | imports: [imported | state.imports]}
  end

  defp debug(term, label) do
    case String.Chars.impl_for(term) do
      nil -> Logger.debug("#{label}: #{inspect(term, pretty: true)}")
      _ -> Logger.debug("#{label}: #{to_string(term)}")
    end

    term
  end
end
