[def(register_depositor(%Keefe.RegisterDepositorInput{} = input)) do
  import(Lyex.Wsdl.Output, only: [read: 3])
  input = Keyword.get(binding(), :input)
  address = "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc"
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/RegisterDepositor"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  envelope = EEx.eval_string("<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:RegisterDepositor xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:RegisterDepositor><lyex:input><lyex:Zip><%= get_in(@input, [:input, :register_depositor, :zip]) %></lyex:Zip><lyex:WorkPhone><%= get_in(@input, [:input, :register_depositor, :work_phone]) %></lyex:WorkPhone><lyex:Username><%= get_in(@input, [:input, :register_depositor, :username]) %></lyex:Username><lyex:State><%= get_in(@input, [:input, :register_depositor, :state]) %></lyex:State><lyex:Password><%= get_in(@input, [:input, :register_depositor, :password]) %></lyex:Password><lyex:MiddleName><%= get_in(@input, [:input, :register_depositor, :middle_name]) %></lyex:MiddleName><lyex:LastName><%= get_in(@input, [:input, :register_depositor, :last_name]) %></lyex:LastName><lyex:HomePhone><%= get_in(@input, [:input, :register_depositor, :home_phone]) %></lyex:HomePhone><lyex:FirstName><%= get_in(@input, [:input, :register_depositor, :first_name]) %></lyex:FirstName><lyex:FacilityCode><%= get_in(@input, [:input, :register_depositor, :facility_code]) %></lyex:FacilityCode><lyex:Email><%= get_in(@input, [:input, :register_depositor, :email]) %></lyex:Email><lyex:DepositAmount><%= get_in(@input, [:input, :register_depositor, :deposit_amount]) %></lyex:DepositAmount><lyex:DOB><%= get_in(@input, [:input, :register_depositor, :dob]) %></lyex:DOB><lyex:City><%= get_in(@input, [:input, :register_depositor, :city]) %></lyex:City><lyex:CellPhone><%= get_in(@input, [:input, :register_depositor, :cell_phone]) %></lyex:CellPhone><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :register_depositor, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :register_depositor, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :register_depositor, :password]) %></lyex:Password></lyex:Auth><lyex:AltEmail><%= get_in(@input, [:input, :register_depositor, :alt_email]) %></lyex:AltEmail><lyex:Address2><%= get_in(@input, [:input, :register_depositor, :address2]) %></lyex:Address2><lyex:Address1><%= get_in(@input, [:input, :register_depositor, :address1]) %></lyex:Address1></lyex:input></lyex:RegisterDepositor>          </lyex:RegisterDepositor>        </soap:Body>      </soap:Envelope>", assigns: [input: input])
  with({:ok, %{body: body}} <- HTTPoison.post(address, envelope, headers)) do
    read(body, "IVendorPaymentSvc_RegisterDepositor_OutputMessage", Keefe.RegisterDepositorOutput)
  end
end, def(pre_validate_deposit(%Keefe.PreValidateDepositInput{} = input)) do
  import(Lyex.Wsdl.Output, only: [read: 3])
  input = Keyword.get(binding(), :input)
  address = "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc"
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PreValidateDeposit"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  envelope = EEx.eval_string("<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:PreValidateDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:PreValidateDeposit><lyex:input><lyex:ResidentNumber><%= get_in(@input, [:input, :pre_validate_deposit, :resident_number]) %></lyex:ResidentNumber><lyex:FacilityCode><%= get_in(@input, [:input, :pre_validate_deposit, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :pre_validate_deposit, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :pre_validate_deposit, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :pre_validate_deposit, :password]) %></lyex:Password></lyex:Auth><lyex:Amount><%= get_in(@input, [:input, :pre_validate_deposit, :amount]) %></lyex:Amount><lyex:AccountNumber><%= get_in(@input, [:input, :pre_validate_deposit, :account_number]) %></lyex:AccountNumber></lyex:input></lyex:PreValidateDeposit>          </lyex:PreValidateDeposit>        </soap:Body>      </soap:Envelope>", assigns: [input: input])
  with({:ok, %{body: body}} <- HTTPoison.post(address, envelope, headers)) do
    read(body, "IVendorPaymentSvc_PreValidateDeposit_OutputMessage", Keefe.PreValidateDepositOutput)
  end
end, def(post_deposit(%Keefe.PostDepositInput{} = input)) do
  import(Lyex.Wsdl.Output, only: [read: 3])
  input = Keyword.get(binding(), :input)
  address = "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc"
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/PostDeposit"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  envelope = EEx.eval_string("<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:PostDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:PostDeposit><lyex:input><lyex:VendorTransId><%= get_in(@input, [:input, :post_deposit, :vendor_trans_id]) %></lyex:VendorTransId><lyex:SurchargeFee><%= get_in(@input, [:input, :post_deposit, :surcharge_fee]) %></lyex:SurchargeFee><lyex:ServiceFee><%= get_in(@input, [:input, :post_deposit, :service_fee]) %></lyex:ServiceFee><lyex:ResidentNumber><%= get_in(@input, [:input, :post_deposit, :resident_number]) %></lyex:ResidentNumber><lyex:PurposeCode><%= get_in(@input, [:input, :post_deposit, :purpose_code]) %></lyex:PurposeCode><lyex:KeefeTransId><%= get_in(@input, [:input, :post_deposit, :keefe_trans_id]) %></lyex:KeefeTransId><lyex:FacilityCode><%= get_in(@input, [:input, :post_deposit, :facility_code]) %></lyex:FacilityCode><lyex:DepositorSSN><%= get_in(@input, [:input, :post_deposit, :depositor_ssn]) %></lyex:DepositorSSN><lyex:DepositAmount><%= get_in(@input, [:input, :post_deposit, :deposit_amount]) %></lyex:DepositAmount><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :post_deposit, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :post_deposit, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :post_deposit, :password]) %></lyex:Password></lyex:Auth><lyex:AmountCollected><%= get_in(@input, [:input, :post_deposit, :amount_collected]) %></lyex:AmountCollected><lyex:AccountNumber><%= get_in(@input, [:input, :post_deposit, :account_number]) %></lyex:AccountNumber></lyex:input></lyex:PostDeposit>          </lyex:PostDeposit>        </soap:Body>      </soap:Envelope>", assigns: [input: input])
  with({:ok, %{body: body}} <- HTTPoison.post(address, envelope, headers)) do
    read(body, "IVendorPaymentSvc_PostDeposit_OutputMessage", Keefe.PostDepositOutput)
  end
end, def(lookup_recipient(%Keefe.LookupRecipientInput{} = input)) do
  import(Lyex.Wsdl.Output, only: [read: 3])
  input = Keyword.get(binding(), :input)
  address = "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc"
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/LookupRecipient"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  envelope = EEx.eval_string("<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:LookupRecipient xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:LookupRecipient><lyex:input><lyex:RecipientNumber><%= get_in(@input, [:input, :lookup_recipient, :recipient_number]) %></lyex:RecipientNumber><lyex:FacilityCode><%= get_in(@input, [:input, :lookup_recipient, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :lookup_recipient, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :lookup_recipient, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :lookup_recipient, :password]) %></lyex:Password></lyex:Auth></lyex:input></lyex:LookupRecipient>          </lyex:LookupRecipient>        </soap:Body>      </soap:Envelope>", assigns: [input: input])
  with({:ok, %{body: body}} <- HTTPoison.post(address, envelope, headers)) do
    read(body, "IVendorPaymentSvc_LookupRecipient_OutputMessage", Keefe.LookupRecipientOutput)
  end
end, def(void_deposit(%Keefe.VoidDepositInput{} = input)) do
  import(Lyex.Wsdl.Output, only: [read: 3])
  input = Keyword.get(binding(), :input)
  address = "https://services.keefegp.com/VendorPayment/VendorPaymentSvc.svc"
  headers = [{"Content-Type", "text/xml; charset=utf-8"}, {"SOAPAction", "http://www.keefecommissary.net/VendorPaymentService/v0101/IVendorPaymentSvc/VoidDeposit"}, {"User-Agent", "Lyex/0.1.0"}, {"SOAP_Version", "1.1"}]
  envelope = EEx.eval_string("<soap:Envelope xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'>        <soap:Header>        <soap:Body>          <lyex:VoidDeposit xmlns:lyex='http://www.keefecommissary.net/VendorPaymentService/v0101'>            <lyex:VoidDeposit><lyex:input><lyex:VendorTransId><%= get_in(@input, [:input, :void_deposit, :vendor_trans_id]) %></lyex:VendorTransId><lyex:ResidentNumber><%= get_in(@input, [:input, :void_deposit, :resident_number]) %></lyex:ResidentNumber><lyex:KeefeTransId><%= get_in(@input, [:input, :void_deposit, :keefe_trans_id]) %></lyex:KeefeTransId><lyex:FacilityCode><%= get_in(@input, [:input, :void_deposit, :facility_code]) %></lyex:FacilityCode><lyex:Auth><lyex:VendorCode><%= get_in(@input, [:auth, :input, :void_deposit, :vendor_code]) %></lyex:VendorCode><lyex:UserId><%= get_in(@input, [:auth, :input, :void_deposit, :user_id]) %></lyex:UserId><lyex:Password><%= get_in(@input, [:auth, :input, :void_deposit, :password]) %></lyex:Password></lyex:Auth><lyex:AccountNumber><%= get_in(@input, [:input, :void_deposit, :account_number]) %></lyex:AccountNumber></lyex:input></lyex:VoidDeposit>          </lyex:VoidDeposit>        </soap:Body>      </soap:Envelope>", assigns: [input: input])
  with({:ok, %{body: body}} <- HTTPoison.post(address, envelope, headers)) do
    read(body, "IVendorPaymentSvc_VoidDeposit_OutputMessage", Keefe.VoidDepositOutput)
  end
end]