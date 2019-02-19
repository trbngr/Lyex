defmodule LyexTest do
  use ExUnit.Case

  use Lyex.Client,
    service_name: "vin_search",
    wsdl: "http://vinsearch.eurotaxglass.com/vin-intl/?wsdl",
    cache_dir: "./test/wsdls"

  test "create client" do
    %VinSearch.GetCacheInput{} |> IO.inspect()
  end
end
