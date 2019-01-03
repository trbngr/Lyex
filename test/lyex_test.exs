defmodule LyexTest do
  use ExUnit.Case

  # use Lyex.Client,
  #   service_name: "keefe_single",
  #   wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?singleWsdl",
  #   cache_dir: "./priv"

  use Lyex.Client,
    service_name: "keefe",
    wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl",
    cache_dir: "./priv"

  test "create client" do
    alias Keefe.LookupRecipientInput

    lookup_recipient(%LookupRecipientInput{
      Auth: %{
        VendorCode: "redacted",
        UserId: "redacted",
        Password: "redacted"
      },
      RecipientNumber: "123456",
      FacilityCode: "ALDOC"
    })
    |> IO.inspect()
  end
end
