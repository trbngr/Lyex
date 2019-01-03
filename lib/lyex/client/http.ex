defmodule Lyex.Client.Http do
  alias Lyex.Client.Output

  def send(operation, args, output_type) do
    headers = [
      {"Content-Type", "text/xml; encoding=UTF-8"},
      {"SOAPAction", operation.action},
      {"User-Agent", "Lyex/0.1.0"}
    ]

    envelope =
      EEx.eval_string(operation.envelope,
        assigns: [
          action: operation.action,
          name: operation.name,
          namespace: operation.namespace,
          input: operation.input,
          args: args
        ]
      )

    case HTTPoison.post(operation.address, envelope, headers) do
      {:ok, %{body: body, status_code: 200}} -> Output.parse(body, output_type)
      _ -> raise "soap error"
    end
  end
end
