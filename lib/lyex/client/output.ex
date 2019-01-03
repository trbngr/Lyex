defmodule Lyex.Client.Output do
  import Lyex.Records.Xml

  def parse(xml, output_type) do
    keys =
      output_type
      |> struct()
      |> Map.from_struct()
      |> discover_keys()

    state = %{stack: [], keys: keys, result: []}
    {:ok, result, _} = :erlsom.parse_sax(xml, state, &parse_response/2)
    struct(output_type, result)
  end

  defp discover_keys(struct, acc \\ []) do
    Enum.reduce(struct, acc, fn
      {key, value}, acc when is_list(value) -> discover_keys(value, [to_atom(key) | acc])
      {key, _}, acc -> [to_atom(key) | acc]
    end)
  end

  defp parse_response(startElement(name: name), acc) do
    case interested(name, acc) do
      {false, _name} ->
        acc

      {true, name} ->
        %{stack: stack} = acc

        case stack do
          [parent | rest] ->
            {key, children} = parent
            parent = {key, children || []}
            %{acc | stack: [{name, nil}, parent | rest]}

          stack ->
            %{acc | stack: [{name, nil} | stack]}
        end
    end
  end

  defp parse_response(endElement(name: name), acc) do
    case interested(name, acc) do
      {false, _name} ->
        acc

      {true, _name} ->
        %{stack: stack, result: result} = acc

        case stack do
          [child, parent | rest] ->
            {key, children} = parent
            parent = {key, [child | children]}
            %{acc | stack: [parent | rest]}

          [child | rest] ->
            %{acc | stack: rest, result: [child | result]}
        end
    end
  end

  defp parse_response(elementValue(value: value), acc) do
    case value do
      nil ->
        acc

      value ->
        %{stack: [tuple | rest]} = acc
        {key, _} = tuple
        tuple = {key, to_string(value)}
        %{acc | stack: [tuple | rest]}
    end
  end

  defp parse_response(:endDocument, acc) do
    to_map(acc.result)
  end

  defp parse_response(_, acc) do
    acc
  end

  defp to_map(result) do
    Enum.into(result, %{}, fn
      {k, v} when is_list(v) -> {k, to_map(v)}
      {k, v} -> {k, v}
    end)
  end

  defp to_atom(name), do: to_string(name) |> String.to_atom()

  defp interested(name, %{keys: keys}) do
    name = to_atom(name)
    {name in keys, name}
  end
end
