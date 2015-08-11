var recipientInfo = new RecipientCreateInfo();
recipientInfo.Name = "Somchai Prasert";
recipientInfo.Email = "somchai.prasert@example.com";
recipientInfo.RecipientType = RecipientType.Individual;
recipientInfo.BankAccount = new BankAccountInfo()
{
  Brand = "bbl",
  Number = "1234567890",
  Name = "SOMCHAI PRASERT"
};

var recipient = client.RecipientService.CreateRecipient(recipientInfo);
