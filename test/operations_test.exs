defmodule OperationsTest do
  use ExUnit.Case

  # @service %Lyex{
  #   service_name: "vin_search",
  #   wsdl: "http://vinsearch.eurotaxglass.com/vin-intl/?wsdl",
  #   cache_dir: "./priv"
  # }

  @service %Lyex{
    service_name: "WeatherService",
    wsdl: "https://graphical.weather.gov/xml/SOAP_server/ndfdXMLserver.php?wsdl"
  }

  # @service %Lyex{
  #   service_name: "keefe",
  #   wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl",
  #   cache_dir: "./priv"
  # }

  # @service %Lyex{
  #   service_name: "keefe_single",
  #   wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?singleWsdl",
  #   cache_dir: "./priv"
  # }

  # @service %Lyex{
  #   cache_dir: "./priv",
  #   service_name: "keefe",
  #   wsdl: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?xsd=xsd0"
  # }

  test "get ports" do
    wsdl =
      @service
      |> Lyex.init()

    # |> Map.get(:schemas)

    File.write!(
      "params.ex",
      inspect(wsdl, pretty: true, limit: :infinity, printable_limit: :infinity)
    )
  end
end
