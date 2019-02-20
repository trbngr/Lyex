defmodule WeatherServiceTest do
  use ExUnit.Case

  use Lyex.Client,
    service_name: "WeatherService",
    wsdl: "https://graphical.weather.gov/xml/SOAP_server/ndfdXMLserver.php?wsdl",
    cache_dir: "./test/wsdls"

  alias WeatherService

  # test "lat_lon_list_city_names" do
  #   %LatLonListCityNamesInput{display_level: 5}
  #   |> lat_lon_list_city_names()
  # end

  test "output" do
    body = ~s(
      <?xml version="1.0" encoding="ISO-8859-1"?>
<SOAP-ENV:Envelope SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/">
    <SOAP-ENV:Body>
        <ns1:LatLonListCityNamesResponse xmlns:ns1="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl">
            <listLatLonOut xsi:type="xsd:string">&lt;?xml version=&apos;1.0&apos; ?&gt;
&lt;dwml version=&apos;1.0&apos; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:noNamespaceSchemaLocation=&quot;https://graphical.weather.gov/xml/DWMLgen/schema/DWML.xsd&quot;&gt;
&lt;latLonList&gt;39.32,-94.72 40.85,-96.75 39.07,-95.62 33.9,-98.5 37.65,-97.43 34.8372,-82.3716 38.37,-81.6 37.32,-79.97 35.1975,-80.8345 32.7,-83.65 33.37,-81.96 40.56,-122.36 33.57,-86.75 34.65,-86.77 32.65,-114.62 35.83,-90.65 33.45,-94.00 36.77,-119.72 37.15,-107.75 39.12,-108.53 29.173,-82.224 26.68,-80.09 42.48,-114.48 40.67,-89.68 38.05,-87.53 41.00,-85.2 40.40,-86.87 39.73,-86.27 41.7,-86.32 41.53,-93.65 37.77,-99.97 37.05,-100.97 38.23,-85.67 30.53,-91.15 30.12,-93.22 32.47,-93.82 44.88,-70.88 44.90,-67.01 45.657,-68.710 42.27,-71.87 45.07,-83.57 42.92,-82.53 46.53,-90.13 42.77,-84.6 43.53,-84.08 46.47,-84.37 48.57,-93.38 32.32,-90.08 38.82,-92.22 36.77,-90.47 37.23,-93.38 48.55,-109.77 46.60,-112.00 48.3,-114.27 40.6,-98.43 41.13,-100.68 39.28,-114.85 43.2,-71.5 33.3,-104.53 42.17,-76.9 43.12,-77.67 35.63,-77.30 34.78,-76.88 35.27,-75.55 35.87,-78.78 47.95,-97.18 39.046,-84.662 39.9,-84.2 45.68,-118.85 43.25,-123.35 44.92,-123.00 34.15,-79.71 33.95,-81.14 45.45,-98.43 44.38,-100.28 44.05,-103.07 44.92,-97.15 35.05,-90.00 35.44,-86.79 31.33,-94.72 35.23,-101.7 32.42,-99.68 33.65,-101.82 31.37,-100.5 31.62,-97.22 43.54,-72.95 44.47,-73.15 46.97,-122.9 47.45,-122.3 43.87,-91.25 43.13,-89.33 44.00,-88.57 45.63,-89.45 42.74,-105.39 41.78,-107.22 44.55,-110.42 43.03,-108.41 36.9,-76.2 38.13,-78.45 37.36,-121.92 18.12,-65.45 19.72,-155.06 21.33,-157.94 21.98,-159.34 20.89,-156.44 19.74,-156.04 51.88,-176.65 66.92,-151.52 55.35,-131.70 62.97,-155.62 60.18,-149.75 13.48,144.81 14.16,145.23 14.96,145.65 15.21,145.72&lt;/latLonList&gt;
&lt;cityNameList&gt;Kansas City,MO|Lincoln,NE|Topeka,KS|Wichita Falls,TX|Wichita,KS|Greenville,SC|Charleston,WV|Roanoke,VA|Charlotte,NC|Macon,GA|Augusta,GA|Redding,CA|Birmingham,AL|Huntsville,AL|Yuma,AZ|Jonesboro,AR|Texarkana,AR|Fresno,CA|Durango,CO|Grand Junction,CO|Ocala,FL|Palm Beach,FL|Twin Falls,ID|Peoria,IL|Evansville,IN|Fort Wayne,IN|Lafayette,IN|Indianapolis,IN|South Bend,IN|Des Moines,IA|Dodge City,KS|Liberal,KS|Louisville,KY|Baton Rouge,LA|Lake Charles,LA|Shreveport,LA|Rumford,ME|Eastport,ME|Millinocket,ME|Worcester,MA|Alpena,MI|Port Huron,MI|Ironwood,MI|Lansing,MI|Saginaw,MI|Sault St Marie,MI|International Falls,MN|Jackson,MS|Columbia,MO|Poplar Bluff,MO|Springfield,MO|Havre,MT|Helena,MT|Kalispell,MT|Hastings,NE|North Platte,NE|Ely,NV|Concord,MA|Roswell,NM|Elmira,NY|Rochester,NY|Greenville,NC|Newport,NC|Cape Hatteras,NC|Raleigh-Durham,NC|Grand Forks,ND|Cincinnati,OH|Dayton,OH|Pendleton,OR|Roseburg,OR|Salem,OR|Florence,SC|Columbia,SC|Aberdeen,SD|Pierre,SD|Rapid City,SD|Watertown,SD|Memphis,TN|Lewisburg,TN|Lufkin,TX|Amarillo,TX|Abilene,TX|Lubbock,TX|San Angelo,TX|Waco,TX|Rutland,VT|Burlington,VT|Olympia,WA|Seattle,WA|LaCrosse,WI|Madison,WI|Oshkosh,WI|Rhinelander,WI|Douglas,WY|Rawlins,WY|Yellowstone,WY|Riverton,WY|Norfolk,VA|Charlottesville,VA|San Jose,CA|Vieques,PR|Hilo,HI|Honolulu,HI|Lihue,HI|Kahului,HI|Kona,HI|Adak,AK|Bettles,AK|Ketchikan,AK|McGrath,AK|Seward,AK|Guam,GU|Rota,GU|Tinian,GU|Saipan,GU&lt;/cityNameList&gt;
&lt;/dwml&gt;
</listLatLonOut>
        </ns1:LatLonListCityNamesResponse>
    </SOAP-ENV:Body>
</SOAP-ENV:Envelope>
    )

    Lyex.Wsdl.Output.read(
      body,
      "LatLonListCityNamesResponse",
      WeatherService.LatLonListCityNamesOutput
    )
  end
end
