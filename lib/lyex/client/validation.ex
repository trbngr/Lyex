defmodule Lyex.Client.Validation do
  alias Lyex.Parser.ComplexType

  def validate_operation(operations, operation, input) do
    case find_operation(operations, operation) do
      nil ->
        {:error, :invalid_operation, operation}

      op ->
        input
        |> Map.from_struct()
        |> Enum.into([])
        |> validate_arguments(op.input)
        |> create_validation_result(op)
    end
  end

  defp find_operation(operations, operation) do
    Enum.find(operations, fn %{name: name} -> name == operation end)
  end

  defp create_validation_result(results, op) do
    failures =
      Enum.filter(results, fn
        {:ok, _, _} -> false
        {:error, _, _} -> true
      end)

    case length(failures) do
      0 -> {:ok, op}
      _ -> {:error, :validation_errors, failures}
    end
  end

  defp validate_arguments(args, %{elements: elements}) do
    Enum.map(elements, &validate_element(&1, args))
  end

  defp validate_element(%{name: name, type: %ComplexType{} = type, nillable: false}, args) do
    case Keyword.get(args, String.to_atom(name)) do
      nil ->
        {:error, name, :required}

      args ->
        results = validate_arguments(args, type)

        case Enum.all?(results, fn {status, _, _} -> status == :ok end) do
          true -> {:ok, name, results}
          false -> {:error, name, results}
        end
    end
  end

  defp validate_element(%{name: name, nillable: false}, args) do
    case Keyword.get(args, String.to_atom(name)) do
      nil -> {:error, name, :required}
      value -> {:ok, name, value}
    end
  end

  defp validate_element(%{name: name}, _args) do
    {:ok, name, :nillable}
  end
end
