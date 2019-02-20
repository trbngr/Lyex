defmodule Lyex.Wsdl.Assembler.Soap do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Assembler.Soap

  def generate_request_template(
        %Wsdl.PortType.Operation{} = operation,
        %Wsdl.Binding{style: "document"},
        %Wsdl{} = wsdl,
        input
      ) do
    Soap.Document.generate_request_template(operation, input, wsdl)
  end

  def generate_request_template(
        %Wsdl.PortType.Operation{} = operation,
        %Wsdl.Binding{style: "rpc"},
        %Wsdl{} = wsdl,
        input
      ) do
    Soap.Rpc.generate_request_template(operation, input, wsdl)
  end

  def generate_request_template(_, %Wsdl.Binding{style: style}, _, _) do
    raise Lyex.Error, "#{style} binding is unsupported at the moment."
  end

  def get_request_headers(%{transport: "http://schemas.xmlsoap.org/soap/http"}, action) do
    [
      {"Content-Type", "text/xml; charset=utf-8"},
      {"SOAPAction", action},
      {"User-Agent", "Lyex/0.1.0"},
      {"SOAP_Version", "1.1"}
    ]
  end

  def get_request_headers(%{transport: transport}, _action),
    do: raise(Lyex.Error, "Transport #{transport} is unsupported at the moment.")
end
