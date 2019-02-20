%Lyex.Wsdl{
  bindings: [
    %Lyex.Wsdl.Binding{
      name: "ndfdXMLBinding",
      operations: [
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenByDayLatLonList",
          input: %{},
          name: "NDFDgenByDayLatLonList",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenByDay",
          input: %{},
          name: "NDFDgenByDay",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#GmlTimeSeries",
          input: %{},
          name: "GmlTimeSeries",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#GmlLatLonList",
          input: %{},
          name: "GmlLatLonList",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#CornerPoints",
          input: %{},
          name: "CornerPoints",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListSquare",
          input: %{},
          name: "LatLonListSquare",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListCityNames",
          input: %{},
          name: "LatLonListCityNames",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListZipCode",
          input: %{},
          name: "LatLonListZipCode",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListLine",
          input: %{},
          name: "LatLonListLine",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#LatLonListSubgrid",
          input: %{},
          name: "LatLonListSubgrid",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgenLatLonList",
          input: %{},
          name: "NDFDgenLatLonList",
          output: %{}
        },
        %Lyex.Wsdl.Binding.Operation{
          action: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl#NDFDgen",
          input: %{},
          name: "NDFDgen",
          output: %{}
        }
      ],
      style: "rpc",
      transport: "http://schemas.xmlsoap.org/soap/http",
      type: "tns:ndfdXMLPortType"
    }
  ],
  documentation: nil,
  files_read: ["https://graphical.weather.gov/xml/SOAP_server/ndfdXMLserver.php?wsdl"],
  messages: [
    %Lyex.Wsdl.Message{
      name: "NDFDgenByDayLatLonListResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "dwmlByDayOut"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenByDayLatLonListRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "format"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenByDayResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "dwmlByDayOut"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenByDayRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "format"}
    },
    %Lyex.Wsdl.Message{
      name: "GmlTimeSeriesResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "dwGmlOut"}
    },
    %Lyex.Wsdl.Message{
      name: "GmlTimeSeriesRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "propertyName"}
    },
    %Lyex.Wsdl.Message{
      name: "GmlLatLonListResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "dwGmlOut"}
    },
    %Lyex.Wsdl.Message{
      name: "GmlLatLonListRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "weatherParameters"}
    },
    %Lyex.Wsdl.Message{
      name: "CornerPointsResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "listLatLonOut"}
    },
    %Lyex.Wsdl.Message{
      name: "CornerPointsRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "sector"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListSquareResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "listLatLonOut"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListSquareRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "resolution"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListCityNamesResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "listLatLonOut"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListCityNamesRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "displayLevel"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListZipCodeResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "listLatLonOut"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListZipCodeRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "zipCodeList"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListLineResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "listLatLonOut"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListLineRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "endPoint2Lon"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListSubgridResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "listLatLonOut"}
    },
    %Lyex.Wsdl.Message{
      name: "LatLonListSubgridRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "resolution"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenLatLonListResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "dwmlOut"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenLatLonListRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "weatherParameters"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenResponse",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "dwmlOut"}
    },
    %Lyex.Wsdl.Message{
      name: "NDFDgenRequest",
      part: %Lyex.Wsdl.Message.Part{element: nil, name: "weatherParameters"}
    }
  ],
  namespaces: %{
    "" => "http://schemas.xmlsoap.org/wsdl/",
    "SOAP-ENC" => "http://schemas.xmlsoap.org/soap/encoding/",
    "SOAP-ENV" => "http://schemas.xmlsoap.org/soap/envelope/",
    "soap" => "http://schemas.xmlsoap.org/wsdl/soap/",
    "tns" => "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl",
    "wsdl" => "http://schemas.xmlsoap.org/wsdl/",
    "xsd" => "http://www.w3.org/2001/XMLSchema",
    "xsi" => "http://www.w3.org/2001/XMLSchema-instance"
  },
  port_types: [
    %Lyex.Wsdl.PortType{
      name: "ndfdXMLPortType",
      operations: [
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable "format" are "24 hourly" and "12 hourly".  The input variable "startDate" is a date string representing the first day (Local) of data to be returned. The input variable "numDays" is the integer number of days for which the user wants data. Allowable values for the input variable "Unit" are "e" for U.S. Standare/English units and "m" for Metric units.',
          input: "tns:NDFDgenByDayLatLonListRequest",
          name: "NDFDgenByDayLatLonList",
          output: "tns:NDFDgenByDayLatLonListResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Hawaii, Guam, and Puerto Rico only.  Allowable values for the input variable "format" are "24 hourly" and "12 hourly".  The input variable "startDate" is a date string representing the first day (Local) of data to be returned. The input variable "numDays" is the integer number of days for which the user wants data. Allowable values for the input variable "Unit" are "e" for U.S. Standare/English units and "m" for Metric units.',
          input: "tns:NDFDgenByDayRequest",
          name: "NDFDgenByDay",
          output: "tns:NDFDgenByDayResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns National Weather Service digital weather forecast data encoded in GML.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable "featureType" are "Forecast_Gml2Point", "Forecast_GmlObs", "NdfdMultiPointCoverage", "Ndfd_KmlPoint", and "Forecast_GmlsfPoint".  For all feature types a start and end time (UTC) is required to indicate when data is requested.  a comparison type (IsEqual, Between, GreaterThan, GreaterThan, GreaterThanEqualTo, LessThan, and  LessThanEqualTo). The input variable "propertyName" contains a comma delimited string of NDFD element to indicate which weather parameters are being requested.',
          input: "tns:GmlTimeSeriesRequest",
          name: "GmlTimeSeries",
          output: "tns:GmlTimeSeriesResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns National Weather Service digital weather forecast data encoded in GML.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable "featureType" are "Forecast_Gml2Point", "Forecast_GmlObs", "NdfdMultiPointCoverage", "Ndfd_KmlPoint", and "Forecast_GmlsfPoint".  For all feature types a time (UTC) is required to indicate when data is requested.  The input variable "weatherParameters" has array elements set to "true" to indicate which weather parameters are being requested.  If an array element is set to "false", data for that weather parameter are not to be returned.',
          input: "tns:GmlLatLonListRequest",
          name: "GmlLatLonList",
          output: "tns:GmlLatLonListResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns latitude and longitude pairs of the four corners of an NDFD grid.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.  Supports latitudes and longitudes for the Continental United States, Hawaii, Guam, and Puerto Rico only.  Also provides a minimum resolution for requesting the grid.',
          input: "tns:CornerPointsRequest",
          name: "CornerPoints",
          output: "tns:CornerPointsResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns a list of latitude and longitude pairs in a rectangle defined by a central point and distance from that point in the latitudinal and longitudinal directions.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.',
          input: "tns:LatLonListSquareRequest",
          name: "LatLonListSquare",
          output: "tns:LatLonListSquareResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns the latitude and longitude pairs corresponding to a predefined list of US cities.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.  The response also includes a list of city names with the order of the names matching the order of the corresponding point.',
          input: "tns:LatLonListCityNamesRequest",
          name: "LatLonListCityNames",
          output: "tns:LatLonListCityNamesResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns the latitude and longitude pairs corresponding to a list of one or more zip codes.  Supports zip codes for the Continental United States, Alaska, Hawaii, and Puerto Rico only. Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.',
          input: "tns:LatLonListZipCodeRequest",
          name: "LatLonListZipCode",
          output: "tns:LatLonListZipCodeResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns a list of latitude and longitude pairs along a line defined by two points.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.',
          input: "tns:LatLonListLineRequest",
          name: "LatLonListLine",
          output: "tns:LatLonListLineResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns a list of Latitude and longitude pairs for a rectangle defined by its lower left and upper right points.  Provides points in a format suitable for use in calling multi-point functions NDFDgenLatLonList and NDFDgenByDayLatLonList.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico.',
          input: "tns:LatLonListSubgridRequest",
          name: "LatLonListSubgrid",
          output: "tns:LatLonListSubgridResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only.  The latitude and longitude are delimited by a comma and multiple pairs are delimited by a space (i.e. 30.00,-77.00 40.00,-90.00). Allowable values for the input variable "product" are "time-series" and "glance". Allowable values for the input variable "Unit" are "e" for U.S. Standare/English units and "m" for Metric units. For both products, a start and end time (Local) are required. For both products, a start and end time (Local) are required.  For the time-series product, the input variable "weatherParameters" has array elements set to "true" to indicate which weather parameters are being requested.  If an array element is set to "false", data for that weather parameter are not to be returned.',
          input: "tns:NDFDgenLatLonListRequest",
          name: "NDFDgenLatLonList",
          output: "tns:NDFDgenLatLonListResponse"
        },
        %Lyex.Wsdl.PortType.Operation{
          documentation: 'Returns National Weather Service digital weather forecast data.  Supports latitudes and longitudes for the Continental United States, Alaska, Hawaii, Guam, and Puerto Rico only. Allowable values for the input variable "product" are "time-series" and "glance". Allowable values for the input variable "Unit" are "e" for U.S. Standare/English units and "m" for Metric units. For both products, a start and end time (Local) are required.  For the time-series product, the input variable "weatherParameters" has array elements set to "true" to indicate which weather parameters are being requested.  If an array element is set to "false", data for that weather parameter are not to be returned.',
          input: "tns:NDFDgenRequest",
          name: "NDFDgen",
          output: "tns:NDFDgenResponse"
        }
      ]
    }
  ],
  schemas: [
    %Lyex.Wsdl.Schema{
      complex_types: [
        %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "iceaccum",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wgust",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wwa",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wspd_r",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wdir_r",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "td_r",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "temp_r",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "sky_r",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "precipa_r",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "prcpblw90d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "prcpabv90d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "prcpblw30d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "prcpabv30d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "prcpblw14d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "prcpabv14d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "tmpblw90d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "tmpabv90d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "tmpblw30d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "tmpabv30d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "tmpblw14d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "tmpabv14d",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "pxtotsvrtstm",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "ptotsvrtstm",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "pxtstmwinds",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "pxhail",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "pxtornado",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "ptstmwinds",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "phail",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "ptornado",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "conhazo",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "dryfireo",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "critfireo",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "cumw64",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "cumw50",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "cumw34",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "incw64",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "incw50",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "incw34",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "appt",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "rh",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "icons",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "waveh",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wx",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wdir",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "wspd",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "snow",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "sky",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "qpf",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "pop12",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "dew",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "temp",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "mint",
              nillable: false,
              type: "xsd:boolean"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: nil,
              name: "maxt",
              nillable: false,
              type: "xsd:boolean"
            }
          ],
          name: "weatherParametersType",
          restriction: nil
        }
      ],
      elements: [],
      simple_types: [],
      target_namespace: "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl"
    }
  ],
  service: %Lyex.Wsdl.Service{
    name: "WeatherService",
    ports: [
      %Lyex.Wsdl.Service.Port{
        address: "https://graphical.weather.gov:443/xml/SOAP_server/ndfdXMLserver.php",
        binding: "tns:ndfdXMLBinding",
        name: "ndfdXMLPort"
      }
    ]
  },
  target_namespace: ""
}