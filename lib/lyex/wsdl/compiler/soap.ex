defmodule Lyex.Wsdl.Compiler.Soap do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Schema

  def generate_request_template(%Wsdl{target_namespace: ns}, input, operation_binding) do
    name = input.name || input.type

    %{xml: body} =
      generate_parameters(input.type, %{
        xml: "",
        path: [Macro.underscore(name)]
      })

    # %{xml: headers} = generate_parameters(arg1, arg2)

    ~s(<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>
        <soap:Body>
          <lyex:#{name} xmlns:lyex='#{ns}'>
            #{body}
          </lyex:#{name}>
        </soap:Body>
      </soap:Envelope>)
  end

  defp generate_parameters([], acc), do: acc

  defp generate_parameters(name, %{xml: xml, path: path}) when is_binary(name) do
    get_in_path = create_get_in_path(path, Macro.underscore(name))

    %{
      xml: xml <> "<lyex:#{name}><%= get_in(@input, #{get_in_path}) %></lyex:#{name}>",
      path: path
    }
  end

  defp generate_parameters(%Schema.Element{name: name, type: type}, %{xml: xml, path: path})
       when is_binary(type) do
    get_in_path = create_get_in_path(path, Macro.underscore(name))

    %{
      xml: xml <> "<lyex:#{name}><%= get_in(@input, #{get_in_path}) %></lyex:#{name}>",
      path: path
    }
  end

  defp generate_parameters(%Schema.SimpleType{name: name}, %{xml: xml, path: path}) do
    get_in_path = create_get_in_path(path, Macro.underscore(name))

    %{
      xml: xml <> "<lyex:#{name}><%= get_in(@input, #{get_in_path}) %></lyex:#{name}>",
      path: path
    }
  end

  defp generate_parameters(%Schema.Element{name: name, type: type}, %{xml: xml, path: path}) do
    %{xml: parameters_xml} =
      generate_parameters(type, %{xml: "", path: [Macro.underscore(name) | path]})

    %{xml: xml <> ~s(<lyex:#{name}>#{parameters_xml}</lyex:#{name}>), path: path}
  end

  defp generate_parameters([%Schema.Element{} = element | rest], %{xml: xml, path: path}) do
    %{xml: parameter_xml} = generate_parameters(element, %{xml: "", path: path})
    generate_parameters(rest, %{xml: xml <> parameter_xml, path: path})
  end

  defp create_get_in_path(path, member) do
    parent =
      path
      |> Enum.map(fn p -> ":" <> p end)
      |> Enum.join(", ")

    "[" <> parent <> ", :" <> member <> "]"
  end
end
