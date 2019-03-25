defmodule Lyex.Wsdl.Assembler do
  alias Lyex.Wsdl
  alias Lyex.Wsdl.Assembler.Resolver
  require Logger

  def assemble(%Wsdl{} = wsdl) do
    # File.write!("service.ex", inspect(wsdl, pretty: true, limit: :infinity))
    %{schemas: schemas, service: service} = wsdl

    port = validate_ports(service)
    schema = Enum.reduce(schemas, %Wsdl.Schema{}, &Wsdl.Schema.merge/2)

    port_type =
      port
      |> Resolver.resolve_binding(wsdl)
      |> Resolver.resolve_port_type(wsdl, schema)

    # File.write!("assembled.ex", inspect(port_type, pretty: true, limit: :infinity))

    %{service_name: service.name, port: port, port_type: port_type}
  end

  defp validate_ports(%Wsdl.Service{ports: ports}) when length(ports) == 0 do
    raise Lyex.Error, "No ports defined."
  end

  defp validate_ports(%Wsdl.Service{ports: [port]}), do: port

  defp validate_ports(%Wsdl.Service{ports: [port | _rest]}) do
    Logger.warn(
      "WSDL services with more than one port defined are unsupported at the moment. Choosing #{
        port.name
      }"
    )

    port
  end
end
