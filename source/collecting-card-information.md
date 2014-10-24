---
title: Collecting Card Information
excerpt: This article will help you build a form that will let you collect cards directly from a page on your website and tokenize them.
---

## Collecting Credit Card Information

Omise provides ways to collect cards information, with Omise.js client library, you can have your own HTML form running on the client browser and then pass the card information to the library, the library will send the card information to Omise server securely via SSL and you will get back a card token. This way your server doesn't have to deal with any sensitive card information. On the other hand, we also provide server side libraries in various programming languages (now ruby and .net). You can have your own form which posts card information to your server, the library will internally send the card information to secure token server and returns you a card token (doing this requires you to have PCI certified). Learn more about [ruby](./ruby-library.html) library or [.net](./dotnet-library.html) library integration.

| Step | Origin| Key |
|:--------------------|:-----------|:----|
| Using Omise.js, send us the cardholder data | User's browser | Public key |
| Our server responds with a single-use card token | Omise | |
| Use this token to take an action on the card. You can [charge the card](/charging-cards), [save the card on a new customer](customers) or [attach the card to an existing one](customers)| Your server | Secret key |

## Creating Tokens


### From Your Customer Browser

#### Javascript using Omise.js
```js
var card = documents.forms.card;
Omise.createToken("card", {
  "name": card.holder_name.value,
  "number": card.number.value,
  "expiration_month": card.expiration_month.value,
  "expiration_year": card.expiration_year.value,
  "security_code": card.security_code.value
}, function (statusCode, response) {
  if (response.object == "token") {
    // then send the token (response.id) to your server
    // ...
  } else {
    // an error occurred, display error message
    alert(response.code+": "+response.message);
  };
});
```
> Related articles: [Tokens reference](/api/tokens)

---
### From Your Server
<div class='Notice'>
<strong>Do not do this</strong>. If cardholder data is going through your server, then you are doing something wrong.
The only possible exceptions to this are: If you are PCI compliant or if you are playing around with fake test data.
</div>

#### Ruby
```ruby
token = Omise::Token.create({
  card[number]: "4242424242424242",
  card[name]: "test card",
  card[expiration_month]: 9,
  card[expiration_year]: 2017
})
```
#### C&#35;
```c#
var card = new CardCreateInfo ();
card.Name = "test card";
card.Number = "4242424242424242";
card.ExpirationMonth = 9;
card.ExpirationYear = 2017;

var token = new TokenInfo ();
token.Card = card;

var tokenResult = client.TokenService.CreateToken(token);
```



