## Create a transfer

### Endpoint

```
POST https://api.omise.co/transfers
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `amount`             | *(optional)* Transfer amount in the smallest currency unit (e.g. satang, cent, ... ) |

### Curl

```sh
curl https://api.omise.co/transfers \
  -X POST \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "amount=100000" \
```

### Ruby

```ruby
transfer = Omise::Transfer.create({
  amount: 100000
})
```

### C&#35;

```c#
var transfer = client.TransferService.CreateTransfer(100000);
```

### JSON Response

```json
{
  "object": "transfer",
  "id": "trsf_test_4xs5px8c36dsanuwztf",
  "amount": 100000,
  "currency": "thb",
  "created": "2014-10-14T05:19:44Z"
}
```
