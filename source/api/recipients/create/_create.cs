var recipientInfo = new RecipientInfo();
recipientInfo.Name = "James Smith";
recipientInfo.Email = "test_recp123@localhost";
recipientInfo.TaxId = "1234567890";
recipientInfo.RecipientType = RecipientType.Individual;
recipientInfo.Description = "My first other recipient";
recipientInfo.BankAccount = new BankAccountInfo(){
  Brand = "Test",
  BankAccountNumber = "acc12345",
  BankAccountName = "James Smith"
}

var recipient = client.RecipientService.CreateRecipient(recipientInfo);
