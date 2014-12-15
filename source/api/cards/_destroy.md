## Destroy a card

### Endpoint

```
DELETE https://api.omise.co/customers/CUSTOMER_ID/cards/CARD_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `customer_id`            | *(required)* Customer id |
| `card_id`                | *(required)* Card id |


### Response Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `object`            | *(string)* 'card' |
| `id`                | *(string)* Card id |
| `livemode`          | *(boolean)* Whether this is a Live (true) or Test (false) card. |
| `deleted`           | *(boolean)* Card deletion status
### Curl

```sh
curl https://api.omise.co/customers/cust_test_4xsjvylia03ur542vn6/cards/card_test_4xsjw0t21xaxnuzi9gs \
  -X DELETE \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
card = customer.cards.retrieve("card_test_4xsjw0t21xaxnuzi9gs")
card.destroy
```

### Python

```python
customer = omise.Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
card = customer.cards.retrieve("card_test_4xsjw0t21xaxnuzi9gs")
card.destroy()
```

### C&#35;

```c#
var deleteResult = client.CardService.DeleteCard ("cust_test_4xsjvylia03ur542vn6", "card_test_4xsjw0t21xaxnuzi9gs");
```

### PHP

```php
$card = $omise->getOmiseAccessCards()->destroy("cust_test_4xsjvylia03ur542vn6", "card_test_4xsjw0t21xaxnuzi9gs");
```

### JSON Response

```json
{
  "object": "card",
  "id": "card_test_4xsjw0t21xaxnuzi9gs",
  "livemode": false,
  "deleted": true
}
```
