var customerInfo = new CustomerInfo ();
customerInfo.Email = "john.doe@example.com";
customerInfo.Description = "John Doe (id: 30)";

var customerResult = client.CustomerService.CreateCustomer (customerInfo);
