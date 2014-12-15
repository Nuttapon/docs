## Update a transfer

### Endpoint

```
PATCH https://api.omise.co/transfers/TRANSFER_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `amount`                 | *(optional)* Transfer amount in the smallest currency unit (e.g. satang, cent, ... ). Defaul to the amount in your available balance. |

### Curl

```sh
curl https://api.omise.co/transfers/trsf_test_4y3miv1nhy0dceit4w4 \
  -X PATCH \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "amount=50000" \
```

### Ruby

```ruby
transfer = Omise::Transfer.retrieve("trsf_test_4y3miv1nhy0dceit4w4")
transfer.amount = 50000
transfer.save
```

### Python

```python
transfer = omise.Transfer.retrieve("trsf_test_4y3miv1nhy0dceit4w4")
transfer.update(amount=50000)

# Or alternatively:
transfer.amount = 50000
transfer.update()
```

### C&#35;

```c#
var transfer = client.TransferService.UpdateTransfer("trsf_test_4y3miv1nhy0dceit4w4", 50000);
```

### PHP

```php
$info = new OmiseTransferUpdateInfo();
$info->setTransferID('trsf_test_4y3miv1nhy0dceit4w4');
$info->setAmount(50000);

$transfer = $omise->getOmiseAccessTransfers()->update($info);
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
