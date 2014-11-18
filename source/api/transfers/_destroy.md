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

### JSON Response

```json
{
  "object": "transfer",
  "id": "trsf_test_4y3miv1nhy0rceit4w4",
  "livemode": false,
  "deleted": true
}
```
