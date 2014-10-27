## Retrieve a transfer

### Endpoint

```
POST https://api.omise.co/transfers/TRANSFER_ID
```

### Request Parameters

None

### Curl

```sh
curl https://api.omise.co/transfers/trsf_test_4xs5px8c36dsanuwztf \
  -X GET \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
transfer = Omise::Transfer.retrieve("trsf_test_4xs5px8c36dsanuwztf")
```

### C&#35;

```c#
var transfer = client.TransferService.GetTransfer("trsf_test_4xs5px8c36dsanuwztf");
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
