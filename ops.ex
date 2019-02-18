%Lyex.Wsdl{
  bindings: %{
    "BasicHttpBinding_IVendorPaymentSvc" => %Lyex.Wsdl.Binding{
      name: "BasicHttpBinding_IVendorPaymentSvc",
      operations: %{
        "LookupRecipient" => %Lyex.Wsdl.Binding.Operation{
          action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/LookupRecipient",
          input: %{},
          name: "LookupRecipient",
          output: %{}
        },
        "PostDeposit" => %Lyex.Wsdl.Binding.Operation{
          action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PostDeposit",
          input: %{},
          name: "PostDeposit",
          output: %{}
        },
        "PreValidateDeposit" => %Lyex.Wsdl.Binding.Operation{
          action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PreValidateDeposit",
          input: %{},
          name: "PreValidateDeposit",
          output: %{}
        },
        "RegisterDepositor" => %Lyex.Wsdl.Binding.Operation{
          action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/RegisterDepositor",
          input: %{},
          name: "RegisterDepositor",
          output: %{}
        },
        "VoidDeposit" => %Lyex.Wsdl.Binding.Operation{
          action: "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/VoidDeposit",
          input: %{},
          name: "VoidDeposit",
          output: %{}
        }
      },
      style: nil,
      transport: "http://schemas.xmlsoap.org/soap/http",
      type: "i0:IVendorPaymentSvc"
    }
  },
  documentation: nil,
  files_read: ["https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?xsd=xsd2",
   "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?xsd=xsd0",
   "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?xsd=xsd1",
   "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?xsd=xsd2",
   "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl=wsdl0",
   "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc?wsdl"],
  messages: %{
    "IVendorPaymentSvc_LookupRecipient_InputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_LookupRecipient_InputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:LookupRecipient",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_LookupRecipient_OutputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_LookupRecipient_OutputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:LookupRecipientResponse",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_PostDeposit_InputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_PostDeposit_InputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:PostDeposit",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_PostDeposit_OutputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_PostDeposit_OutputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:PostDepositResponse",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_PreValidateDeposit_InputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_PreValidateDeposit_InputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:PreValidateDeposit",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_PreValidateDeposit_OutputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_PreValidateDeposit_OutputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:PreValidateDepositResponse",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_RegisterDepositor_InputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_RegisterDepositor_InputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:RegisterDepositor",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_RegisterDepositor_OutputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_RegisterDepositor_OutputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:RegisterDepositorResponse",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_VoidDeposit_InputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_VoidDeposit_InputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:VoidDeposit",
        name: "parameters"
      }
    },
    "IVendorPaymentSvc_VoidDeposit_OutputMessage" => %Lyex.Wsdl.Message{
      name: "IVendorPaymentSvc_VoidDeposit_OutputMessage",
      part: %Lyex.Wsdl.Message.Part{
        element: "tns:VoidDepositResponse",
        name: "parameters"
      }
    }
  },
  namespaces: %{
    "i0" => "http://www.keefecommissary.net/VendorPaymentService/v0101",
    "msc" => "http://schemas.microsoft.com/ws/2005/12/wsdl/contract",
    "soap" => "http://schemas.xmlsoap.org/wsdl/soap/",
    "soap12" => "http://schemas.xmlsoap.org/wsdl/soap12/",
    "soapenc" => "http://schemas.xmlsoap.org/soap/encoding/",
    "sp" => "http://schemas.xmlsoap.org/ws/2005/07/securitypolicy",
    "tns" => "http://tempuri.org/",
    "wsa" => "http://schemas.xmlsoap.org/ws/2004/08/addressing",
    "wsa10" => "http://www.w3.org/2005/08/addressing",
    "wsam" => "http://www.w3.org/2007/05/addressing/metadata",
    "wsap" => "http://schemas.xmlsoap.org/ws/2004/08/addressing/policy",
    "wsaw" => "http://www.w3.org/2006/05/addressing/wsdl",
    "wsdl" => "http://schemas.xmlsoap.org/wsdl/",
    "wsp" => "http://schemas.xmlsoap.org/ws/2004/09/policy",
    "wsu" => "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd",
    "wsx" => "http://schemas.xmlsoap.org/ws/2004/09/mex",
    "xs" => "http://www.w3.org/2001/XMLSchema",
    "xsd" => "http://www.w3.org/2001/XMLSchema"
  },
  port_types: %{
    "IVendorPaymentSvc" => %Lyex.Wsdl.PortType{
      name: "IVendorPaymentSvc",
      operations: %{
        "LookupRecipient" => %Lyex.Wsdl.PortType.Operation{
          documentation: nil,
          input: "tns:IVendorPaymentSvc_LookupRecipient_InputMessage",
          name: "LookupRecipient",
          output: "tns:IVendorPaymentSvc_LookupRecipient_OutputMessage"
        },
        "PostDeposit" => %Lyex.Wsdl.PortType.Operation{
          documentation: nil,
          input: "tns:IVendorPaymentSvc_PostDeposit_InputMessage",
          name: "PostDeposit",
          output: "tns:IVendorPaymentSvc_PostDeposit_OutputMessage"
        },
        "PreValidateDeposit" => %Lyex.Wsdl.PortType.Operation{
          documentation: nil,
          input: "tns:IVendorPaymentSvc_PreValidateDeposit_InputMessage",
          name: "PreValidateDeposit",
          output: "tns:IVendorPaymentSvc_PreValidateDeposit_OutputMessage"
        },
        "RegisterDepositor" => %Lyex.Wsdl.PortType.Operation{
          documentation: nil,
          input: "tns:IVendorPaymentSvc_RegisterDepositor_InputMessage",
          name: "RegisterDepositor",
          output: "tns:IVendorPaymentSvc_RegisterDepositor_OutputMessage"
        },
        "VoidDeposit" => %Lyex.Wsdl.PortType.Operation{
          documentation: nil,
          input: "tns:IVendorPaymentSvc_VoidDeposit_InputMessage",
          name: "VoidDeposit",
          output: "tns:IVendorPaymentSvc_VoidDeposit_OutputMessage"
        }
      }
    }
  },
  schemas: %{
    "http://schemas.datacontract.org/2004/07/PaymentServiceEngine" => %Lyex.Wsdl.Schema{
      complex_types: %{
        "Authentication" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "VendorCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "UserId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Password",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "Authentication",
          restriction: nil
        },
        "LookupRecipientInput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "RecipientNumber",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Auth",
              nillable: true,
              type: "tns:Authentication"
            }
          ],
          name: "LookupRecipientInput",
          restriction: nil
        },
        "LookupRecipientOutput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Result",
              nillable: true,
              type: "tns:ResultInfo"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "MaxDepositAmount",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "LastName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FirstName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOBYear",
              nillable: false,
              type: "xs:int"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOBMonth",
              nillable: false,
              type: "xs:int"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOBDay",
              nillable: false,
              type: "xs:int"
            }
          ],
          name: "LookupRecipientOutput",
          restriction: nil
        },
        "PostDepositInput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "VendorTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "SurchargeFee",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "ServiceFee",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "ResidentNumber",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "PurposeCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "KeefeTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DepositorSSN",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DepositAmount",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Auth",
              nillable: true,
              type: "tns:Authentication"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "AmountCollected",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "AccountNumber",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "PostDepositInput",
          restriction: nil
        },
        "PostDepositOutput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "VendorTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Result",
              nillable: true,
              type: "tns:ResultInfo"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "LastName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "KeefeTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FirstName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityName",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "PostDepositOutput",
          restriction: nil
        },
        "PreValidateDepositInput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "ResidentNumber",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Auth",
              nillable: true,
              type: "tns:Authentication"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Amount",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "AccountNumber",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "PreValidateDepositInput",
          restriction: nil
        },
        "PreValidateDepositOutput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Result",
              nillable: true,
              type: "tns:ResultInfo"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "MaxDepositAmount",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "LastName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "KeefeTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FirstName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOBYear",
              nillable: false,
              type: "xs:int"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOBMonth",
              nillable: false,
              type: "xs:int"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOBDay",
              nillable: false,
              type: "xs:int"
            }
          ],
          name: "PreValidateDepositOutput",
          restriction: nil
        },
        "RegisterDepositorInput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Zip",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "WorkPhone",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Username",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "State",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Password",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "MiddleName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "LastName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "HomePhone",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FirstName",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Email",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DepositAmount",
              nillable: false,
              type: "xs:decimal"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "DOB",
              nillable: false,
              type: "xs:dateTime"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "City",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "CellPhone",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Auth",
              nillable: true,
              type: "tns:Authentication"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "AltEmail",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Address2",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Address1",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "RegisterDepositorInput",
          restriction: nil
        },
        "RegisterDepositorOutput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Result",
              nillable: true,
              type: "tns:ResultInfo"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "AccountNumber",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "RegisterDepositorOutput",
          restriction: nil
        },
        "ResultInfo" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Text",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Code",
              nillable: false,
              type: "tns:ResultCode"
            }
          ],
          name: "ResultInfo",
          restriction: nil
        },
        "VoidDepositInput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "VendorTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "ResidentNumber",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "KeefeTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityCode",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Auth",
              nillable: true,
              type: "tns:Authentication"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "AccountNumber",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "VoidDepositInput",
          restriction: nil
        },
        "VoidDepositOutput" => %Lyex.Wsdl.Schema.ComplexType{
          documentation: nil,
          elements: [
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "VendorTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "Result",
              nillable: true,
              type: "tns:ResultInfo"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "KeefeTransId",
              nillable: true,
              type: "xs:string"
            },
            %Lyex.Wsdl.Schema.Element{
              default: nil,
              documentation: nil,
              fixed: nil,
              maxOccurs: nil,
              minOccurs: 0,
              name: "FacilityName",
              nillable: true,
              type: "xs:string"
            }
          ],
          name: "VoidDepositOutput",
          restriction: nil
        }
      },
      elements: %{
        "Authentication" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "Authentication",
          nillable: true,
          type: "tns:Authentication"
        },
        "LookupRecipientInput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "LookupRecipientInput",
          nillable: true,
          type: "tns:LookupRecipientInput"
        },
        "LookupRecipientOutput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "LookupRecipientOutput",
          nillable: true,
          type: "tns:LookupRecipientOutput"
        },
        "PostDepositInput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PostDepositInput",
          nillable: true,
          type: "tns:PostDepositInput"
        },
        "PostDepositOutput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PostDepositOutput",
          nillable: true,
          type: "tns:PostDepositOutput"
        },
        "PreValidateDepositInput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PreValidateDepositInput",
          nillable: true,
          type: "tns:PreValidateDepositInput"
        },
        "PreValidateDepositOutput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PreValidateDepositOutput",
          nillable: true,
          type: "tns:PreValidateDepositOutput"
        },
        "RegisterDepositorInput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "RegisterDepositorInput",
          nillable: true,
          type: "tns:RegisterDepositorInput"
        },
        "RegisterDepositorOutput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "RegisterDepositorOutput",
          nillable: true,
          type: "tns:RegisterDepositorOutput"
        },
        "ResultCode" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "ResultCode",
          nillable: true,
          type: "tns:ResultCode"
        },
        "ResultInfo" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "ResultInfo",
          nillable: true,
          type: "tns:ResultInfo"
        },
        "VoidDepositInput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "VoidDepositInput",
          nillable: true,
          type: "tns:VoidDepositInput"
        },
        "VoidDepositOutput" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "VoidDepositOutput",
          nillable: true,
          type: "tns:VoidDepositOutput"
        }
      },
      simple_types: %{
        "ResultCode" => %Lyex.Wsdl.Schema.SimpleType{
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
              %Lyex.Wsdl.Schema.Restriction.Enumeration{value: "SYSTEM_ERROR"},
              %Lyex.Wsdl.Schema.Restriction.Enumeration{value: "SUCCESS"}
            ]
          }
        }
      },
      target_namespace: "http://schemas.datacontract.org/2004/07/PaymentServiceEngine"
    },
    "http://schemas.microsoft.com/2003/10/Serialization/" => %Lyex.Wsdl.Schema{
      complex_types: %{},
      elements: %{
        "QName" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "QName",
          nillable: true,
          type: "xs:QName"
        },
        "anyType" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "anyType",
          nillable: true,
          type: "xs:anyType"
        },
        "anyURI" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "anyURI",
          nillable: true,
          type: "xs:anyURI"
        },
        "base64Binary" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "base64Binary",
          nillable: true,
          type: "xs:base64Binary"
        },
        "boolean" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "boolean",
          nillable: true,
          type: "xs:boolean"
        },
        "byte" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "byte",
          nillable: true,
          type: "xs:byte"
        },
        "char" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "char",
          nillable: true,
          type: "tns:char"
        },
        "dateTime" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "dateTime",
          nillable: true,
          type: "xs:dateTime"
        },
        "decimal" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "decimal",
          nillable: true,
          type: "xs:decimal"
        },
        "double" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "double",
          nillable: true,
          type: "xs:double"
        },
        "duration" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "duration",
          nillable: true,
          type: "tns:duration"
        },
        "float" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "float",
          nillable: true,
          type: "xs:float"
        },
        "guid" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "guid",
          nillable: true,
          type: "tns:guid"
        },
        "int" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "int",
          nillable: true,
          type: "xs:int"
        },
        "long" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "long",
          nillable: true,
          type: "xs:long"
        },
        "short" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "short",
          nillable: true,
          type: "xs:short"
        },
        "string" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "string",
          nillable: true,
          type: "xs:string"
        },
        "unsignedByte" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "unsignedByte",
          nillable: true,
          type: "xs:unsignedByte"
        },
        "unsignedInt" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "unsignedInt",
          nillable: true,
          type: "xs:unsignedInt"
        },
        "unsignedLong" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "unsignedLong",
          nillable: true,
          type: "xs:unsignedLong"
        },
        "unsignedShort" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "unsignedShort",
          nillable: true,
          type: "xs:unsignedShort"
        }
      },
      simple_types: %{
        "char" => %Lyex.Wsdl.Schema.SimpleType{
          documentation: nil,
          name: "char",
          restriction: %Lyex.Wsdl.Schema.Restriction{
            base: "xs:int",
            constraints: []
          }
        },
        "duration" => %Lyex.Wsdl.Schema.SimpleType{
          documentation: nil,
          name: "duration",
          restriction: %Lyex.Wsdl.Schema.Restriction{
            base: "xs:duration",
            constraints: [
              %Lyex.Wsdl.Schema.Restriction.MaxInclusive{
                value: "P10675199DT2H48M5.4775807S"
              },
              %Lyex.Wsdl.Schema.Restriction.MinInclusive{
                value: "-P10675199DT2H48M5.4775808S"
              },
              %Lyex.Wsdl.Schema.Restriction.Pattern{
                value: "\\-?P(\\d*D)?(T(\\d*H)?(\\d*M)?(\\d*(\\.\\d*)?S)?)?"
              }
            ]
          }
        },
        "guid" => %Lyex.Wsdl.Schema.SimpleType{
          documentation: nil,
          name: "guid",
          restriction: %Lyex.Wsdl.Schema.Restriction{
            base: "xs:string",
            constraints: [
              %Lyex.Wsdl.Schema.Restriction.Pattern{
                value: "[\\da-fA-F]{8}-[\\da-fA-F]{4}-[\\da-fA-F]{4}-[\\da-fA-F]{4}-[\\da-fA-F]{12}"
              }
            ]
          }
        }
      },
      target_namespace: "http://schemas.microsoft.com/2003/10/Serialization/"
    },
    "http://www.keefecommissary.net/VendorPaymentService/v0101" => %Lyex.Wsdl.Schema{
      complex_types: %{},
      elements: %{
        "LookupRecipient" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "LookupRecipient",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "input",
                nillable: true,
                type: "q7:LookupRecipientInput"
              }
            ],
            name: "LookupRecipient",
            restriction: nil
          }
        },
        "LookupRecipientResponse" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "LookupRecipientResponse",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "LookupRecipientResult",
                nillable: true,
                type: "q8:LookupRecipientOutput"
              }
            ],
            name: "LookupRecipientResponse",
            restriction: nil
          }
        },
        "PostDeposit" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PostDeposit",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "input",
                nillable: true,
                type: "q5:PostDepositInput"
              }
            ],
            name: "PostDeposit",
            restriction: nil
          }
        },
        "PostDepositResponse" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PostDepositResponse",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "PostDepositResult",
                nillable: true,
                type: "q6:PostDepositOutput"
              }
            ],
            name: "PostDepositResponse",
            restriction: nil
          }
        },
        "PreValidateDeposit" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PreValidateDeposit",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "input",
                nillable: true,
                type: "q3:PreValidateDepositInput"
              }
            ],
            name: "PreValidateDeposit",
            restriction: nil
          }
        },
        "PreValidateDepositResponse" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "PreValidateDepositResponse",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "PreValidateDepositResult",
                nillable: true,
                type: "q4:PreValidateDepositOutput"
              }
            ],
            name: "PreValidateDepositResponse",
            restriction: nil
          }
        },
        "RegisterDepositor" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "RegisterDepositor",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "input",
                nillable: true,
                type: "q1:RegisterDepositorInput"
              }
            ],
            name: "RegisterDepositor",
            restriction: nil
          }
        },
        "RegisterDepositorResponse" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "RegisterDepositorResponse",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "RegisterDepositorResult",
                nillable: true,
                type: "q2:RegisterDepositorOutput"
              }
            ],
            name: "RegisterDepositorResponse",
            restriction: nil
          }
        },
        "VoidDeposit" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "VoidDeposit",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "input",
                nillable: true,
                type: "q9:VoidDepositInput"
              }
            ],
            name: "VoidDeposit",
            restriction: nil
          }
        },
        "VoidDepositResponse" => %Lyex.Wsdl.Schema.Element{
          default: nil,
          documentation: nil,
          fixed: nil,
          maxOccurs: nil,
          minOccurs: nil,
          name: "VoidDepositResponse",
          nillable: false,
          type: %Lyex.Wsdl.Schema.ComplexType{
            documentation: nil,
            elements: [
              %Lyex.Wsdl.Schema.Element{
                default: nil,
                documentation: nil,
                fixed: nil,
                maxOccurs: nil,
                minOccurs: 0,
                name: "VoidDepositResult",
                nillable: true,
                type: "q10:VoidDepositOutput"
              }
            ],
            name: "VoidDepositResponse",
            restriction: nil
          }
        }
      },
      simple_types: %{},
      target_namespace: "http://www.keefecommissary.net/VendorPaymentService/v0101"
    },
    "http://www.keefecommissary.net/VendorPaymentService/v0101/Imports" => %Lyex.Wsdl.Schema{
      complex_types: %{},
      elements: %{},
      simple_types: %{},
      target_namespace: "http://www.keefecommissary.net/VendorPaymentService/v0101/Imports"
    }
  },
  service: %{
    "VendorPaymentSvc" => %Lyex.Wsdl.Service{
      name: "VendorPaymentSvc",
      ports: %{
        "BasicHttpBinding_IVendorPaymentSvc" => %Lyex.Wsdl.Service.Port{
          address: "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc",
          binding: "tns:BasicHttpBinding_IVendorPaymentSvc",
          name: "BasicHttpBinding_IVendorPaymentSvc"
        }
      }
    }
  },
  target_namespace: "http://www.keefecommissary.net/VendorPaymentService/v0101"
}