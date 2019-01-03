defmodule Lyex.Parser.Schema do
  defstruct complex_types: %{},
            target_namespace: nil,
            simple_types: %{},
            elements: %{}
end
