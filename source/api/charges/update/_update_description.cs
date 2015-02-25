var chargeUpdateInfo = new ChargeUpdateInfo();
chargeUpdateInfo.Id = "chrg_test_4xso2s8ivdej29pqnhz";
chargeUpdateInfo.Description = "Another description";

var updateResult = client.ChargeService.UpdateCharge(chargeUpdateInfo);
