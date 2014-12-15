## Retrieve a customer

### Endpoint

```
GET https://api.omise.co/customers/CUSTOMER_ID
```

### Curl

```sh
curl https://api.omise.co/customers/cust_test_4xtrb759599jsxlhkrb \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
```

### Python

```python
customer = omise.Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
```

### C&#35;

```c#
var customer = client.CustomerService.GetCustomer("cust_test_4xtrb759599jsxlhkrb");
```

### PHP

```php
$customer = $omise->getOmiseAccessCustomers()->retrieve("cust_test_4xtrb759599jsxlhkrb");
```

### JSON Response

```json
{
  "object": "customer",
  "id": "cust_test_4xtrb759599jsxlhkrb",
  "livemode": false,
  "location": "/customers/cust_test_4xtrb759599jsxlhkrb",
  "default_card": "card_test_4xtsoy2nbfs7ujngyyq",
  "email": "john.doe@example.com",
  "description": "John Doe (id: 30)",
  "created": "2014-10-24T08:26:46Z",
  "cards": {
    "object": "list",
    "from": "1970-01-01T07:00:00+07:00",
    "to": "2014-10-24T15:32:31+07:00",
    "offset": 0,
    "limit": 20,
    "total": 1,
    "data": [
      {
        "object": "card",
        "id": "card_test_4xtsoy2nbfs7ujngyyq",
        "livemode": false,
        "location": "/customers/cust_test_4xtrb759599jsxlhkrb/cards/card_test_4xtsoy2nbfs7ujngyyq",
        "country": "",
        "city": null,
        "postal_code": null,
        "financing": "",
        "last_digits": "4242",
        "brand": "Visa",
        "expiration_month": 9,
        "expiration_year": 2017,
        "fingerprint": "q/kfc3jaZvlxIDobDQvziA4RSNdDdfXz9aFbXSjva8A=",
        "name": "Test card",
        "created": "2014-10-24T08:26:07Z"
      }
    ],
    "location": "/customers/cust_test_4xtrb759599jsxlhkrb/cards"
  }
}
```
