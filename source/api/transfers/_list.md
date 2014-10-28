## List all transfers

### Endpoint

```
GET https://api.omise.co/transfers
```

### Request Parameters

None

### Response parameters
A [paginated list](/api/pagination) of [transfers](/api/transfers#the-transfer-object)

### Curl

```sh
curl https://api.omise.co/transfers -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
transfers = Omise::Transfer.retrieve()
```

### C&#35;

```c#
var transfers = client.TransferService.GetAllTransfers();
```

### JSON Response

```json
{
    "object": "list",
    "from": "1970-01-01T07:00:00+07:00",
    "to": "2014-10-27T11:36:24+07:00",
    "offset": 0,
    "limit": 20,
    "total": 1,
    "data": [
        {
            "object": "transfer",
            "id": "trsf_test_4xs5px8c36dsanuwztf",
            "amount": 100000,
            "currency": "thb",
            "created": "2014-10-14T05:19:44Z"
        }
    ]
}
```
