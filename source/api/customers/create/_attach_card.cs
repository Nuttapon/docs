var customerInfo = new CustomerInfo ();
customerInfo.Email = "john.doe@example.com";
customerInfo.Description = "John Doe (id: 30)";
customerInfo.CardId = "tokn_test_4xs9408a642a1htto8z"

var customerResult = client.CustomerService.CreateCustomer (customerInfo);
