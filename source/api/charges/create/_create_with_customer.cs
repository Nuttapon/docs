var charge = new ChargeCreateInfo ();

charge.Amount = 100000;
charge.Currency = "thb";
charge.CustomerId = "cust_test_4xtrb759599jsxlhkrb";

var result = client.ChargeService.CreateCharge(charge);

