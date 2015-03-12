var card = new CardCreateInfo ();
card.Name = "Somchai Prasert";
card.Number = "4242424242424242";
card.ExpirationMonth = 10;
card.ExpirationYear = 2018;
card.City = "Bangkok";
card.PostalCode = "10320";
card.SecurityCode = "123";

var token = new TokenInfo ();
token.Card = card;

var resultToken = client.TokenService.CreateToken (token);
