## Retrieve a refund

### Endpoint

```
GET https://api.omise.co/charges/CHARGE_ID/refunds/REFUND_ID
```

### Curl

  ```sh
curl http://api.omise.co/charges/chrg_test_4ype2jynk2len88i4er/refunds/rfnd_test_4ypebtxon6oye5o8myu \
  -u skey_test_4ypcvnwzy9ob6gs89pn:
  ```

### Ruby

```ruby
charge = Omise::Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refund = charge.refunds.retrieve("rfnd_test_4ypebtxon6oye5o8myu")
```

### Python

```python
charge = omise.Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refund = charge.refunds.retrieve("rfnd_test_4ypebtxon6oye5o8myu")
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
