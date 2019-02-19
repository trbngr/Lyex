defmodule Lyex.Wsdl.Compiler do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Compiler.{Resolver, Soap, Structures}

  defmodule Error do
    defexception [:message]
  end

  def compile(%Wsdl{port_types: port_types, schemas: schemas} = wsdl) do
    schema = Enum.reduce(schemas, %Wsdl.Schema{}, &Wsdl.Schema.merge/2)

    Enum.reduce(port_types, [], fn port_type, acc ->
      Enum.reduce(port_type.operations, acc, fn operation, acc ->
        [generate_operation(operation, wsdl, schema) | acc]
      end)
    end)
  end

  defp generate_operation(
         %Wsdl.PortType.Operation{} = operation,
         %Wsdl{service: service} = wsdl,
         %Wsdl.Schema{} = schema
       ) do
    operation_name = operation.name
    input = operation.input |> Resolver.resolve_message(wsdl, schema)
    output = operation.output |> Resolver.resolve_message(wsdl, schema)

    service_name = service.name |> Macro.camelize() |> String.to_atom()

    Structures.generate_structure(service_name, operation_name <> "Input", input)
    Structures.generate_structure(service_name, operation_name <> "Output", output)

    function_name =
      to_string(operation_name)
      |> Macro.underscore()
      |> String.to_atom()

    input_type = generate_input_parameter(service_name, operation_name <> "Input")

    operation_binding = operation |> Resolver.resolve_operation_binding(wsdl, schema)
    request_template = Soap.generate_request_template(wsdl, input, operation_binding)

    quote location: :keep, generated: true do
      def unquote(function_name)(unquote(input_type)) do
        input = Keyword.get(binding(), :input)

        envelope =
          EEx.eval_string(unquote(request_template),
            assigns: [input: input]
          )

        binding = unquote(Macro.escape(operation_binding))

        headers = [
          {"Content-Type", "text/xml; encoding=UTF-8"},
          {"SOAPAction", binding.action},
          {"User-Agent", "Lyex/0.1.0"}
        ]

        with {:ok, %{body: body}} <- HTTPoison.post(binding.action, envelope) do
          :erlsom.simple_form(body)
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
