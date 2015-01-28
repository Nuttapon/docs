## List all charges

### Endpoint

```
GET https://api.omise.co/charges
```

### Request Parameters

None

### Response

A [paginated list](/api/pagination) of [charges](/api/charges#the-charge-object)

### Curl

```sh
curl https://api.omise.co/charges -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
charges = Omise::Charge.retrieve
```

### Python

```python
charges = omise.Charge.retrieve()
```

### C&#35;

```c#
var charges = client.ChargeService.GetAllCharges();
```

### PHP

```php
$charges = Omise\Charge::retrieve();
```

### JSON Response

```json
{
  "object": "list",
  "from": "1970-01-01T07:00:00+07:00",
  "to": "2014-11-20T14:17:24+07:00",
  "offset": 0,
  "limit": 20,
  "total": 2,
  "data": [
    {
      "object": "charge",
      "id": "chrg_4y48tpcjdv71qnm0r0c",
      "livemode": false,
      "location": "/charges/chrg_4y48tpcjdv71qnm0r0c",
      "amount": 200000,
      "currency": "thb",
      "description": "on Johns mastercard",
      "capture": true,
      "authorized": false,
      "captured": false,
      "transaction": null,
      "failure_code": null,
      "failure_message": null,
      "card": {
        "object": "card",
        "id": "card_4y48tpc710dlo9aoahb",
        "livemode": false,
        "location": "/customers/cust_4y48tpd8s59d9ydphj8/cards/card_4y48tpc710dlo9aoahb",
        "country": "us",
        "city": null,
        "postal_code": null,
        "financing": "debit",
        "last_digits": "4242",
        "brand": "Visa",
        "expiration_month": 10,
        "expiration_year": 2018,
        "fingerprint": null,
        "name": "john_mastercard",
        "security_code_check": false,
        "created": "2014-11-20T01:30:37Z"
      },
      "customer": "cust_4y48tpd8s59d9ydphj8",
      "ip": "133.71.33.7",
      "created": "2014-11-20T01:32:07Z"
    },
    {
      "object": "charge",
      "id": "chrg_4y48tpcjcbyevr3mfne",
      "livemode": false,
      "location": "/charges/chrg_4y48tpcjcbyevr3mfne",
      "amount": 100000,
      "currency": "thb",
      "description": "on Johns personal visa",
      "capture": true,
      "authorized": false,
      "captured": false,
      "transaction": null,
      "failure_code": null,
      "failure_message": null,
      "card": {
        "object": "card",
        "id": "card_4y48tpc6gikrrioiu33",
        "livemode": false,
        "location": "/customers/cust_4y48tpd8s59d9ydphj8/cards/card_4y48tpc6gikrrioiu33",
        "country": "us",
        "city": "Dunkerque",
        "postal_code": "59140",
        "financing": "debit",
        "last_digits": "4242",
        "brand": "Visa",
        "expiration_month": 10,
        "expiration_year": 2015,
        "fingerprint": null,
        "name": "john_personal_visa",
        "security_code_check": false,
        "created": "2014-11-20T01:30:27Z"
      },
      "customer": "cust_4y48tpd8s59d9ydphj8",
      "ip": "133.71.33.7",
      "created": "2014-11-20T01:32:07Z"
    }
  ]
}
```
