---
title: Charging Cards
excerpt: This article will guide you of ways to charge a credit card
---

## Using a Token

The first step was to [create a card token](collecting-card-information) 

```ruby
chargeResult = Omise::Charge.create({
  amount: 100025,
  currency: "thb",
  description: "Test creating a charge",
  return_uri: "http://localhost/charge_complete",
  capture: true,
  card: card_token
})
```

> Related articles: [Creating a token](collecting-card-information), [tokens reference](/api/tokens)

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
  customer: customer_id
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
charge.CustomerId = customerId;

var chargeResult = client.ChargeService.CreateCharge(charge);
```


### Using a specific card
In order to charge a specific customer's card, you have to have the card created first. Learn how to [create a card](./cards.html#create).

#### Ruby
```ruby
chargeResult = Omise::Charge.create({
  amount: 100025,
  currency: "thb",
  description: "Test creating a charge",
  return_uri: "http://localhost/charge_complete",
  capture: true,
  customer: customer_id,
  card: card_id
})
```

#### C&#35;
```c#
var charge = new ChargeCreateInfo ();
charge.Amount = 10000;
charge.Currency = "THB";
charge.Description = "Test charge";
charge.ReturnUri = "http://localhost/charge/complete";
charge.Capture = true;
charge.CardId = cardId;
charge.CustomerId = customerId;

var chargeResult = client.ChargeService.CreateCharge(charge);
```
