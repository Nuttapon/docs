## Create a refund

The following requirements must be met for a charge to be refundable:

- It must be either `pending` or `closed`
- It must have been `captured`
- It must not be already fully refunded
- It must have been settled within 1 year

If any of these requirements is not met, you will get a `failed_refund` exception.

### Endpoint

```
POST https://api.omise.co/charges/CHARGE_ID/refunds
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `amount`                 | *(required)* The amount in the smallest subunits of the charge currency. So for `thb` (Thai Baht) you'll need to pass the amount in satangs. |

### Curl

```sh
  curl http://api.omise.co/charges/chrg_test_4ype2jynk2len88i4er/refunds \
    -X POST \
    -u skey_test_4ypcvnwzy9ob6gs89pn: \
    -d "amount=100000"
```

### Ruby

```ruby
charge = Omise::Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refund = charge.refunds.create(amount: 10000)
```

### Python

```python
charge = omise.Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refund = charge.refund(amount=10000)
```

### JSON Response

```json
{
  "object": "refund",
  "id": "rfnd_test_4ypebtxon6oye5o8myu",
  "livemode": false,
  "location": "/charges/chrg_test_4ype2jynk2len88i4er/refunds/rfnd_test_4ypebtxon6oye5o8myu",
  "amount": 100000,
  "currency": "thb",
  "charge": "chrg_test_4ype2jynk2len88i4er",
  "created": "2015-01-13T03:28:58Z"
}

```

