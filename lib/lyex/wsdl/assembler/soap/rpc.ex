defmodule Lyex.Wsdl.Assembler.Soap.Rpc do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Schema

  def generate_request_template(
        %Wsdl.PortType.Operation{name: name, input_namespace: ns} = op,
        input,
        %Wsdl{}
      ) do
    %{xml: body} =
      generate_parameters(input, %{
        xml: "",
        path: []
      })

    ~s(<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>
      <Body>
        <#{name} xmlns='#{ns}'>
          #{body}
        </#{name}>
      </Body>
    </Envelope>)
    |> String.replace("\n", "")
  end

  defp generate_parameters([], acc), do: acc

  defp generate_parameters(%Schema.Element{name: name, type: type}, %{xml: xml, path: path})
       when is_binary(type) do
    name = name || type
    get_in_path = create_get_in_path(path, Macro.underscore(name))

    %{
      xml: xml <> "<#{name}><%= get_in(@input, #{get_in_path}) %></#{name}>",
      path: path
    }
  end

  defp generate_parameters(%Schema.SimpleType{name: name}, %{xml: xml, path: path}) do
    get_in_path = create_get_in_path(path, Macro.underscore(name))

    %{
      xml: xml <> "<#{name}><%= get_in(@input, #{get_in_path}) %></#{name}>",
      path: path
    }
  end

  defp generate_parameters(%Schema.Element{name: name, type: type}, %{xml: xml, path: path}) do
    name = name || type

    %{xml: parameters_xml} =
      generate_parameters(type, %{xml: "", path: [Macro.underscore(name) | path]})

    %{xml: xml <> ~s(<#{name}>#{parameters_xml}</#{name}>), path: path}
  end

  defp generate_parameters([%Schema.Element{} = element | rest], %{xml: xml, path: path}) do
    %{xml: parameter_xml} = generate_parameters(element, %{xml: "", path: path})
    generate_parameters(rest, %{xml: xml <> parameter_xml, path: path})
  end

  defp create_get_in_path(path, member) do
    case path do
      [] ->
        "[:" <> member <> "]"

      path ->
        parent =
          path
          |> Enum.map(fn p -> ":" <> p end)
          |> Enum.join(", ")

        "[" <> parent <> ", :" <> member <> "]"
    end
  end
end
