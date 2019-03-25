defmodule Lyex.Wsdl.Output do
  use Lyex.Wsdl.Parser.Context, debug: false

  def read(body, output_type_name, output_type) do
    state = %{
      context: [Lyex.Wsdl.Output],
      output_type_name: output_type_name,
      read: false,
      stack: [],
      values: []
    }

    {:ok, %{values: values}, _} = :erlsom.parse_sax(body, state, &read/2)
    struct(output_type, values)
  end

  defp read(xml, state) do
    %{context: [context | _]} = state
    context.consume(xml, state)
  end

  def enter(startElement(name: name), %{read: false, output_type_name: output_type_name} = state) do
    if to_string(name) == output_type_name do
      %{state | read: true}
    else
      state
    end
  end

  def enter(startElement(name: name), %{read: true} = state) do
    name = to_string(name) |> Macro.underscore() |> String.to_atom()
    %{state | stack: [name | state.stack]}
  end

  def value(elementValue(value: value), state) do
    %{stack: [key | rest]} = state
    value = to_string(value)
    %{state | stack: rest, values: [{key, value} | state.values]}
  end
end
