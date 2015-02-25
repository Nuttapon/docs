var charge = new ChargeCreateInfo ();

charge.Amount = 100000;
charge.Currency = "thb";
charge.CardId = "tokn_test_4xs9408a642a1htto8z";

var result = client.ChargeService.CreateCharge(charge);
