var recipientUpdateInfo = new RecipientUpdateInfo(){
  Id = "recp_test_5086xmr74vxs0ajpo78",
  Email = "somchai@prasert.com",
  BankAccount = new BankAccountInfo(){
    Brand = "kbank",
    Number = "1234567890",
    Name = "SOMCHAI PRASERT"
  }
}

var recipient = client.RecipientService.UpdateRecipient(recipientUpdateInfo);
