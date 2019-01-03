defmodule Lyex.Records.Xml do
  import Record

  defrecord :startElement, :startElement, [
    :namespace,
    :name,
    :prefix,
    :attributes
  ]

  defrecord :endElement, :endElement, [
    :namespace,
    :name,
    :prefix
  ]

  defrecord :attribute, :attribute, [:name, :a, :b, :value]

  defrecord :prefixMapping, :startPrefixMapping, [:prefix, :namespace]

  defrecord :elementValue, :characters, [:value]
end
