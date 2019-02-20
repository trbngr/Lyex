%Lyex.Wsdl.PortType{
  name: "IVendorPaymentSvc",
  operations: [
    %Lyex.Wsdl.PortType.Operation{
      action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/VoidDeposit",
      documentation: nil,
      input: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "VoidDeposit",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "input",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "VendorTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "ResidentNumber",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "KeefeTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityCode",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Auth",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "VendorCode",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "UserId",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Password",
                    nillable: true,
                    type: "string"
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "AccountNumber",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      input_namespace: nil,
      input_type: "IVendorPaymentSvc_VoidDeposit_InputMessage",
      name: "VoidDeposit",
      output: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "VoidDepositResponse",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "VoidDepositResult",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "VendorTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Result",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Text",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Code",
                    nillable: false,
                    type: %Lyex.Wsdl.Schema.SimpleType{
                      documentation: nil,
                      name: "ResultCode",
                      restriction: %Lyex.Wsdl.Schema.Restriction{
                        base: "xs:string",
                        constraints: [
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_DEPOSITOR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_RESIDENT"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_FACILITY"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_INPUT_VALUES"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "AUTHENTICATION_FAILED"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SYSTEM_ERROR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SUCCESS"
                          }
                        ]
                      }
                    }
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "KeefeTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityName",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      output_namespace: nil,
      output_type: "IVendorPaymentSvc_VoidDeposit_OutputMessage",
      request_headers: [
        {"Content-Type", "text/xml; charset=utf-8"},
        {"SOAPAction",
         "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/VoidDeposit"},
        {"User-Agent", "Lyex/0.1.0"},
        {"SOAP_Version", "1.1"}
      ],
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header/>        <soap:Body>          <lyex:VoidDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:input><lyex:VendorTransId><%= get_in(@input, [:input, :vendor_trans_id]) %></lyex:VendorTransId><lyex:ResidentNumber><%= get_in(@input, [:input, :resident_number]) %></lyex:ResidentNumber><lyex:KeefeTransId><%= get_in(@input, [:input, :keefe_trans_id]) %></lyex:KeefeTransId><lyex:FacilityCode><%= get_in(@input, [:input, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :password]) %></lyex:Password></lyex:Auth><lyex:AccountNumber><%= get_in(@input, [:input, :account_number]) %></lyex:AccountNumber></lyex:input>          </lyex:VoidDeposit>        </soap:Body>      </soap:Envelope>"
    },
    %Lyex.Wsdl.PortType.Operation{
      action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/LookupRecipient",
      documentation: nil,
      input: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "LookupRecipient",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "input",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "RecipientNumber",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityCode",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Auth",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "VendorCode",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "UserId",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Password",
                    nillable: true,
                    type: "string"
                  }
                ]
              }
            ]
          }
        ]
      },
      input_namespace: nil,
      input_type: "IVendorPaymentSvc_LookupRecipient_InputMessage",
      name: "LookupRecipient",
      output: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "LookupRecipientResponse",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "LookupRecipientResult",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Result",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Text",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Code",
                    nillable: false,
                    type: %Lyex.Wsdl.Schema.SimpleType{
                      documentation: nil,
                      name: "ResultCode",
                      restriction: %Lyex.Wsdl.Schema.Restriction{
                        base: "xs:string",
                        constraints: [
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_DEPOSITOR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_RESIDENT"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_FACILITY"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_INPUT_VALUES"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "AUTHENTICATION_FAILED"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SYSTEM_ERROR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SUCCESS"
                          }
                        ]
                      }
                    }
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "MaxDepositAmount",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "LastName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FirstName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOBYear",
                nillable: false,
                type: "int"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOBMonth",
                nillable: false,
                type: "int"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOBDay",
                nillable: false,
                type: "int"
              }
            ]
          }
        ]
      },
      output_namespace: nil,
      output_type: "IVendorPaymentSvc_LookupRecipient_OutputMessage",
      request_headers: [
        {"Content-Type", "text/xml; charset=utf-8"},
        {"SOAPAction",
         "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/LookupRecipient"},
        {"User-Agent", "Lyex/0.1.0"},
        {"SOAP_Version", "1.1"}
      ],
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header/>        <soap:Body>          <lyex:LookupRecipient xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:input><lyex:RecipientNumber><%= get_in(@input, [:input, :recipient_number]) %></lyex:RecipientNumber><lyex:FacilityCode><%= get_in(@input, [:input, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :password]) %></lyex:Password></lyex:Auth></lyex:input>          </lyex:LookupRecipient>        </soap:Body>      </soap:Envelope>"
    },
    %Lyex.Wsdl.PortType.Operation{
      action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PostDeposit",
      documentation: nil,
      input: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "PostDeposit",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "input",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "VendorTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "SurchargeFee",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "ServiceFee",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "ResidentNumber",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "PurposeCode",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "KeefeTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityCode",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DepositorSSN",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DepositAmount",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Auth",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "VendorCode",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "UserId",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Password",
                    nillable: true,
                    type: "string"
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "AmountCollected",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "AccountNumber",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      input_namespace: nil,
      input_type: "IVendorPaymentSvc_PostDeposit_InputMessage",
      name: "PostDeposit",
      output: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "PostDepositResponse",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "PostDepositResult",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "VendorTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Result",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Text",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Code",
                    nillable: false,
                    type: %Lyex.Wsdl.Schema.SimpleType{
                      documentation: nil,
                      name: "ResultCode",
                      restriction: %Lyex.Wsdl.Schema.Restriction{
                        base: "xs:string",
                        constraints: [
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_DEPOSITOR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_RESIDENT"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_FACILITY"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_INPUT_VALUES"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "AUTHENTICATION_FAILED"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SYSTEM_ERROR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SUCCESS"
                          }
                        ]
                      }
                    }
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "LastName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "KeefeTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FirstName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityName",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      output_namespace: nil,
      output_type: "IVendorPaymentSvc_PostDeposit_OutputMessage",
      request_headers: [
        {"Content-Type", "text/xml; charset=utf-8"},
        {"SOAPAction",
         "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PostDeposit"},
        {"User-Agent", "Lyex/0.1.0"},
        {"SOAP_Version", "1.1"}
      ],
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header/>        <soap:Body>          <lyex:PostDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:input><lyex:VendorTransId><%= get_in(@input, [:input, :vendor_trans_id]) %></lyex:VendorTransId><lyex:SurchargeFee><%= get_in(@input, [:input, :surcharge_fee]) %></lyex:SurchargeFee><lyex:ServiceFee><%= get_in(@input, [:input, :service_fee]) %></lyex:ServiceFee><lyex:ResidentNumber><%= get_in(@input, [:input, :resident_number]) %></lyex:ResidentNumber><lyex:PurposeCode><%= get_in(@input, [:input, :purpose_code]) %></lyex:PurposeCode><lyex:KeefeTransId><%= get_in(@input, [:input, :keefe_trans_id]) %></lyex:KeefeTransId><lyex:FacilityCode><%= get_in(@input, [:input, :facility_code]) %></lyex:FacilityCode><lyex:DepositorSSN><%= get_in(@input, [:input, :depositor_ssn]) %></lyex:DepositorSSN><lyex:DepositAmount><%= get_in(@input, [:input, :deposit_amount]) %></lyex:DepositAmount><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :password]) %></lyex:Password></lyex:Auth><lyex:AmountCollected><%= get_in(@input, [:input, :amount_collected]) %></lyex:AmountCollected><lyex:AccountNumber><%= get_in(@input, [:input, :account_number]) %></lyex:AccountNumber></lyex:input>          </lyex:PostDeposit>        </soap:Body>      </soap:Envelope>"
    },
    %Lyex.Wsdl.PortType.Operation{
      action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PreValidateDeposit",
      documentation: nil,
      input: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "PreValidateDeposit",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "input",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "ResidentNumber",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityCode",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Auth",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "VendorCode",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "UserId",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Password",
                    nillable: true,
                    type: "string"
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Amount",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "AccountNumber",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      input_namespace: nil,
      input_type: "IVendorPaymentSvc_PreValidateDeposit_InputMessage",
      name: "PreValidateDeposit",
      output: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "PreValidateDepositResponse",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "PreValidateDepositResult",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Result",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Text",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Code",
                    nillable: false,
                    type: %Lyex.Wsdl.Schema.SimpleType{
                      documentation: nil,
                      name: "ResultCode",
                      restriction: %Lyex.Wsdl.Schema.Restriction{
                        base: "xs:string",
                        constraints: [
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_DEPOSITOR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_RESIDENT"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_FACILITY"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_INPUT_VALUES"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "AUTHENTICATION_FAILED"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SYSTEM_ERROR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SUCCESS"
                          }
                        ]
                      }
                    }
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "MaxDepositAmount",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "LastName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "KeefeTransId",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FirstName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOBYear",
                nillable: false,
                type: "int"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOBMonth",
                nillable: false,
                type: "int"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOBDay",
                nillable: false,
                type: "int"
              }
            ]
          }
        ]
      },
      output_namespace: nil,
      output_type: "IVendorPaymentSvc_PreValidateDeposit_OutputMessage",
      request_headers: [
        {"Content-Type", "text/xml; charset=utf-8"},
        {"SOAPAction",
         "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PreValidateDeposit"},
        {"User-Agent", "Lyex/0.1.0"},
        {"SOAP_Version", "1.1"}
      ],
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header/>        <soap:Body>          <lyex:PreValidateDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:input><lyex:ResidentNumber><%= get_in(@input, [:input, :resident_number]) %></lyex:ResidentNumber><lyex:FacilityCode><%= get_in(@input, [:input, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :password]) %></lyex:Password></lyex:Auth><lyex:Amount><%= get_in(@input, [:input, :amount]) %></lyex:Amount><lyex:AccountNumber><%= get_in(@input, [:input, :account_number]) %></lyex:AccountNumber></lyex:input>          </lyex:PreValidateDeposit>        </soap:Body>      </soap:Envelope>"
    },
    %Lyex.Wsdl.PortType.Operation{
      action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/RegisterDepositor",
      documentation: nil,
      input: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "RegisterDepositor",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "input",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Zip",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "WorkPhone",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Username",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "State",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Password",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "MiddleName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "LastName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "HomePhone",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FirstName",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "FacilityCode",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Email",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DepositAmount",
                nillable: false,
                type: "decimal"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "DOB",
                nillable: false,
                type: "dateTime"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "City",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "CellPhone",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Auth",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "VendorCode",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "UserId",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Password",
                    nillable: true,
                    type: "string"
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "AltEmail",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Address2",
                nillable: true,
                type: "string"
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Address1",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      input_namespace: nil,
      input_type: "IVendorPaymentSvc_RegisterDepositor_InputMessage",
      name: "RegisterDepositor",
      output: %Lyex.Wsdl.Schema.Element{
        default: nil,
        documentation: nil,
        fixed: nil,
        maxOccurs: nil,
        minOccurs: nil,
        name: "RegisterDepositorResponse",
        nillable: false,
        type: [
          %Lyex.Wsdl.Schema.Element{
            default: nil,
            documentation: nil,
            fixed: nil,
            maxOccurs: nil,
            minOccurs: 0,
            name: "RegisterDepositorResult",
            nillable: true,
            type: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "Result",
                nillable: true,
                type: [
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Text",
                    nillable: true,
                    type: "string"
                  },
                  %Lyex.Wsdl.Schema.Element{
                    default: nil,
                    documentation: nil,
                    fixed: nil,
                    maxOccurs: nil,
                    minOccurs: 0,
                    name: "Code",
                    nillable: false,
                    type: %Lyex.Wsdl.Schema.SimpleType{
                      documentation: nil,
                      name: "ResultCode",
                      restriction: %Lyex.Wsdl.Schema.Restriction{
                        base: "xs:string",
                        constraints: [
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_DEPOSITOR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_RESIDENT"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_FACILITY"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "INVALID_INPUT_VALUES"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "AUTHENTICATION_FAILED"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SYSTEM_ERROR"
                          },
                          %Lyex.Wsdl.Schema.Restriction.Enumeration{
                            value: "SUCCESS"
                          }
                        ]
                      }
                    }
                  }
                ]
              },
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "AccountNumber",
                nillable: true,
                type: "string"
              }
            ]
          }
        ]
      },
      output_namespace: nil,
      output_type: "IVendorPaymentSvc_RegisterDepositor_OutputMessage",
      request_headers: [
        {"Content-Type", "text/xml; charset=utf-8"},
        {"SOAPAction",
         "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/RegisterDepositor"},
        {"User-Agent", "Lyex/0.1.0"},
        {"SOAP_Version", "1.1"}
      ],
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header/>        <soap:Body>          <lyex:RegisterDepositor xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:input><lyex:Zip><%= get_in(@input, [:input, :zip]) %></lyex:Zip><lyex:WorkPhone><%= get_in(@input, [:input, :work_phone]) %></lyex:WorkPhone><lyex:Username><%= get_in(@input, [:input, :username]) %></lyex:Username><lyex:State><%= get_in(@input, [:input, :state]) %></lyex:State><lyex:Password><%= get_in(@input, [:input, :password]) %></lyex:Password><lyex:MiddleName><%= get_in(@input, [:input, :middle_name]) %></lyex:MiddleName><lyex:LastName><%= get_in(@input, [:input, :last_name]) %></lyex:LastName><lyex:HomePhone><%= get_in(@input, [:input, :home_phone]) %></lyex:HomePhone><lyex:FirstName><%= get_in(@input, [:input, :first_name]) %></lyex:FirstName><lyex:FacilityCode><%= get_in(@input, [:input, :facility_code]) %></lyex:FacilityCode><lyex:Email><%= get_in(@input, [:input, :email]) %></lyex:Email><lyex:DepositAmount><%= get_in(@input, [:input, :deposit_amount]) %></lyex:DepositAmount><lyex:DOB><%= get_in(@input, [:input, :dob]) %></lyex:DOB><lyex:City><%= get_in(@input, [:input, :city]) %></lyex:City><lyex:CellPhone><%= get_in(@input, [:input, :cell_phone]) %></lyex:CellPhone><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :password]) %></lyex:Password></lyex:Auth><lyex:AltEmail><%= get_in(@input, [:input, :alt_email]) %></lyex:AltEmail><lyex:Address2><%= get_in(@input, [:input, :address2]) %></lyex:Address2><lyex:Address1><%= get_in(@input, [:input, :address1]) %></lyex:Address1></lyex:input>          </lyex:RegisterDepositor>        </soap:Body>      </soap:Envelope>"
    }
  ]
}