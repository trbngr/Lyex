defmodule Lyex.SourceFile do
  def resolve_file(%Lyex{wsdl: wsdl} = spec) do
    case URI.parse(wsdl) do
      %{authority: nil} -> {wsdl, spec}
      uri -> {fetch_remote(spec, uri), spec}
    end
  end

  defp fetch_remote(%{wsdl: url} = spec, uri) do
    case read_cached_file(spec, uri) do
      {:hit, cache_file} ->
        cache_file

      {:miss, cache_file} ->
        with {:ok, %{body: body}} <- HTTPoison.get(url) do
          cache_remote_file(%{body: body, cache_file: cache_file})
        end
    end
  end

  defp read_cached_file(%{service_name: service_name, cache_dir: cache_dir}, %{path: file} = uri) do
    dir =
      file
      |> Path.rootname()
      |> String.split("/")
      |> Enum.map(&Macro.underscore/1)
      |> Enum.join("/")

    path =
      cache_dir
      |> Path.join(service_name)
      |> Path.join(dir)
      |> Path.join(get_file_name(uri))

    case File.exists?(path) do
      true -> {:hit, path}
      false -> {:miss, path}
    end
  end

  defp get_file_name(%{path: file, query: query}) do
    file_name = file |> Path.basename()

    case query do
      nil -> file_name
      "" -> file_name
      query -> file_name <> "?" <> query
    end
  end

  defp cache_remote_file(%{body: body, cache_file: cache_file}) do
    Path.rootname(cache_file)
    |> Path.join("..")
    |> Path.expand()
    |> File.mkdir_p()

    File.write(cache_file, body)
    cache_file
  end
end
