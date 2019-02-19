defmodule Lyex.Wsdl.Compiler.Structures do
  alias Lyex.Wsdl.Schema

  def generate_structure(service_name, name, params) do
    fields = get_struct_fields(params, [])

    module =
      quote do
        defstruct unquote(fields)
        use Accessible
      end

    name = service_name |> Module.concat(name)
    Module.create(name, module, Macro.Env.location(__ENV__))
  end

  def get_struct_fields(nil, acc), do: acc
  def get_struct_fields([], acc), do: acc

  def get_struct_fields(%Schema.Element{name: name, type: type}, acc)
      when is_binary(type) do
    name = Macro.underscore(name || type) |> String.to_atom()
    value = get_default_value(type)
    [{name, value} | acc]
  end

  def get_struct_fields([%Schema.Element{name: name, type: type} | rest], acc)
      when is_binary(type) do
    name = Macro.underscore(name || type) |> String.to_atom()
    value = get_default_value(type)
    get_struct_fields(rest, [{name, value} | acc])
  end

  def get_struct_fields(%Schema.Element{name: name, type: type}, acc) do
    name = Macro.underscore(name || type) |> String.to_atom()
    value = get_struct_fields(type, acc)
    [{name, value} | acc]
  end

  def get_struct_fields([%Schema.Element{name: name, type: type} | rest], acc) do
    name = Macro.underscore(name || type) |> String.to_atom()
    value = get_struct_fields(type, [])
    get_struct_fields(rest, [{name, value} | acc])
  end

  def get_struct_fields(%Schema.SimpleType{name: name}, acc),
    do: [{Macro.underscore(name), nil} | acc]

  defp get_default_value("int"), do: 0
  defp get_default_value("short"), do: 0
  defp get_default_value(_), do: nil
end
