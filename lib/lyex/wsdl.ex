defmodule Lyex.Wsdl do
  alias Lyex.Wsdl

  defstruct files_read: [],
            target_namespace: "",
            namespaces: %{},
            documentation: nil,
            schemas: [],
            port_types: [],
            bindings: [],
            service: %{},
            messages: []

  defimpl String.Chars do
    require Logger

    def to_string(wsdl) do
      add = fn message, label, map ->
        cond do
          length(Map.keys(map)) > 0 ->
            value = Enum.map(map, fn {_, v} -> ~s(\n\t\t\t#{Kernel.to_string(v)}) end)
            message <> "\n\t\t#{label} #{value}"

          true ->
            message
        end
      end

      "files\n\t\t\t#{Enum.join(wsdl.files, "\n\t\t\t")}"
      |> add.("service", wsdl.service)
      |> add.("messages", wsdl.messages)
      |> add.("port_types", wsdl.port_types)
      |> add.("bindings", wsdl.bindings)
      |> add.("schemas", wsdl.schemas)
    end
  end

  defdelegate parse(xml), to: Lyex.Wsdl.Parser
  defdelegate assemble(wsdl), to: Lyex.Wsdl.Assembler
  defdelegate compile(wsdl), to: Lyex.Wsdl.Compiler

  def merge(%Wsdl{} = a, %Wsdl{} = b) do
    %{
      a
      | target_namespace: choose_target_namespace(a, b),
        files_read: b.files_read ++ a.files_read,
        service: b.service |> Map.merge(a.service),
        schemas: b.schemas ++ a.schemas,
        bindings: b.bindings ++ a.bindings,
        messages: b.messages ++ a.messages,
        namespaces: b.namespaces |> Map.merge(a.namespaces),
        port_types: b.port_types ++ a.port_types
    }
  end

  @tempuri "http://tempuri.org/"
  defp choose_target_namespace(%{target_namespace: a}, %{target_namespace: b}) do
    # this feels nasty :P
    is_ok = fn
      nil -> false
      "" -> false
      @tempuri -> false
      _ -> true
    end

    case {is_ok.(a), is_ok.(b)} do
      {true, _} -> a
      {_, true} -> b
      _ -> @tempuri
    end
  end
end
