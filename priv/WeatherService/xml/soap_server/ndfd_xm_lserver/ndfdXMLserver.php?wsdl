<?xml version="1.0" encoding="ISO-8859-1"?>
<definitions xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tns="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns="http://schemas.xmlsoap.org/wsdl/" targetNamespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl">
<types>
<xsd:schema targetNamespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl"
>
 <xsd:import namespace="http://schemas.xmlsoap.org/soap/encoding/" />
 <xsd:import namespace="http://schemas.xmlsoap.org/wsdl/" />
 <xsd:complexType name="weatherParametersType">
  <xsd:all>
   <xsd:element name="maxt" type="xsd:boolean"/>
   <xsd:element name="mint" type="xsd:boolean"/>
   <xsd:element name="temp" type="xsd:boolean"/>
   <xsd:element name="dew" type="xsd:boolean"/>
   <xsd:element name="pop12" type="xsd:boolean"/>
   <xsd:element name="qpf" type="xsd:boolean"/>
   <xsd:element name="sky" type="xsd:boolean"/>
   <xsd:element name="snow" type="xsd:boolean"/>
   <xsd:element name="wspd" type="xsd:boolean"/>
   <xsd:element name="wdir" type="xsd:boolean"/>
   <xsd:element name="wx" type="xsd:boolean"/>
   <xsd:element name="waveh" type="xsd:boolean"/>
   <xsd:element name="icons" type="xsd:boolean"/>
   <xsd:element name="rh" type="xsd:boolean"/>
   <xsd:element name="appt" type="xsd:boolean"/>
   <xsd:element name="incw34" type="xsd:boolean"/>
   <xsd:element name="incw50" type="xsd:boolean"/>
   <xsd:element name="incw64" type="xsd:boolean"/>
   <xsd:element name="cumw34" type="xsd:boolean"/>
   <xsd:element name="cumw50" type="xsd:boolean"/>
   <xsd:element name="cumw64" type="xsd:boolean"/>
   <xsd:element name="critfireo" type="xsd:boolean"/>
   <xsd:element name="dryfireo" type="xsd:boolean"/>
   <xsd:element name="conhazo" type="xsd:boolean"/>
   <xsd:element name="ptornado" type="xsd:boolean"/>
   <xsd:element name="phail" type="xsd:boolean"/>
   <xsd:element name="ptstmwinds" type="xsd:boolean"/>
   <xsd:element name="pxtornado" type="xsd:boolean"/>
   <xsd:element name="pxhail" type="xsd:boolean"/>
   <xsd:element name="pxtstmwinds" type="xsd:boolean"/>
   <xsd:element name="ptotsvrtstm" type="xsd:boolean"/>
   <xsd:element name="pxtotsvrtstm" type="xsd:boolean"/>
   <xsd:element name="tmpabv14d" type="xsd:boolean"/>
   <xsd:element name="tmpblw14d" type="xsd:boolean"/>
   <xsd:element name="tmpabv30d" type="xsd:boolean"/>
   <xsd:element name="tmpblw30d" type="xsd:boolean"/>
   <xsd:element name="tmpabv90d" type="xsd:boolean"/>
   <xsd:element name="tmpblw90d" type="xsd:boolean"/>
   <xsd:element name="prcpabv14d" type="xsd:boolean"/>
   <xsd:element name="prcpblw14d" type="xsd:boolean"/>
   <xsd:element name="prcpabv30d" type="xsd:boolean"/>
   <xsd:element name="prcpblw30d" type="xsd:boolean"/>
   <xsd:element name="prcpabv90d" type="xsd:boolean"/>
   <xsd:element name="prcpblw90d" type="xsd:boolean"/>
   <xsd:element name="precipa_r" type="xsd:boolean"/>
   <xsd:element name="sky_r" type="xsd:boolean"/>
   <xsd:element name="temp_r" type="xsd:boolean"/>
   <xsd:element name="td_r" type="xsd:boolean"/>
   <xsd:element name="wdir_r" type="xsd:boolean"/>
   <xsd:element name="wspd_r" type="xsd:boolean"/>
   <xsd:element name="wwa" type="xsd:boolean"/>
   <xsd:element name="wgust" type="xsd:boolean"/>
   <xsd:element name="iceaccum" type="xsd:boolean"/>
  </xsd:all>
 </xsd:complexType>
</xsd:schema>
</types>
<message name="NDFDgenRequest">
  <part name="latitude" type="xsd:decimal" />
  <part name="longitude" type="xsd:decimal" />
  <part name="product" type="xsd:string" />
  <part name="startTime" type="xsd:dateTime" />
  <part name="endTime" type="xsd:dateTime" />
  <part name="Unit" type="xsd:string" />
  <part name="weatherParameters" type="tns:weatherParametersType" /></message>
<message name="NDFDgenResponse">
  <part name="dwmlOut" type="xsd:string" /></message>
<message name="NDFDgenLatLonListRequest">
  <part name="listLatLon" type="xsd:string" />
  <part name="product" type="xsd:string" />
  <part name="startTime" type="xsd:dateTime" />
  <part name="endTime" type="xsd:dateTime" />
  <part name="Unit" type="xsd:string" />
  <part name="weatherParameters" type="tns:weatherParametersType" /></message>
<message name="NDFDgenLatLonListResponse">
  <part name="dwmlOut" type="xsd:string" /></message>
<message name="LatLonListSubgridRequest">
  <part name="lowerLeftLatitude" type="xsd:decimal" />
  <part name="lowerLeftLongitude" type="xsd:decimal" />
  <part name="upperRightLatitude" type="xsd:decimal" />
  <part name="upperRightLongitude" type="xsd:decimal" />
  <part name="resolution" type="xsd:decimal" /></message>
<message name="LatLonListSubgridResponse">
  <part name="listLatLonOut" type="xsd:string" /></message>
<message name="LatLonListLineRequest">
  <part name="endPoint1Lat" type="xsd:decimal" />
  <part name="endPoint1Lon" type="xsd:decimal" />
  <part name="endPoint2Lat" type="xsd:decimal" />
  <part name="endPoint2Lon" type="xsd:decimal" /></message>
<message name="LatLonListLineResponse">
  <part name="listLatLonOut" type="xsd:string" /></message>
<message name="LatLonListZipCodeRequest">
  <part name="zipCodeList" type="xsd:string" /></message>
<message name="LatLonListZipCodeResponse">
  <part name="listLatLonOut" type="xsd:string" /></message>
<message name="LatLonListCityNamesRequest">
  <part name="displayLevel" type="xsd:integer" /></message>
<message name="LatLonListCityNamesResponse">
  <part name="listLatLonOut" type="xsd:string" /></message>
<message name="LatLonListSquareRequest">
  <part name="centerPointLat" type="xsd:decimal" />
  <part name="centerPointLon" type="xsd:decimal" />
  <part name="distanceLat" type="xsd:decimal" />
  <part name="distanceLon" type="xsd:decimal" />
  <part name="resolution" type="xsd:decimal" /></message>
<message name="LatLonListSquareResponse">
  <part name="listLatLonOut" type="xsd:string" /></message>
<message name="CornerPointsRequest">
  <part name="sector" type="xsd:string" /></message>
<message name="CornerPointsResponse">
  <part name="listLatLonOut" type="xsd:string" /></message>
<message name="GmlLatLonListRequest">
  <part name="listLatLon" type="xsd:string" />
  <part name="requestedTime" type="xsd:dateTime" />
  <part name="featureType" type="xsd:string" />
  <part name="weatherParameters" type="tns:weatherParametersType" /></message>
<message name="GmlLatLonListResponse">
  <part name="dwGmlOut" type="xsd:string" /></message>
<message name="GmlTimeSeriesRequest">
  <part name="listLatLon" type="xsd:string" />
  <part name="startTime" type="xsd:dateTime" />
  <part name="endTime" type="xsd:dateTime" />
  <part name="compType" type="xsd:string" />
  <part name="featureType" type="xsd:string" />
  <part name="propertyName" type="xsd:string" /></message>
<message name="GmlTimeSeriesResponse">
  <part name="dwGmlOut" type="xsd:string" /></message>
<message name="NDFDgenByDayRequest">
  <part name="latitude" type="xsd:decimal" />
  <part name="longitude" type="xsd:decimal" />
  <part name="startDate" type="xsd:date" />
  <part name="numDays" type="xsd:integer" />
  <part name="Unit" type="xsd:string" />
  <part name="format" type="xsd:string" /></message>
<message name="NDFDgenByDayResponse">
  <part name="dwmlByDayOut" type="xsd:string" /></message>
<message name="NDFDgenByDayLatLonListRequest">
  <part name="listLatLon" type="xsd:string" />
  <part name="startDate" type="xsd:date" />
  <part name="numDays" type="xsd:integer" />
  <part name="Unit" type="xsd:string" />
  <part name="format" type="xsd:string" /></message>
<message name="NDFDgenByDayLatLonListResponse">
  <part name="dwmlByDayOut" type="xsd:string" /></message>
<portType name="ndfdXMLPortType">
  <operation name="NDFDgen">
    <documentation>Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only. Allowable values for the input variable &quot;product&quot; are &quot;time-series&quot; and &quot;glance&quot;. Allowable values for the input variable &quot;Unit&quot; are &quot;e&quot; for U.S. Standare/English units and &quot;m&quot; for Metric units. For both products, a start and end time (Local) are required.  For the time-series product, the input variable &quot;weatherParameters&quot; has array elements set to &quot;true&quot; to indicate which weather parameters are being requested.  If an array element is set to &quot;false&quot;, data for that weather parameter are not to be returned.</documentation>
    <input message="tns:NDFDgenRequest"/>
    <output message="tns:NDFDgenResponse"/>
  </operation>
  <operation name="NDFDgenLatLonList">
    <documentation>Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable &quot;product&quot; are &quot;time-series&quot; and &quot;glance&quot;. Allowable values for the input variable &quot;Unit&quot; are &quot;e&quot; for U.S. Standare/English units and &quot;m&quot; for Metric units. For both products, a start and end time (Local) are required. For both products, a start and end time (Local) are required.  For the time-series product, the input variable &quot;weatherParameters&quot; has array elements set to &quot;true&quot; to indicate which weather parameters are being requested.  If an array element is set to &quot;false&quot;, data for that weather parameter are not to be returned.</documentation>
    <input message="tns:NDFDgenLatLonListRequest"/>
    <output message="tns:NDFDgenLatLonListResponse"/>
  </operation>
  <operation name="LatLonListSubgrid">
    <documentation>Returns a list of Latitude and longitude pairs for a rectangle defined by its lower left and upper right points.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico.</documentation>
    <input message="tns:LatLonListSubgridRequest"/>
    <output message="tns:LatLonListSubgridResponse"/>
  </operation>
  <operation name="LatLonListLine">
    <documentation>Returns a list of latitude and longitude pairs along a line defined by two points.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.</documentation>
    <input message="tns:LatLonListLineRequest"/>
    <output message="tns:LatLonListLineResponse"/>
  </operation>
  <operation name="LatLonListZipCode">
    <documentation>Returns the latitude and longitude pairs corresponding to a list of one or more zip codes.  Supports zip codes for the Continental United States, Alaska, Hawaii, and Puerto Rico only. Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.</documentation>
    <input message="tns:LatLonListZipCodeRequest"/>
    <output message="tns:LatLonListZipCodeResponse"/>
  </operation>
  <operation name="LatLonListCityNames">
    <documentation>Returns the latitude and longitude pairs corresponding to a predefined list of US cities.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.  The response also includes a list of city names with the order of the names matching the order of the corresponding point.</documentation>
    <input message="tns:LatLonListCityNamesRequest"/>
    <output message="tns:LatLonListCityNamesResponse"/>
  </operation>
  <operation name="LatLonListSquare">
    <documentation>Returns a list of latitude and longitude pairs in a rectangle defined by a central point and distance from that point in the latitudinal and longitudinal directions.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.</documentation>
    <input message="tns:LatLonListSquareRequest"/>
    <output message="tns:LatLonListSquareResponse"/>
  </operation>
  <operation name="CornerPoints">
    <documentation>Returns latitude and longitude pairs of the four corners of an NDFD grid.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.  Supports latitudes and longitudes for the Continental United States, Hawaii, Guam, and Puerto Rico only.  Also provides a minimum resolution for requesting the grid.</documentation>
    <input message="tns:CornerPointsRequest"/>
    <output message="tns:CornerPointsResponse"/>
  </operation>
  <operation name="GmlLatLonList">
    <documentation>Returns National Weather Service digital weather forecast data encoded in GML.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable &quot;featureType&quot; are &quot;Forecast_Gml2Point&quot;, &quot;Forecast_GmlObs&quot;, &quot;NdfdMultiPointCoverage&quot;, &quot;Ndfd_KmlPoint&quot;, and &quot;Forecast_GmlsfPoint&quot;.  For all feature types a time (UTC) is required to indicate when data is requested.  The input variable &quot;weatherParameters&quot; has array elements set to &quot;true&quot; to indicate which weather parameters are being requested.  If an array element is set to &quot;false&quot;, data for that weather parameter are not to be returned.</documentation>
    <input message="tns:GmlLatLonListRequest"/>
    <output message="tns:GmlLatLonListResponse"/>
  </operation>
  <operation name="GmlTimeSeries">
    <documentation>Returns National Weather Service digital weather forecast data encoded in GML.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable &quot;featureType&quot; are &quot;Forecast_Gml2Point&quot;, &quot;Forecast_GmlObs&quot;, &quot;NdfdMultiPointCoverage&quot;, &quot;Ndfd_KmlPoint&quot;, and &quot;Forecast_GmlsfPoint&quot;.  For all feature types a start and end time (UTC) is required to indicate when data is requested.  a comparison type (IsEqual, Between, GreaterThan, GreaterThan, GreaterThanEqualTo, LessThan, and  LessThanEqualTo). The input variable &quot;propertyName&quot; contains a comma delimited string of NDFD element to indicate which weather parameters are being requested.</documentation>
    <input message="tns:GmlTimeSeriesRequest"/>
    <output message="tns:GmlTimeSeriesResponse"/>
  </operation>
  <operation name="NDFDgenByDay">
    <documentation>Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Hawaii, Guam, and Puerto Rico only.  Allowable values for the input variable &quot;format&quot; are &quot;24 hourly&quot; and &quot;12 hourly&quot;.  The input variable &quot;startDate&quot; is a date string representing the first day (Local) of data to be returned. The input variable &quot;numDays&quot; is the integer number of days for which the user wants data. Allowable values for the input variable &quot;Unit&quot; are &quot;e&quot; for U.S. Standare/English units and &quot;m&quot; for Metric units.</documentation>
    <input message="tns:NDFDgenByDayRequest"/>
    <output message="tns:NDFDgenByDayResponse"/>
  </operation>
  <operation name="NDFDgenByDayLatLonList">
    <documentation>Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable &quot;format&quot; are &quot;24 hourly&quot; and &quot;12 hourly&quot;.  The input variable &quot;startDate&quot; is a date string representing the first day (Local) of data to be returned. The input variable &quot;numDays&quot; is the integer number of days for which the user wants data. Allowable values for the input variable &quot;Unit&quot; are &quot;e&quot; for U.S. Standare/English units and &quot;m&quot; for Metric units.</documentation>
    <input message="tns:NDFDgenByDayLatLonListRequest"/>
    <output message="tns:NDFDgenByDayLatLonListResponse"/>
  </operation>
</portType>
<binding name="ndfdXMLBinding" type="tns:ndfdXMLPortType">
  <soap:binding style="rpc" transport="http://schemas.xmlsoap.org/soap/http"/>
  <operation name="NDFDgen">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgen" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="NDFDgenLatLonList">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenLatLonList" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="LatLonListSubgrid">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListSubgrid" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="LatLonListLine">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListLine" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="LatLonListZipCode">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListZipCode" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="LatLonListCityNames">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListCityNames" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="LatLonListSquare">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListSquare" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="CornerPoints">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#CornerPoints" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="GmlLatLonList">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#GmlLatLonList" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="GmlTimeSeries">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#GmlTimeSeries" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="NDFDgenByDay">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenByDay" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
  <operation name="NDFDgenByDayLatLonList">
    <soap:operation soapAction="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenByDayLatLonList" style="rpc"/>
    <input><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></input>
    <output><soap:body use="encoded" namespace="https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl" encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"/></output>
  </operation>
</binding>
<service name="ndfdXML">
  <port name="ndfdXMLPort" binding="tns:ndfdXMLBinding">
    <soap:address location="https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php"/>
  </port>
</service>
</definitions>