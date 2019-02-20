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
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:VoidDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:VoidDeposit><lyex:input><lyex:VendorTransId><%= get_in(@input, [:input, :void_deposit, :vendor_trans_id]) %></lyex:VendorTransId><lyex:ResidentNumber><%= get_in(@input, [:input, :void_deposit, :resident_number]) %></lyex:ResidentNumber><lyex:KeefeTransId><%= get_in(@input, [:input, :void_deposit, :keefe_trans_id]) %></lyex:KeefeTransId><lyex:FacilityCode><%= get_in(@input, [:input, :void_deposit, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :void_deposit, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :void_deposit, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :void_deposit, :password]) %></lyex:Password></lyex:Auth><lyex:AccountNumber><%= get_in(@input, [:input, :void_deposit, :account_number]) %></lyex:AccountNumber></lyex:input></lyex:VoidDeposit>          </lyex:VoidDeposit>        </soap:Body>      </soap:Envelope>"
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
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:LookupRecipient xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:LookupRecipient><lyex:input><lyex:RecipientNumber><%= get_in(@input, [:input, :lookup_recipient, :recipient_number]) %></lyex:RecipientNumber><lyex:FacilityCode><%= get_in(@input, [:input, :lookup_recipient, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :lookup_recipient, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :lookup_recipient, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :lookup_recipient, :password]) %></lyex:Password></lyex:Auth></lyex:input></lyex:LookupRecipient>          </lyex:LookupRecipient>        </soap:Body>      </soap:Envelope>"
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
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:PostDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:PostDeposit><lyex:input><lyex:VendorTransId><%= get_in(@input, [:input, :post_deposit, :vendor_trans_id]) %></lyex:VendorTransId><lyex:SurchargeFee><%= get_in(@input, [:input, :post_deposit, :surcharge_fee]) %></lyex:SurchargeFee><lyex:ServiceFee><%= get_in(@input, [:input, :post_deposit, :service_fee]) %></lyex:ServiceFee><lyex:ResidentNumber><%= get_in(@input, [:input, :post_deposit, :resident_number]) %></lyex:ResidentNumber><lyex:PurposeCode><%= get_in(@input, [:input, :post_deposit, :purpose_code]) %></lyex:PurposeCode><lyex:KeefeTransId><%= get_in(@input, [:input, :post_deposit, :keefe_trans_id]) %></lyex:KeefeTransId><lyex:FacilityCode><%= get_in(@input, [:input, :post_deposit, :facility_code]) %></lyex:FacilityCode><lyex:DepositorSSN><%= get_in(@input, [:input, :post_deposit, :depositor_ssn]) %></lyex:DepositorSSN><lyex:DepositAmount><%= get_in(@input, [:input, :post_deposit, :deposit_amount]) %></lyex:DepositAmount><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :post_deposit, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :post_deposit, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :post_deposit, :password]) %></lyex:Password></lyex:Auth><lyex:AmountCollected><%= get_in(@input, [:input, :post_deposit, :amount_collected]) %></lyex:AmountCollected><lyex:AccountNumber><%= get_in(@input, [:input, :post_deposit, :account_number]) %></lyex:AccountNumber></lyex:input></lyex:PostDeposit>          </lyex:PostDeposit>        </soap:Body>      </soap:Envelope>"
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
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:PreValidateDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:PreValidateDeposit><lyex:input><lyex:ResidentNumber><%= get_in(@input, [:input, :pre_validate_deposit, :resident_number]) %></lyex:ResidentNumber><lyex:FacilityCode><%= get_in(@input, [:input, :pre_validate_deposit, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :pre_validate_deposit, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :pre_validate_deposit, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :pre_validate_deposit, :password]) %></lyex:Password></lyex:Auth><lyex:Amount><%= get_in(@input, [:input, :pre_validate_deposit, :amount]) %></lyex:Amount><lyex:AccountNumber><%= get_in(@input, [:input, :pre_validate_deposit, :account_number]) %></lyex:AccountNumber></lyex:input></lyex:PreValidateDeposit>          </lyex:PreValidateDeposit>        </soap:Body>      </soap:Envelope>"
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
      request_template: "<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:RegisterDepositor xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:RegisterDepositor><lyex:input><lyex:Zip><%= get_in(@input, [:input, :register_depositor, :zip]) %></lyex:Zip><lyex:WorkPhone><%= get_in(@input, [:input, :register_depositor, :work_phone]) %></lyex:WorkPhone><lyex:Username><%= get_in(@input, [:input, :register_depositor, :username]) %></lyex:Username><lyex:State><%= get_in(@input, [:input, :register_depositor, :state]) %></lyex:State><lyex:Password><%= get_in(@input, [:input, :register_depositor, :password]) %></lyex:Password><lyex:MiddleName><%= get_in(@input, [:input, :register_depositor, :middle_name]) %></lyex:MiddleName><lyex:LastName><%= get_in(@input, [:input, :register_depositor, :last_name]) %></lyex:LastName><lyex:HomePhone><%= get_in(@input, [:input, :register_depositor, :home_phone]) %></lyex:HomePhone><lyex:FirstName><%= get_in(@input, [:input, :register_depositor, :first_name]) %></lyex:FirstName><lyex:FacilityCode><%= get_in(@input, [:input, :register_depositor, :facility_code]) %></lyex:FacilityCode><lyex:Email><%= get_in(@input, [:input, :register_depositor, :email]) %></lyex:Email><lyex:DepositAmount><%= get_in(@input, [:input, :register_depositor, :deposit_amount]) %></lyex:DepositAmount><lyex:DOB><%= get_in(@input, [:input, :register_depositor, :dob]) %></lyex:DOB><lyex:City><%= get_in(@input, [:input, :register_depositor, :city]) %></lyex:City><lyex:CellPhone><%= get_in(@input, [:input, :register_depositor, :cell_phone]) %></lyex:CellPhone><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :register_depositor, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :register_depositor, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :register_depositor, :password]) %></lyex:Password></lyex:Auth><lyex:AltEmail><%= get_in(@input, [:input, :register_depositor, :alt_email]) %></lyex:AltEmail><lyex:Address2><%= get_in(@input, [:input, :register_depositor, :address2]) %></lyex:Address2><lyex:Address1><%= get_in(@input, [:input, :register_depositor, :address1]) %></lyex:Address1></lyex:input></lyex:RegisterDepositor>          </lyex:RegisterDepositor>        </soap:Body>      </soap:Envelope>"
    }
  ]
}