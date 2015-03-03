var recipientInfo = new RecipientInfo();
recipientInfo.Id = "recp_test_4z6p7e0m4k40txecj5o";
recipientInfo.Name = "John Smith";
recipientInfo.Email = "john.smith@example.com";
recipientInfo.BankAccount = new BankAccountInfo(){
  BankAccountNumber = "acc123456789"
}

var recipient = client.RecipientService.UpdateRecipient(recipientInfo)
