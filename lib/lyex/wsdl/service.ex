defmodule Lyex.Wsdl.Service do
  defstruct name: nil, ports: %{}

  defmodule Port do
    defstruct name: nil, binding: nil, address: nil
  end

  defimpl String.Chars do
    def to_string(%{name: name, ports: ports}) do
      ps = Enum.map(ports, fn {k, _} -> k end) |> Enum.join(", ")
      ~s(#{name} ports: #{ps})
    end
  end

  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'service', attributes: attrs), state) do
    %{stack: stack} = state
    name = read_attr(attrs, 'name')

    %{state | stack: [%Wsdl.Service{name: name} | stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'port', attributes: attrs), state) do
    name = read_attr(attrs, 'name')
    binding = read_attr(attrs, 'binding')
    port = %Port{name: name, binding: binding}
    %{state | stack: [port | state.stack]}
  end

  def enter(startElement(name: 'address', attributes: attrs), state) do
    %{stack: [port | rest]} = state
    address = read_attr(attrs, 'location')
    port = %{port | address: address}
    %{state | stack: [port | rest]}
  end

  def exit(endElement(name: 'port'), state) do
    %{stack: [port, service | rest]} = state
    ports = Map.put_new(service.ports, port.name, port)
    service = %{service | ports: ports}
    %{state | stack: [service | rest]}
  end

  def exit(endElement(name: 'service'), state) do
    %{stack: [service, wsdl | rest]} = state
    wsdl = %{wsdl | service: Map.put(%{}, service.name, service)}

    %{state | stack: [wsdl | rest]}
    |> exit_context()
  end
end
