defmodule Lyex.Client.Generation do
  def generate_services(service_name, operations) do
    {_, ast} =
      operations
      |> generate_describe_function()
      |> generate_functions(service_name)

    ast
  end

  def generate_types(service_name, operations) do
    Enum.each(operations, fn operation ->
      %{
        input: %{name: input_name},
        input_parameters: input_parameters,
        output: %{name: output_name},
        output_parameters: output_parameters
      } = operation

      generate_type(service_name, input_name, input_parameters)
      generate_type(service_name, output_name, output_parameters)
    end)
  end

  defp generate_type(service_name, name, parameters) do
    data = generate_type_fields(parameters)

    mod =
      quote do
        @moduledoc """
            #{inspect(unquote(data), pretty: true, width: 0, syntax_colors: [atom: :blue])}
        """
        defstruct unquote(data)
        use Accessible
      end

    name = service_name |> service_name_module() |> Module.concat(name)
    Module.create(name, mod, Macro.Env.location(__ENV__))
  end

  defp generate_type_fields(parameters, acc \\ []) do
    Enum.reduce(parameters, acc, fn
      {key, %{} = value}, acc -> [{key, generate_type_fields(value, acc)} | acc]
      {key, _value}, acc -> [{key, nil} | acc]
    end)
  end

  defp service_name_module(name) do
    name |> Macro.camelize() |> String.to_atom()
  end

  defp generate_functions({operations, ast}, service_name) do
    funs =
      Enum.map(operations, fn operation ->
        %{name: operation_name} = operation

        function_name =
          to_string(operation_name)
          |> Macro.underscore()
          |> String.to_atom()

        input = generate_input_parameter(service_name, operation)

        %{input: %{name: input_name}, output: %{name: output_name}} = operation

        input_type = service_name |> service_name_module() |> Module.concat(input_name)
        output_type = service_name |> service_name_module() |> Module.concat(output_name)

        quote location: :keep, generated: true do
          @doc """
          Here goes documentation if any in the WSDL.
              #{
            inspect(struct(unquote(input_type)),
              pretty: true,
              width: 0,
              syntax_colors: [atom: :blue]
            )
          }
          """
          def unquote(function_name)(unquote(input)) do
            alias Lyex.Client.Validation

            ops = unquote(Macro.escape(operations))
            op_name = unquote(operation_name)
            args = Keyword.get(binding(), :input)

            with {:ok, operation} <- Validation.validate_operation(ops, op_name, args) do
              Lyex.Client.Http.send(operation, args, unquote(output_type))
            end
          end
        end
      end)

    {operations, ast ++ funs}
  end

  defp generate_input_parameter(service_name, %{input: %{name: input_name}}) do
    # I'm not this smart. This was generated in iex
    {:=, [],
     [
       {:%, [],
        [
          {:__aliases__, [alias: false],
           [service_name_module(service_name), String.to_atom(input_name)]},
          {:%{}, [], []}
        ]},
       Macro.var(:input, nil)
     ]}
  end

  defp generate_describe_function(operations) do
    ops =
      Enum.reduce(operations, %{}, fn %{name: name} = value, acc ->
        acc
        |> Map.put(
          String.to_atom(name),
          Map.take(value, [
            :action,
            :address,
            :binding,
            :input_parameters,
            :output_parameters,
            :port,
            :service
          ])
        )
      end)

    ast =
      quote do
        def describe() do
          unquote(Macro.escape(ops))
        end
      end

    {operations, [ast]}
  end
end
