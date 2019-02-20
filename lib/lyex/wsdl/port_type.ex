defmodule Lyex.Wsdl.PortType do
  defstruct name: nil, operations: []

  defmodule Operation do
    defstruct name: nil,
              documentation: nil,
              input: nil,
              input_type: nil,
              input_namespace: nil,
              output: nil,
              output_type: nil,
              output_namespace: nil,
              action: nil,
              request_template: nil,
              request_headers: []
  end

  defimpl String.Chars do
    def to_string(%{name: name, operations: operations}) do
      ops =
        Enum.map(operations, fn op -> op.name end)
        |> Enum.join("\n\t\t\t")

      ~s(#{name} [#{length(operations)} operations]
      \t\t\t#{ops}
      )
    end
  end

  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'portType', attributes: attrs), state) do
    name = read_attr(attrs, 'name')

    %{state | stack: [%Wsdl.PortType{name: name} | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'operation', attributes: attrs), state) do
    %{stack: stack} = state
    name = read_attr(attrs, 'name')
    %{state | stack: [%Operation{name: name} | stack]}
  end

  def enter(startElement(name: 'documentation'), state) do
    %{state | stack: [:reading_documentation | state.stack]}
  end

  def enter(startElement(name: 'input', attributes: attrs), state) do
    %{stack: [operation | rest]} = state
    message = read_attr(attrs, 'message')
    operation = %{operation | input: message}
    %{state | stack: [operation | rest]}
  end

  def enter(startElement(name: 'output', attributes: attrs), state) do
    %{stack: [operation | rest]} = state
    message = read_attr(attrs, 'message')
    operation = %{operation | output: message}
    %{state | stack: [operation | rest]}
  end

  def value(elementValue(value: value), state) do
    %{stack: [action, target | rest]} = state

    case action do
      :reading_documentation ->
        target = %{target | documentation: value}
        %{state | stack: [target | rest]}

      _ ->
        state
    end
  end

  def exit(endElement(name: 'operation'), state) do
    %{stack: [operation, port_type | rest]} = state

    port_type = %{port_type | operations: [operation | port_type.operations]}

    %{state | stack: [port_type | rest]}
  end

  def exit(endElement(name: 'portType'), state) do
    %{stack: [port_type, wsdl | rest]} = state

    wsdl = %{wsdl | port_types: [port_type | wsdl.port_types]}

    %{state | stack: [wsdl | rest]}
    |> exit_context()
  end
end
