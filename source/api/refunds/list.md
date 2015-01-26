## List refunds

### Endpoint

```
GET https://api.omise.co/charges/CHARGE_ID/refunds
```

### Request Parameters

None

### Response

A [paginated list](/api/pagination) of [refunds](/api/refunds#the-refund-object)

### Curl

```sh
curl https://api.omise.co/charges/chrg_test_4xso2s8ivdej29pqnhz/refunds \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
```

### Ruby

```ruby
charge = Omise::Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refunds = charge.refunds
```

### Python

```python
charge = omise.Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refunds = charge.refunds
```

### JSON Response

```json
{
  "object": "list",
  "from": "1970-01-01T07:00:00+07:00",
  "to": "2015-01-13T08:45:37+07:00",
  "offset": 0,
  "limit": 20,
  "total": 1,
  "data": [
    {
      "object": "refund",
      "id": "rfnd_4ypcvo03ktuw0uki7un",
      "livemode": false,
      "location": "/charges/chrg_4ypcvnygrw9na22l2e7/refunds/rfnd_4ypcvo03ktuw0uki7un",
      "amount": 50000,
      "currency": "thb",
      "charge": "chrg_4ypcvnygrw9na22l2e7",
      "created": "2015-01-13T01:00:47Z"
    }
  ]
}

```
