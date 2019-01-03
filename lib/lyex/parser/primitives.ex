defmodule Lyex.Parser.Primitives do
  import Lyex.Records.Xml

  @primitives [
    "string",
    "boolean",
    "decimal",
    "float",
    "double",
    "anyType",
    "byte",
    "int",
    "long",
    "short",
    "negativeInteger",
    "nonNegativeInteger",
    "positiveInteger",
    "nonPositiveInteger",
    "unsignedByte",
    "unsignedInt",
    "unsignedLong",
    "unsignedShort",
    "duration",
    "dateTime",
    "time",
    "date",
    "gYearMonth",
    "gYear",
    "gMonthDay",
    "gDay",
    "gMonth",
    "hexBinary",
    "base64Binary",
    "anyURI",
    "QName",
    "NOTATION"
  ]

  def is_primitive(startElement(name: 'element', attributes: attrs)) do
    name =
      Lyex.Parser.read_attr(attrs, 'name')
      |> String.split(":")
      |> List.last()

    name in @primitives
  end

  def is_primitive(type) when is_binary(type), do: type in @primitives

  def is_primitive(_), do: false
end
