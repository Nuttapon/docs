var charge = new ChargeCreateInfo ();

charge.Amount = 100000;
charge.Currency = "thb";
charge.CustomerId = "cust_test_4xtrb759599jsxlhkrb";
charge.CardId = "card_test_4xtsoy2nbfs7ujngyyq";

var result = client.ChargeService.CreateCharge(charge);
