## List all transactions

### Endpoint

```
GET https://api.omise.co/transactions
```

### Request Parameters

None
parameters
### Response
A [paginated list](/api/pagination) of [transactions](/api/transactions#the-transaction-object)

### Curl

```sh
curl https://api.omise.co/transactions -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
transactions = Omise::Transaction.retrieve
```

### Python

```python
transactions = omise.Transaction.retrieve()
```

### C&#35;

```c#
var transactions = client.TransactionService.GetAllTransactions();
```

### PHP

```php
$list = $omise->getOmiseAccessTransactions()->listAll();
```

### JSON Response

```json
{
    "object": "list",
    "from": "1970-01-01T07:00:00+07:00",
    "to": "2014-10-27T14:55:29+07:00",
    "offset": 0,
    "limit": 20,
    "total": 2,
    "data": [
        {
            "object": "transaction",
            "id": "trxn_test_4xuy2z4w5vmvq4x5pfs",
            "type": "credit",
            "amount": 9635024,
            "currency": "thb",
            "created": "2014-10-27T06:58:56Z"
        },
        {
            "object": "transaction",
            "id": "trxn_test_4xuy4dcrk5ywvyfgdhg",
            "type": "debit",
            "amount": 100025,
            "currency": "thb",
            "created": "2014-10-27T07:02:54Z"
        }
    ]
}
```
