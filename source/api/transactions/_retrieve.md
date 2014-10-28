## Retrieve a transaction

### Endpoint

```
GET https://api.omise.co/transactions/TRANSACTION_ID
```

### Request Parameters

None

### Curl

```sh
curl https://api.omise.co/transactions/trxn_test_4xuy2z4w5vmvq4x5pfs \
  -X GET \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
transaction = Omise::Transaction.retrieve("trxn_test_4xuy2z4w5vmvq4x5pfs")
```

### C&#35;

```c#
var transaction = client.TransactionService.GetTransaction("trxn_test_4xuy2z4w5vmvq4x5pfs");
```

### JSON Response

```json
{
    "object": "transaction",
    "id": "trxn_test_4xuy2z4w5vmvq4x5pfs",
    "type": "credit",
    "amount": 9635024,
    "currency": "THB",
    "created": "2014-10-27T06:58:56Z"
}
```
