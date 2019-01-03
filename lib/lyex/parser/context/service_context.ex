defmodule Lyex.Parser.Context.ServiceContext do
  use Lyex.Parser.Context
  alias Lyex.Parser.{Service, Port}

  def enter(startElement(name: 'service', attributes: attrs), acc) do
    %{stack: stack} = acc
    name = read_attr(attrs, 'name')

    %{acc | stack: [%Service{name: name} | stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'port', attributes: attrs), acc) do
    name = read_attr(attrs, 'name')
    binding = read_attr(attrs, 'binding')
    port = %Port{name: name, binding: binding}
    %{acc | stack: [port | acc.stack]}
  end

  def enter(startElement(name: 'address', attributes: attrs), acc) do
    %{stack: [port | rest]} = acc
    location = read_attr(attrs, 'location')
    port = %{port | choices: [location | port.choices]}
    %{acc | stack: [port | rest]}
  end

  def exit(endElement(name: 'service'), acc) do
    %{stack: [service | rest]} = acc
    services = Map.put_new(acc.services, service.name, service)
    %{acc | services: services, stack: rest} |> exit_context()
  end

  def exit(endElement(name: 'port'), acc) do
    %{stack: [port, service | rest]} = acc
    ports = Map.put_new(service.ports, port.name, port)
    service = %{service | ports: ports}
    %{acc | stack: [service | rest]}
  end
end
