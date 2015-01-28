## Destroy a transfer

### Endpoint

```
DELETE https://api.omise.co/transfers/TRANSFER_ID
```

### CURL

```sh
curl https://api.omise.co/transfers/trsf_test_4y3miv1nhy0rceit4w4 \
  -X DELETE \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
transfer = Omise::Transfer.retrieve("trsf_test_4y3miv1nhy0rceit4w4")
transfer.destroy
transfer.destroyed? # => true
```

### Python

```python
transfer = omise.Transfer.retrieve("trsf_test_4y3miv1nhy0rceit4w4")
transfer.destroy()
transfer.destroyed # => true
```

### C&#35;

```c#
var deleteResult = client.TransferService.DeleteTransfer("trsf_test_4xs5px8c36dsanuwztf");
// deleteResult.deleted => true
```

### PHP

```php
$transfer = Omise\Transfer::retrieve('trsf_test_4y3miv1nhy0dceit4w4');
$transfer->destroy();
$transfer->isDestroyed(); # => true
```

### JSON Response

```json
{
  "object": "transfer",
  "id": "trsf_test_4y3miv1nhy0rceit4w4",
  "livemode": false,
  "deleted": true
}
```
