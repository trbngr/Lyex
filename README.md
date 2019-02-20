# Lyex

I've tried all the SOAP libraries for Elixir without success.

So Lyex was born.

I had to learn a ~~bit~~ lot about WSDL. I'm pretty sure this won't work on a bunch of WSDLs in the wild.

Much more to do.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `lyex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:lyex, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/lyex](https://hexdocs.pm/lyex).

## Usage

use the Lyex.Client with configuration to generate a full SOAP client with functions and structs.

```elixir
defmodule KeefeClient do
  use Lyex.Client,
    service_name: "Keefe",
    wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl",
    cache_dir: "./priv"
end


defmodule OtherModule do
  def run do

    response =
      KeefeClient.lookup_recipient(%Keefe.LookupRecipientInput{
        Auth: %{
          VendorCode: "redacted",
          UserId: "redacted",
          Password: "redacted"
        },
        RecipientNumber: "123456",
        FacilityCode: "ALDOC"
      })

    %Keefe.LookupRecipientOutput{
      DOBDay: "0",
      DOBMonth: "0",
      DOBYear: "0",
      FacilityName: nil,
      FirstName: nil,
      LastName: nil,
      MaxDepositAmount: "0",
      Result: %{Code: "INVALID_DEPOSITOR", Text: "Could not find resident"}
    } = response
  end
end
```

## Features

- [x] WSDL Parsing.
- [x] Function generation for each operation.
- [x] Input/output struct generation.
- [x] parse responses into output structs.
- [ ] generate documentation for functions/structs.
- [ ] Input validation.
- [ ] adding soap headers to requests.
- [ ] supporting multiple ports.

## Overview of code

- Resolve file and cache it

- Parse the WSDL file via SAX. When we hit an import, start at step 1 and store it into state.imports. Merge all imports into the main WSDL

- Assemble the WSDL by resolving all messages, bindings, etc.

- Generate code
