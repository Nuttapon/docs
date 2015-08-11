var card = new CardUpdateInfo ();
card.Id = "card_test_4xsjw0t21xaxnuzi9gs";
card.Name = "Somchai Praset";
card.ExpirationMonth = 11;
card.ExpirationYear = 2017;

var updateResult = client.CardService.UpdateCard ("cust_test_4xsjvylia03ur542vn6", card);
