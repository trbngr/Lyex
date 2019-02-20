defmodule KeefeTest do
  use ExUnit.Case

  use Lyex.Client,
    service_name: "keefe",
    wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl",
    cache_dir: "./test/wsdls"
end
