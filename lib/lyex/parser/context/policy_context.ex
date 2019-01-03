defmodule Lyex.Parser.Context.PolicyContext do
  use Lyex.Parser.Context

  def enter(startElement(name: 'Policy'), acc) do
    acc |> enter_context()
  end

  def exit(endElement(name: 'Policy'), acc) do
    acc |> exit_context()
  end
end
