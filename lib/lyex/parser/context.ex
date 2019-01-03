defmodule Lyex.Parser.Context do
  require Lyex.Records.Xml

  defmacro __using__(opts) do
    quote location: :keep do
      require Logger
      import Lyex.Records.Xml
      import Lyex.Parser, only: [read_attr: 2, read_attr: 3]

      @default_debug [
        enabled: false,
        events: [
          unconsumed_node: false,
          enter_context: true,
          exit_context: true,
          enter_node: [],
          exit_node: []
        ]
      ]
      @opts unquote(opts) || []
      @debug Keyword.merge(@default_debug, @opts[:debug] || [])
      @behaviour Lyex.Parser.Context
      @before_compile unquote(__MODULE__)

      def enter_context(%{context: context} = acc) do
        debug(:enter_context, __MODULE__, acc)
        %{acc | context: [__MODULE__ | context]}
      end

      def exit_context(%{context: [context | rest]} = acc) do
        debug(:exit_context, __MODULE__, acc)
        %{acc | context: rest}
      end

      def enter(xml, acc), do: acc
      def exit(xml, acc), do: acc
      def read_prefix(xml, acc), do: acc
      defp noop(_, acc), do: acc

      defp debug(event, message, %{context: [context | _rest], spec: %{wsdl: file}}) do
        if @debug[:enabled] do
          Logger.debug("[#{Path.basename(file)}] #{context}: #{event}: #{inspect(message)}")
        end
      end

      defoverridable read_prefix: 2, enter: 2, exit: 2
    end
  end

  defmacro __before_compile__(_env) do
    quote generated: true do
      def consume(xml, acc) do
        fun =
          case xml do
            startElement(name: name) ->
              case @debug[:events][:enter_node] do
                [] -> debug(:enter_node, xml, acc)
                names -> if name in names, do: debug(:enter_node, xml, acc)
              end

              &enter/2

            endElement(name: name) ->
              case @debug[:events][:exit_node] do
                [] -> debug(:exit_node, xml, acc)
                names -> if name in names, do: debug(:exit_node, xml, acc)
              end

              &exit/2

            prefixMapping() ->
              &read_prefix/2

            _ ->
              &noop/2
          end

        try do
          fun.(xml, acc)
        rescue
          _ ->
            if @debug[:events][:unconsumed_node], do: debug(:unconsumed_node, xml, acc)
            acc
        end
      end
    end
  end

  @type acc :: map()
  @type startElement :: any()
  @type endElement :: any()
  @type prefixMapping :: any()

  @callback enter(startElement(), acc()) :: acc()
  @callback exit(endElement(), acc()) :: acc()
  @callback read_prefix(prefixMapping(), acc()) :: acc()
end
