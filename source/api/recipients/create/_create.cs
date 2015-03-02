var recipientInfo = new RecipientInfo();
recipientInfo.Name = "Test Recipient 1";
recipientInfo.Email = "test_recp@localhost";
recipientInfo.TaxId = "1234567890";
recipientInfo.RecipientType = RecipientType.Individual;
recipientInfo.Description = "Test recipient description";
recipientInfo.BankAccount = new BankAccountInfo(){
  Brand = "Test",
  BankAccountNumber = "ACC12345",
  BankAccountName = "Test Bank Account"
}

var recipient = client.RecipientService.CreateRecipient(recipientInfo);
