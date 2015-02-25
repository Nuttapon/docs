var customerUpdateInfo = new CustomerInfo ();
customerUpdateInfo.Id = "cust_test_4xtrb759599jsxlhkrb";
customerUpdateInfo.Email = "john.smith@example.com";
customerUpdateInfo.Description = "Another description";

var updateResult = client.CustomerService.UpdateCustomer(customerUpdateInfo);
