<% 
	
	set crypt = Server.CreateObject("paytm.CheckSum") 
  	
	json= "{'MID':'mid value','ORDER_ID':'ORD1234','CUST_ID':'cust123','TXN_AMOUNT':'10','CHANNEL_ID':'WEB','INDUSTRY_TYPE_ID':'Retail','WEBSITE':'worldpressplg'}"
	checksum=crypt.generateCheckSum("merchant key",json)	

        res=crypt.verifyCheckSum("merchant key", "{'MID':'mid value','ORDERID':'32109259','TXNAMOUNT':'10','CURRENCY':'INR','TXNID':'txn id value','BANKTXNID':'bank txn id','STATUS':'TXN_SUCCESS','RESPCODE':'01','RESPMSG':'Txn Successful.','TXNDATE':'2015-01-03 14:53:32.0','GATEWAYNAME':'WALLET','BANKNAME':'','PAYMENTMODE':'PPI'}", "CHECKSUMHASH value")

	response.write(res)
	if res =true then
		response.write("Valid")
	else
		response.write("Invalid")
	end if

%> 
