defmodule Lyex.Wsdl.Parser.Context do
  require Lyex.Records.Xml

  defmacro __using__(opts) do
    quote location: :keep do
      require Logger
      import Lyex.Records.Xml

      @default debug: false
      @opts Keyword.merge(@default, unquote(opts) || [])
      @behaviour Lyex.Wsdl.Parser.Context
      @before_compile unquote(__MODULE__)

      def enter_context(%{context: context} = state) do
        debug(:enter_context, __MODULE__, state)
        %{state | context: [__MODULE__ | context]}
      end

      def exit_context(%{context: [_context | rest]} = state) do
        debug(:exit_context, __MODULE__, state)
        %{state | context: rest}
      end

      def enter(xml, state), do: debug(:enter, xml, state)
      def exit(xml, state), do: debug(:exit, xml, state)
      def read_prefix(xml, state), do: debug(:read_prefix, xml, state)
      def value(xml, state), do: debug(:value, xml, state)
      defp noop(_, state), do: state

      defp debug(event, message, %{context: [context | other_contexts]} = state) do
        if @opts[:debug] do
          Logger.debug("#{context}: #{event}: #{inspect(message)}")

          if event == :exit_context do
            [next_context | _] = other_contexts
            Logger.debug("Transitioning back to #{next_context}")
          end
        end

        state
      end

      defoverridable read_prefix: 2, enter: 2, exit: 2, value: 2
    end
  end

  defmacro __before_compile__(_env) do
    quote generated: true, location: :keep do
      defp read_attr(attrs, key, default \\ nil) do
        result = List.keyfind(attrs, key, attribute(:name))

        case result do
          nil -> default
          {_, _, _, _, value} -> to_string(value)
        end
      end

      def consume(xml, state) do
        fun =
          case xml do
            startElement() ->
              fn xml, state ->
                debug(:enter, xml, state)
                enter(xml, state)
              end

            endElement() ->
              fn xml, state ->
                debug(:exit, xml, state)
                exit(xml, state)
              end

            elementValue() ->
              fn xml, state ->
                debug(:value, xml, state)
                value(xml, state)
              end

            prefixMapping() ->
              &read_prefix/2

            _ ->
              &noop/2
          end

        fun.(xml, state)
      rescue
        _ -> debug(:unconsumed, xml, state)
      end
    end
  end

  @type state :: map()
  @type startElement :: any()
  @type endElement :: any()
  @type prefixMapping :: any()
  @type elementValue :: any()

  @callback enter(startElement(), state()) :: state()
  @callback exit(endElement(), state()) :: state()
  @callback read_prefix(prefixMapping(), state()) :: state()
  @callback value(elementValue(), state()) :: state()
end
