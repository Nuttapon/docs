var recipientInfo = new RecipientInfo();
recipientInfo.Id = "recp_test_4z6p7e0m4k40txecj5o";
recipientInfo.Name = "Test Recipient 1";
recipientInfo.Email = "test_recp@localhost";
recipientInfo.TaxId = "abc123456789";
recipientInfo.RecipientType = RecipientType.Corporation;
recipientInfo.Description = "Test recipient new description";

var recipient = client.RecipientService.UpdateRecipient(recipientInfo)
