## Retrieve a transfer

### Endpoint

```
GET https://api.omise.co/transfers/TRANSFER_ID
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

### Python

```python
transfer = omise.Transfer.retrieve("trsf_test_4xs5px8c36dsanuwztf")
```

### C&#35;

```c#
var transfer = client.TransferService.GetTransfer("trsf_test_4xs5px8c36dsanuwztf");
```

### PHP

```php
$transfer = Omise\Transfer::retrieve('trsf_test_4xs5px8c36dsanuwztf');
```

### JSON Response

```json
{
  "object": "transfer",
  "id": "trsf_test_4y3miv1nhy0dceit4w4",
  "livemode": false,
  "location": "/transfers/trsf_test_4y3miv1nhy0dceit4w4",
  "sent": false,
  "paid": false,
  "amount": 50000,
  "currency": "thb",
  "failure_code": null,
  "failure_message": null,
  "transaction": null,
  "created": "2014-11-18T11:31:26Z"
}
```
