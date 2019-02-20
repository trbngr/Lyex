[def(ndf_dgen(%WeatherService.NDFDgenInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <NDFDgen xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <weatherParameters><%= get_in(@input, [:weather_parameters]) %></weatherParameters>        </NDFDgen>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgen"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "NDFDgenResponse", WeatherService.NDFDgenOutput)
  end
end, def(ndf_dgen_lat_lon_list(%WeatherService.NDFDgenLatLonListInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <NDFDgenLatLonList xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <weatherParameters><%= get_in(@input, [:weather_parameters]) %></weatherParameters>        </NDFDgenLatLonList>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenLatLonList"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "NDFDgenLatLonListResponse", WeatherService.NDFDgenLatLonListOutput)
  end
end, def(lat_lon_list_subgrid(%WeatherService.LatLonListSubgridInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <LatLonListSubgrid xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <resolution><%= get_in(@input, [:resolution]) %></resolution>        </LatLonListSubgrid>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListSubgrid"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "LatLonListSubgridResponse", WeatherService.LatLonListSubgridOutput)
  end
end, def(lat_lon_list_line(%WeatherService.LatLonListLineInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <LatLonListLine xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <endPoint2Lon><%= get_in(@input, [:end_point2_lon]) %></endPoint2Lon>        </LatLonListLine>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListLine"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "LatLonListLineResponse", WeatherService.LatLonListLineOutput)
  end
end, def(lat_lon_list_zip_code(%WeatherService.LatLonListZipCodeInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <LatLonListZipCode xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <zipCodeList><%= get_in(@input, [:zip_code_list]) %></zipCodeList>        </LatLonListZipCode>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListZipCode"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "LatLonListZipCodeResponse", WeatherService.LatLonListZipCodeOutput)
  end
end, def(lat_lon_list_city_names(%WeatherService.LatLonListCityNamesInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <LatLonListCityNames xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <displayLevel><%= get_in(@input, [:display_level]) %></displayLevel>        </LatLonListCityNames>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListCityNames"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "LatLonListCityNamesResponse", WeatherService.LatLonListCityNamesOutput)
  end
end, def(lat_lon_list_square(%WeatherService.LatLonListSquareInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <LatLonListSquare xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <resolution><%= get_in(@input, [:resolution]) %></resolution>        </LatLonListSquare>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListSquare"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "LatLonListSquareResponse", WeatherService.LatLonListSquareOutput)
  end
end, def(corner_points(%WeatherService.CornerPointsInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <CornerPoints xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <sector><%= get_in(@input, [:sector]) %></sector>        </CornerPoints>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#CornerPoints"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "CornerPointsResponse", WeatherService.CornerPointsOutput)
  end
end, def(gml_lat_lon_list(%WeatherService.GmlLatLonListInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <GmlLatLonList xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <weatherParameters><%= get_in(@input, [:weather_parameters]) %></weatherParameters>        </GmlLatLonList>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#GmlLatLonList"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "GmlLatLonListResponse", WeatherService.GmlLatLonListOutput)
  end
end, def(gml_time_series(%WeatherService.GmlTimeSeriesInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <GmlTimeSeries xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <propertyName><%= get_in(@input, [:property_name]) %></propertyName>        </GmlTimeSeries>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#GmlTimeSeries"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "GmlTimeSeriesResponse", WeatherService.GmlTimeSeriesOutput)
  end
end, def(ndf_dgen_by_day(%WeatherService.NDFDgenByDayInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <NDFDgenByDay xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <format><%= get_in(@input, [:format]) %></format>        </NDFDgenByDay>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenByDay"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "NDFDgenByDayResponse", WeatherService.NDFDgenByDayOutput)
  end
end, def(ndf_dgen_by_day_lat_lon_list(%WeatherService.NDFDgenByDayLatLonListInput{} = input)) do
  input = Keyword.get(binding(), :input)
  envelope = EEx.eval_string("<Envelope xmlns='http://schemas.xmlsoap.org/soap/envelope/'>      <Body>        <NDFDgenByDayLatLonList xmlns='https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'>          <format><%= get_in(@input, [:format]) %></format>        </NDFDgenByDayLatLonList>      </Body>    </Envelope>", assigns: [input: input])
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenByDayLatLonList"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  with({:ok, %{body: body}} <- HTTPoison.post("https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php", envelope, headers)) do
    Wsdl.Ouput.read(body, "NDFDgenByDayLatLonListResponse", WeatherService.NDFDgenByDayLatLonListOutput)
  end
end]