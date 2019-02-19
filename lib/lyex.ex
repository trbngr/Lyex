defmodule Lyex do
  defmodule Error do
    defexception [:message]
  end

  @default_cache_dir Application.app_dir(:lyex, "priv")

  defstruct service_name: nil, wsdl: nil, cache_dir: @default_cache_dir

  alias Lyex.SourceFile
  alias Lyex.Wsdl.{Compiler, Parser}

  def init(%Lyex{wsdl: nil}), do: raise(%Lyex.Error{message: "wsdl must be set."})
  def init(%Lyex{cache_dir: nil}), do: raise(%Lyex.Error{message: "cache_dir must be set."})
  def init(%Lyex{service_name: nil}), do: raise(%Lyex.Error{message: "service_name must be set."})

  def init(%Lyex{} = spec) do
    spec
    |> SourceFile.resolve_file()
    |> Parser.parse()
    |> Compiler.compile()
  end

  def init(_), do: usage()
  def init(), do: usage()

  defp usage() do
    IO.puts("""
    %Lyex{wsdl: "path or url"} |> Lyex.init()
    """)
  end

  defimpl String.Chars do
    def to_string(lyex) do
      inspect(lyex, pretty: true)
    end
  end
end
