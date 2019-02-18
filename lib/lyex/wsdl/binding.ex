defmodule Lyex.Wsdl.Binding do
  defstruct name: nil, type: nil, style: nil, transport: nil, operations: %{}

  defmodule Operation do
    defstruct name: nil, action: nil, input: %{header: nil}, output: %{header: nil}
  end

  defimpl String.Chars do
    def to_string(%{name: name, operations: operations}) do
      ops =
        Enum.map(operations, fn {k, _v} -> k end)
        |> Enum.join("\n\t\t\t")

      ~s(#{name} [#{length(Map.keys(operations))} operations]
        \t\t#{ops}
      )
    end
  end

  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(prefix: 'wsdl', name: 'binding', attributes: attrs), state) do
    name = read_attr(attrs, 'name')
    type = read_attr(attrs, 'type')
    binding = %Wsdl.Binding{name: name, type: type}

    %{state | stack: [binding | state.stack]}
    |> enter_context()
  end

  def enter(startElement(prefix: 'soap', name: 'binding', attributes: attrs), state) do
    %{stack: [binding | rest]} = state
    style = read_attr(attrs, 'style')
    transport = read_attr(attrs, 'transport')
    binding = %{binding | transport: transport, style: style}
    %{state | stack: [binding | rest]}
  end

  def enter(startElement(prefix: 'wsdl', name: 'operation', attributes: attributes), state) do
    name = read_attr(attributes, 'name')
    operation = %Operation{name: name}
    %{state | stack: [operation | state.stack]}
  end

  def enter(startElement(prefix: 'soap', name: 'operation', attributes: attributes), state) do
    %{stack: [operation | rest]} = state
    action = read_attr(attributes, 'soapAction')
    operation = %{operation | action: action}
    %{state | stack: [operation | rest]}
  end

  def enter(startElement(prefix: 'wsdl', name: 'input'), state) do
    %{state | stack: [%{} | state.stack]}
  end

  def enter(startElement(prefix: 'wsdl', name: 'output'), state) do
    %{state | stack: [%{} | state.stack]}
  end

  def enter(startElement(prefix: 'soap', name: 'header', attributes: attrs), state) do
    %{stack: [target | rest]} = state
    part = read_attr(attrs, 'part')
    message = read_attr(attrs, 'message')

    target = Map.put(target, :header, %{part: part, message: message})

    %{state | stack: [target | rest]}
  end

  def exit(endElement(prefix: 'wsdl', name: 'input'), state) do
    %{stack: [input, operation | rest]} = state
    operation = %{operation | input: input}
    %{state | stack: [operation | rest]}
  end

  def exit(endElement(prefix: 'wsdl', name: 'output'), state) do
    %{stack: [output, operation | rest]} = state
    operation = %{operation | output: output}
    %{state | stack: [operation | rest]}
  end

  def exit(endElement(prefix: 'wsdl', name: 'operation'), state) do
    %{stack: [operation, binding | rest]} = state
    operations = Map.put_new(binding.operations, operation.name, operation)
    binding = %{binding | operations: operations}
    %{state | stack: [binding | rest]}
  end

  def exit(endElement(prefix: 'wsdl', name: 'binding'), state) do
    %{stack: [binding, wsdl | rest]} = state
    wsdl = %{wsdl | bindings: Map.put_new(wsdl.bindings, binding.name, binding)}

    %{state | stack: [wsdl | rest]}
    |> exit_context()
  end
end
