## Create a charge

### Endpoint

```
POST https://api.omise.co/charges
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `customer`               | **(required)** A valid `CUSTOMER_ID` that has at least one card already associated. By default the default card of the customer will be used if no card parameter is present. You can use this field in combination with the card parameter below if you want to charge a specific customer card by passing the `CARD_ID` (not a `TOKEN_ID`). |
| `card`                   | **(required)** A valid unused `TOKEN_ID` or `CARD_ID`. In the case of the `CARD_ID` the customer parameter must be present and be the actual owner of the card. For the `TOKEN_ID`, the customer must not be passed. |
| `return_uri`             | **(required)** The url where we will return the customer after the card has been authorized. |
| `amount`                 | **(required)** The amount in the smallest subunits of the currency used. So for `thb` (Thai Baht) you'll need to pass the amount in satangs. |
| `currency`               | *(optional)* The currency in which you want the charge to be done. The default and only valid value is `thb`. |
| `capture`                 | *(optional)* Whether or not you want the charge to be capture right away. |
| `description`            | *(optional)* A custom description for the charge. This value can be searched for in your dashboard. |
| `ip`                     | *(optional)* The IP of the customer you're trying to charge. This will help detect fraudulent charge. |

### Curl

```sh
curl https://api.omise.co/charges \
  -X POST \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "amount=100000" \
  -d "currency=thb" \
  -d "description=Order-384" \
  -d "ip=127.0.0.1" \
  -d "card=tokn_test_4xs9408a642a1htto8z"
```

### Ruby

```ruby
charge = Omise::Charge.create({
  return_uri: "https://example.co.th/orders/384/complete",
  amount: 100000,
  currency: "thb",
  description: "Order-384",
  ip: "127.0.0.1",
  card: "tokn_test_4xs9408a642a1htto8z"
})
```

### JSON Response

```json
{
  "object": "charge",
  "id": "chrg_test_4xso2s8ivdej29pqnhz",
  "livemode": false,
  "location": "/charges/chrg_test_4xso2s8ivdej29pqnhz",
  "amount": 100000,
  "currency": "thb",
  "description": "Order-384",
  "capture": true,
  "authorized": false,
  "captured": false,
  "transaction": null,
  "return_uri": "https://example.co.th/orders/384/complete",
  "reference": "9qt1b3n635uv6plypp2spzkpe",
  "authorize_uri": "https://api.omise-gateway.dev/payments/9qt1b3n635uv6plypp2spzkpe/authorize",
  "card": {
    "object": "card",
    "id": "card_test_4xs94086bpvq56tghuo",
    "livemode": false,
    "country": "th",
    "city": "Bangkok",
    "postal_code": "10320",
    "financing": "credit",
    "last_digits": "4242",
    "brand": "Visa",
    "expiration_month": 10,
    "expiration_year": 2018,
    "fingerprint": "/LCaOoTah/+As+qKsohIldZkEfew0Zq2nJKgIObRwMI=",
    "name": "Somchai Prasert",
    "created": "2014-10-20T09:41:56Z"
  },
  "customer": null,
  "ip": "127.0.0.1",
  "created": "2014-10-21T11:12:28Z"
}
```
