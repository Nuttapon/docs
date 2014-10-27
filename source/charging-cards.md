---
title: Charging Cards
excerpt: This article will highlight how you can charge a credit card
---

All the examples below requires that you first [collect your customer card information](/collecting-card-information) in a token. **All tokens are one time use** so you must choose wisely between charging the card directly or if you need to associate that card to a customer for future use.

The main advantage of attaching a card to a customer is that it will let you charge their card more than once. Recurring customers can benefit from not having to type their card details again for every purchase.

## Charging the Card Directly

This is the easiest way to charge a card. Once you receive a card token, you send it to our [charges API](/api/charges/) with the amount you want to charge. Within a few seconds the card will have been charged.

Note that the token will be void once it has been used; you won't be able to charge the card or create a customer with it anymore.

Here's an example using the [omise ruby](https://github.com/omise/omise-ruby) library:

```ruby
charge = Omise::Charge.create({
  amount: 100025,
  currency: "thb",
  description: "Order-345678",
  return_uri: "http://localhost/orders/345678/complete",
  card: params[:omise_token]
})
```

## Charging the Customer Default Card


## Charging a Specific Customer's Card







## Using a Customer

You have 2 options to charge a customer's card: either using a customer default card or using a specific card. Both options require an existing customer. Learn how to [manage customers](./customers.html).
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
In order to charge a specific customer's card, you have to know the card ID. Learn how to [create a card](./cards.html#create).

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
