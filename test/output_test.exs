defmodule OutputTest do
  use ExUnit.Case
  alias Lyex.Client.Output

  defstruct Result: [
              Text: nil,
              Code: nil
            ],
            MaxDepositAmount: nil,
            LastName: nil,
            FirstName: nil,
            FacilityName: nil,
            DOBYear: nil,
            DOBMonth: nil,
            DOBDay: nil

  test "parse out" do
    xml = ~s[<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
              <s:Body>
                <LookupRecipientResponse xmlns="http://www.keefecommissary.net/VendorPaymentService/v0101">
                  <LookupRecipientResult xmlns:a="http://schemas.datacontract.org/2004/07/PaymentServiceEngine" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
                    <a:DOBDay>0</a:DOBDay>
                    <a:DOBMonth>0</a:DOBMonth>
                    <a:DOBYear>0</a:DOBYear>
                    <a:FacilityName i:nil="true"/>
                    <a:FirstName i:nil="true"/>
                    <a:LastName i:nil="true"/>
                    <a:MaxDepositAmount>0</a:MaxDepositAmount>
                    <a:Result>
                      <a:Code>INVALID_DEPOSITOR</a:Code>
                      <a:Text>Could not find resident</a:Text>
                    </a:Result>
                  </LookupRecipientResult>
                </LookupRecipientResponse>
              </s:Body>
            </s:Envelope>]

    %OutputTest{
      DOBDay: "0",
      DOBMonth: "0",
      DOBYear: "0",
      FacilityName: nil,
      FirstName: nil,
      LastName: nil,
      MaxDepositAmount: "0",
      Result: %{Code: "INVALID_DEPOSITOR", Text: "Could not find resident"}
    } = Output.parse(xml, OutputTest)
  end
end
