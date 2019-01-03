defmodule OperationsTest do
  use ExUnit.Case

  @service %Lyex{
    service_name: "keefe_partial",
    wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl",
    cache_dir: "./priv"
  }

  test "get ports" do
    defs = Lyex.init(@service)

    Lyex.Parser.Operations.read_operations(defs)

    # |> IO.inspect()
  end
end
