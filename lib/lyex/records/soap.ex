defmodule Lyex.Records.Soap do
  import Record

  defrecord :soap_fault, :"soap:Fault",
    attrs: :undefined,
    faultcode: :undefined,
    faultstring: :undefined,
    faultactor: :undefined,
    detail: :undefined

  defrecord :soap_body, :"soap:Body", attrs: :undefined, choice: :undefined
  defrecord :soap_header, :"soap:Header", attrs: :undefined, choice: :undefined

  defrecord :soap_envelope, :"soap:Envelope",
    attrs: :undefined,
    header: :undefined,
    body: :undefined,
    choice: :undefined
end
