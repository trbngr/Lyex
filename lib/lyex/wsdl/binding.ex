defmodule Lyex.Wsdl.Binding do
  defstruct name: nil, type: nil, style: nil, transport: nil, operations: []

  defmodule Operation do
    defstruct name: nil, action: nil, input: %{header: nil}, output: %{header: nil}
  end

  defimpl String.Chars do
    def to_string(%{name: name, operations: operations}) do
      ops =
        Enum.map(operations, fn {k, _v} -> k end)
        |> Enum.join("\n\t\t\t")

      ~s(#{name} [#{length(operations)} operations]
        \t\t#{ops}
      )
    end
  end

  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(prefix: 'soap', name: 'binding', attributes: attrs), state) do
    %{stack: [binding | rest]} = state
    style = read_attr(attrs, 'style')
    transport = read_attr(attrs, 'transport')
    binding = %{binding | transport: transport, style: style}
    %{state | stack: [binding | rest]}
  end

  def enter(startElement(name: 'binding', attributes: attrs), state) do
    name = read_attr(attrs, 'name')
    type = read_attr(attrs, 'type')
    binding = %Wsdl.Binding{name: name, type: type}

    %{state | stack: [binding | state.stack]}
    |> enter_context()
  end

  def enter(startElement(prefix: 'soap', name: 'operation', attributes: attrs), state) do
    %{stack: [operation | rest]} = state
    action = read_attr(attrs, 'soapAction')
    operation = %{operation | action: action}
    %{state | stack: [operation | rest]}
  end

  def enter(startElement(name: 'operation', attributes: attrs), state) do
    name = read_attr(attrs, 'name')
    operation = %Operation{name: name}
    %{state | stack: [operation | state.stack]}
  end

  def enter(startElement(name: 'input'), state) do
    %{state | stack: [%{} | state.stack]}
  end

  def enter(startElement(name: 'output'), state) do
    %{state | stack: [%{} | state.stack]}
  end

  def enter(startElement(prefix: 'soap', name: 'header', attributes: attrs), state) do
    %{stack: [target | rest]} = state
    part = read_attr(attrs, 'part')
    message = read_attr(attrs, 'message')

    target = Map.put(target, :header, %{part: part, message: message})

    %{state | stack: [target | rest]}
  end

  def exit(endElement(name: 'input'), state) do
    %{stack: [input, operation | rest]} = state
    operation = %{operation | input: input}
    %{state | stack: [operation | rest]}
  end

  def exit(endElement(name: 'output'), state) do
    %{stack: [output, operation | rest]} = state
    operation = %{operation | output: output}
    %{state | stack: [operation | rest]}
  end

  def exit(endElement(prefix: 'soap', name: 'operation'), state), do: state

  def exit(endElement(name: 'operation'), state) do
    %{stack: [operation, binding | rest]} = state

    if length(Map.keys(operation)) > 0 do
      binding = %{binding | operations: [operation | binding.operations]}
      %{state | stack: [binding | rest]}
    else
      state
    end
  end

  def exit(endElement(prefix: 'soap', name: 'binding'), state), do: state

  def exit(endElement(name: 'binding'), state) do
    %{stack: [binding, wsdl | rest]} = state
    wsdl = %{wsdl | bindings: [binding | wsdl.bindings]}

    %{state | stack: [wsdl | rest]}
    |> exit_context()
  end
end
