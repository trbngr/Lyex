defmodule Lyex.Wsdl.Message do
  defstruct name: nil, part: nil

  defmodule Part do
    defstruct name: nil, element: nil
  end

  defimpl String.Chars do
    def to_string(%{name: name, part: %{element: element}}) do
      ~s(#{name} -> #{element})
    end
  end

  alias Lyex.Wsdl
  use Lyex.Wsdl.Parser.Context, debug: false

  def enter(startElement(name: 'message', attributes: attributes), state) do
    message = %Wsdl.Message{name: read_attr(attributes, 'name')}

    %{state | stack: [message | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'part', attributes: attributes), state) do
    %{stack: [message | rest]} = state
    name = read_attr(attributes, 'name')
    element = read_attr(attributes, 'element')
    message = %{message | part: %Part{name: name, element: element}}
    %{state | stack: [message | rest]}
  end

  def exit(endElement(name: 'message'), state) do
    %{stack: [message, %Wsdl{} = wsdl | rest]} = state
    wsdl = %{wsdl | messages: Map.put_new(wsdl.messages, message.name, message)}

    %{state | stack: [wsdl | rest]}
    |> exit_context()
  end
end
