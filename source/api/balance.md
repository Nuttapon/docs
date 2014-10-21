---
title: Balance
---

## Retrieving the Balance

**Endpoint**

```
GET https://api.omise.co/balance
```

**Curl**

```sh
curl http://api.omise-gateway.dev/balance \
  -u skey_test_4xs8breq3htbkj03d2x:
```

**Ruby**

```ruby
balance = Omise::Balance.retrieve

# Note that you can reload the balance if you already have an instance of it.
balance.reload
```

**JSON Object**

```json
{
  "object": "balance",
  "livemode": false,
  "available": 0,
  "total": 0,
  "currency": "thb"
}
```
