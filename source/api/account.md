---
title: Account
---

## Retrieving the account

**Endpoint**

```
GET https://api.omise.co/account
```

**Curl**

```sh
curl http://api.omise-gateway.dev/account \
  -u skey_test_4xs8breq3htbkj03d2x:
```

**Ruby**

```ruby
Omise::Account.retrieve
```

**JSON Object**

```json
{
  "object": "account",
  "id": "acct_4xs8bre8a8vhrgijcjg",
  "email": null,
  "created": "2014-10-20T08:21:42Z"
}
```
