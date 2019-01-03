defmodule Lyex.Parser.Context.MessageContext do
  use Lyex.Parser.Context, debug: [enabled: false]
  alias Lyex.Parser.Message

  def enter(startElement(name: 'message', attributes: attributes), acc) do
    name = read_attr(attributes, 'name')
    message = %Message{name: name}

    %{acc | stack: [message | acc.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'part', attributes: attributes), acc) do
    %{stack: [message | rest]} = acc
    name = read_attr(attributes, 'name')
    element = read_attr(attributes, 'element')
    part = %{name: name, element: element}
    message = %{message | parts: [part | message.parts]}
    %{acc | stack: [message | rest]}
  end

  def exit(endElement(name: 'message'), acc) do
    %{stack: [message | rest]} = acc
    messages = Map.put_new(acc.messages, message.name, message)
    %{acc | messages: messages, stack: rest} |> exit_context()
  end
end
