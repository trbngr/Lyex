defmodule Lyex.Wsdl.Assembler do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Assembler.Resolver

  def assemble(%Wsdl{} = wsdl) do
    # File.write!("service.ex", inspect(wsdl, pretty: true, limit: :infinity))
    %{schemas: schemas, service: service} = wsdl
    %{ports: ports} = service

    schema = Enum.reduce(schemas, %Wsdl.Schema{}, &Wsdl.Schema.merge/2)

    if length(ports) > 1 do
      raise Lyex.Error,
            "WSDL services with more than one port defined are unsupported at the moment."
    end

    port = hd(ports)

    port_type =
      port
      |> Resolver.resolve_binding(wsdl)
      |> Resolver.resolve_port_type(wsdl, schema)

    %{service_name: service.name, port: port, port_type: port_type}
  end
end
