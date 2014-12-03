## Retrieve a token

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `id`             | *(required)* Token id |

### Endpoint

```
GET https://vault.omise.co/tokens/TOKEN_ID
```

### Curl

```sh
curl https://vault.omise.co/tokens/tokn_test_4xs9408a642a1htto8z \
  -u pkey_test_4xs8breq32civvobx15:
```

### Ruby

```ruby
token = Omise::Token.retrieve("tokn_test_4xs9408a642a1htto8z")
```

### Python

```python
token = omise.Token.retrieve("tokn_test_4xs9408a642a1htto8z")
```

### C&#35;

```c#
var resultToken = client.TokenService.GetToken ("tokn_test_4xs9408a642a1htto8z");
```

### JSON Response

```json
{
  "object": "token",
  "id": "tokn_test_4xs9408a642a1htto8z",
  "livemode": false,
  "location": "/tokens/tokn_test_4xs9408a642a1htto8z",
  "used": false,
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
  "created": "2014-10-20T09:41:56Z"
}
```
