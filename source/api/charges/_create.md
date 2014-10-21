## Create a charge

### Endpoint

```
POST https://api.omise.co/charges
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `return_uri`             | **(required)** The url where we will return the customer after the card has been authorized. |
| `amount`                 | **(required)** The amount in the smallest subunits of the currency used. So for `thb` (Thai Baht) you'll need to pass the amount in satangs. |
| `currency`               | *(optional)* The currency in which you want the charge to be done. The default and only valid value is `thb`. |
| `description`            | *(optional)* A custom description for the charge. This value can be searched for in your dashboard. |
| `ip`                     | *(optional)* The IP of the customer you're trying to charge. This will help detect fraudulent charge. |

### Curl

```sh
curl http://api.omise.co/charges \
  -X POST \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "amount=100000" \
  -d "currency=thb" \
  -d "description=Order-384"
```

### Ruby

```ruby
charge = Omise::Charge.create({
  return_uri: "https://example.co.th/orders/384/complete",
  amount: 100000,
  currency: "thb",
  description: "Order-384"
})
```

### JSON Object


