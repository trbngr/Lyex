defmodule Lyex.Wsdl.Schema.Restriction do
  defstruct base: nil, constraints: []

  defmodule MinExclusive do
    defstruct value: nil
  end

  defmodule MinInclusive do
    defstruct value: nil
  end

  defmodule MaxExclusive do
    defstruct value: nil
  end

  defmodule MaxInclusive do
    defstruct value: nil
  end

  defmodule TotalDigits do
    defstruct value: nil
  end

  defmodule FractionDigits do
    defstruct value: nil
  end

  defmodule Length do
    defstruct value: nil
  end

  defmodule MinLength do
    defstruct value: nil
  end

  defmodule MaxLength do
    defstruct value: nil
  end

  defmodule Enumeration do
    defstruct value: nil
  end

  defmodule WhiteSpace do
    defstruct value: nil
  end

  defmodule Pattern do
    defstruct value: nil
  end

  alias Lyex.Wsdl.Schema.Restriction
  use Lyex.Wsdl.Parser.Context, debug: false

  defp add_restriction(type, attrs, state) do
    %{stack: [restriction | rest]} = state
    value = read_attr(attrs, 'value')

    restriction = %{
      restriction
      | constraints: [struct(type, %{value: value}) | restriction.constraints]
    }

    %{state | stack: [restriction | rest]}
  end

  def enter(startElement(name: 'restriction', attributes: attrs), state) do
    base = read_attr(attrs, 'base')
    restriction = %Restriction{base: base}

    %{state | stack: [restriction | state.stack]}
    |> enter_context()
  end

  def enter(startElement(name: 'minExclusive', attributes: attrs), state),
    do: add_restriction(MinExclusive, attrs, state)

  def enter(startElement(name: 'minInclusive', attributes: attrs), state),
    do: add_restriction(MinInclusive, attrs, state)

  def enter(startElement(name: 'maxExclusive', attributes: attrs), state),
    do: add_restriction(MaxExclusive, attrs, state)

  def enter(startElement(name: 'maxInclusive', attributes: attrs), state),
    do: add_restriction(MaxInclusive, attrs, state)

  def enter(startElement(name: 'totalDigits', attributes: attrs), state),
    do: add_restriction(TotalDigits, attrs, state)

  def enter(startElement(name: 'fractionDigits', attributes: attrs), state),
    do: add_restriction(FractionDigits, attrs, state)

  def enter(startElement(name: 'length', attributes: attrs), state),
    do: add_restriction(Length, attrs, state)

  def enter(startElement(name: 'minLength', attributes: attrs), state),
    do: add_restriction(MinLength, attrs, state)

  def enter(startElement(name: 'maxLength', attributes: attrs), state),
    do: add_restriction(MaxLength, attrs, state)

  def enter(startElement(name: 'enumeration', attributes: attrs), state),
    do: add_restriction(Enumeration, attrs, state)

  def enter(startElement(name: 'whiteSpace', attributes: attrs), state),
    do: add_restriction(WhiteSpace, attrs, state)

  def enter(startElement(name: 'pattern', attributes: attrs), state),
    do: add_restriction(Pattern, attrs, state)

  def exit(endElement(name: 'restriction'), state) do
    %{stack: [restriction, type | rest]} = state
    type = %{type | restriction: restriction}

    %{state | stack: [type | rest]}
    |> exit_context()
  end
end
