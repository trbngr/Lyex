defmodule Lyex.Wsdl.Compiler do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Compiler.Structures

  def compile(%{service_name: service_name, port: port, port_type: port_type}) do
    Enum.reduce(port_type.operations, [], fn operation, acc ->
      [generate_operation(operation, service_name, port.address) | acc]
    end)
  end

  defp generate_operation(%Wsdl.PortType.Operation{} = operation, service_name, address) do
    %{
      name: operation_name,
      input: input,
      output: output,
      output_type: output_type,
      request_template: request_template,
      request_headers: request_headers
    } = operation

    service_name = service_name |> Macro.camelize() |> String.to_atom()

    Structures.generate_structure(service_name, operation_name <> "Input", input)
    Structures.generate_structure(service_name, operation_name <> "Output", output)
    output_struct = service_name |> Module.concat(operation_name <> "Output")

    function_name =
      to_string(operation_name)
      |> Macro.underscore()
      |> String.to_atom()

    input_type = generate_input_parameter(service_name, operation_name <> "Input")

    quote location: :keep, generated: true do
      def unquote(function_name)(unquote(input_type)) do
        import Lyex.Wsdl.Output, only: [read: 3]
        input = Keyword.get(binding(), :input)

        address = unquote(address)
        headers = unquote(request_headers)

        envelope =
          EEx.eval_string(unquote(request_template),
            assigns: [input: input]
          )

        with {:ok, %{body: body}} <- HTTPoison.post(address, envelope, headers) do
          read(
            body,
            unquote(output_type),
            unquote(output_struct)
          )
        end
      end
    end
  end

  defp generate_input_parameter(service_name, input_name) do
    # I'm not this smart. This was generated in iex
    {:=, [],
     [
       {:%, [],
        [
          {:__aliases__, [alias: false], [service_name, String.to_atom(input_name)]},
          {:%{}, [], []}
        ]},
       Macro.var(:input, nil)
     ]}
  end
end
