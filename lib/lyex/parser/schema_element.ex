defmodule Lyex.Parser.SchemaElement do
  defstruct name: nil, type: nil, min_occurs: 0, nillable: true, namespaces: %{}
end
