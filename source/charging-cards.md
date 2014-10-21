---
title: Charging Cards
excerpt: This article will guide you of ways to charge a credit card
---
## Using a Token
The first step you have to do is to create a card token which you can choose between using Omise.js or other server library. After you have a token, the next step is to pass the token id together with charge information to your server.

```ruby
chargeResult = Omise::Charge.create({
  amount: 100025, #amount in smallest unit of a currency, e.g. 100025 Satangs, which equals to 1000.25 Baht
  currency: "thb", #currency which the charge will be created, case insensitive
  description: "Test creating a charge",
  return_uri: "http://localhost/charge_complete", #The uri which Omise gateway will redirect to after a successful charge
  capture: true, #true means auto capture the card, false for manual capture later
  card: card_token #card token you previously got from Omise.js or another library
})
```

## Using a Customer
You have 2 options to charge a customer's card, using a customer default card or using a specific card. Both options require existing customer. Learn more how to [manage the customers](./customers.html).
### Using a default card

#### Ruby
```ruby
chargeResult = Omise::Charge.create({
  amount: 100025,
  currency: "thb",
  description: "Test creating a charge",
  return_uri: "http://localhost/charge_complete",
  capture: true,
  customer: customer_id #Customer id that you've already created
})
```

#### C&#35;
```c#
var charge = new ChargeCreateInfo ();
charge.Amount = 10000;
charge.Currency = "thb";
charge.Description = "Test charge";
charge.ReturnUri = "http://localhost/charge/complete";
charge.Capture = true;
charge.CustomerId = customerId; //Customer id that you've already created

var chargeResult = client.ChargeService.CreateCharge(charge);
```


### Using a specific card
In order to charge a specific customer's card, you have to have the card created first. Learn how to [create a card](./cards.html#create).

#### Ruby
```ruby
chargeResult = Omise::Charge.create({
  amount: 100025, #amount in smallest unit of a currency, e.g. 100025 satangs, which equals to 1000.25 Baht
  currency: "thb", #currency which the charge will be created
  description: "Test creating a charge",
  return_uri: "http://localhost/charge_complete", #The Uri that Omise gateway will redirect to after a successful charge
  capture: true, #'true' means auto capture the card, 'false' for manual capture later
  customer: customer_id,
  card: card_id
})
```

#### C&#35;
```c#
var charge = new ChargeCreateInfo ();
charge.Amount = 10000;//100 THB,=> 10000 Satangs
charge.Currency = "THB";
charge.Description = "Test charge";
charge.ReturnUri = "http://localhost/charge/complete";
charge.Capture = true;
charge.CardId = cardId; //Card id
charge.CustomerId = customerId; //Customer id that you've already created

var chargeResult = client.ChargeService.CreateCharge(charge);
```
