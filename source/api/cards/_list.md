## List all cards

### Endpoint

```
GET https://api.omise.co/customers/CUSTOMER_ID/cards
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `customer_id`            | *(required)* Customer id |

### Response parameters

A [paginated list](/api/pagination) of [cards](/api/cards#the-card-object)

### Curl

```sh
curl https://api.omise.co/customers/cust_test_4xsjvylia03ur542vn6/cards \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
cards = customer.cards
```

### Python

```python
customer = omise.Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
cards = customer.cards
```

### C&#35;

```c#
cards = client.CardService.GetAllCards("cust_test_4xsjvylia03ur542vn6");
```

### PHP

```php
$customer = Omise\Customer::retrieve('cust_test_4ybb9ymhoi7ju6wuizb');
$cards = $customer->getCards();
```

### JSON Response

```json
{
  "object": "list",
  "from": "1970-01-01T07:00:00+07:00",
  "to": "2014-10-21T11:34:42+07:00",
  "offset": 0,
  "limit": 20,
  "total": 1,
  "data": [
    {
      "object": "card",
      "id": "card_test_4xsjw0t21xaxnuzi9gs",
      "livemode": false,
      "location": "/customers/cust_test_4xsjvylia03ur542vn6/cards/card_test_4xsjw0t21xaxnuzi9gs",
      "country": "",
      "city": "Bangkok",
      "postal_code": "10320",
      "financing": "",
      "last_digits": "4242",
      "brand": "Visa",
      "expiration_month": 10,
      "expiration_year": 2016,
      "fingerprint": "uBNb5Z5J6firoMoDo80jEc1X/QucKQ4SCu80kP9U0gE=",
      "name": "Somchai Prasert",
      "created": "2014-10-21T04:04:12Z"
    }
  ]
}
```
