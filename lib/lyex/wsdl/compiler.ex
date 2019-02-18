defmodule Lyex.Wsdl.Compiler do
  alias Lyex.Wsdl

  def compile(%Wsdl{port_types: port_types, schemas: schemas} = wsdl) do
    schema = Enum.reduce(schemas, %Wsdl.Schema{}, &Wsdl.Schema.merge/2)

    port_types |> IO.inspect()

    Enum.reduce(port_types, [], fn port_type, acc ->
      Enum.reduce(port_type.operations, acc, fn operation, acc ->
        %{name: name, input: input, output: output} =
          generate_messages(operation, wsdl, schema)
          |> IO.inspect()

        acc
      end)
    end)
  end

  defp generate_messages(
         %Wsdl.PortType.Operation{} = operation,
         %Wsdl{} = wsdl,
         %Wsdl.Schema{} = schema
       ) do
    %{name: name, input: input, output: output} = operation
    input = find_message(input, wsdl, schema)
    output = find_message(output, wsdl, schema)
    %{name: name, input: input, output: output}
  end

  defp find_message(type, %{messages: messages}, schema) do
    [_, type] = split_qname(type)

    Enum.find(messages, fn message -> message.name == type end)
    |> find_element(schema)
  end

  defp find_element({_, %Wsdl.Message{part: %{element: element}}} = m, schema) do
    m |> IO.inspect()
    [_, element] = split_qname(element)
    Enum.find(schema.elements, fn {name, _} -> element == name end)
  end

  defp split_qname(qname), do: qname |> String.split(":")
end
