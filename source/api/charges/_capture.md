## Capture an authorized a charge

### Endpoint

```
POST https://api.omise.co/charges/CHARGE_ID/capture
```

### Curl

```sh
curl https://api.omise.co/charges/chrg_test_4xso2s8ivdej29pqnhz/capture \
  -X POST
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
```

### Ruby

```ruby
charge = Omise::Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
```

### Python

```python
charge = omise.Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
charge.charge()
```

### C&#35;

```c#
var result = client.ChargeService.GetCharge("chrg_test_4xso2s8ivdej29pqnhz");
```

### PHP

```php
$charge = OmiseCharge::retrieve('chrg_test_4xso2s8ivdej29pqnhz');
$charge->capture();
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
  "authorized": true,
  "captured": true,
  "transaction": "trxn_test_4xsoehwhvok82wqdrzm",
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
