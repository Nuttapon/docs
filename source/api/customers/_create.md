## Create a customer

### Endpoint

```
POST https://api.omise.co/customers
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `email`                  | *(optional)* Customer's email |
| `description`            | *(optional)* A custom description for the customer. |
| `card`                   | *(optional)* A card token in case you want to add a card to the customer |

### Curl

```sh
curl https://api.omise.co/customers \
  -X POST \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "description=John Doe (id: 30)" \
  -d "email=john.doe@example.com" \
  -d "card=tokn_test_4xs9408a642a1htto8z"
```

### Ruby

```ruby
customer = Omise::Customer.create({
  email: "john.doe@example.com",
  description: "John Doe (id: 30)",
  card: "tokn_test_4xs9408a642a1htto8z"
})
```

### Python

```python
customer = omise.Customer.create(
  email="john.doe@example.com",
  description="John Doe (id: 30)",
  card="tokn_test_4xs9408a642a1htto8z"
)
```

### C&#35;

```c#
var customerInfo = new CustomerInfo ();
customerInfo.Email = "john.doe@example.com";
customerInfo.Description = "John Doe (id: 30)";
customerInfo.CardId = "tokn_test_4xs9408a642a1htto8z"

var customerResult = client.CustomerService.CreateCustomer (customerInfo);
```

### PHP

```php
$customer = OmiseCustomer::create(array(
	'email' => 'john.doe@example.com',
	'description' => 'John Doe (id: 30)',
	'card' => 'tokn_test_4xs9408a642a1htto8z'
));
```

### JSON Response

```json
{
  "object": "customer",
  "id": "cust_test_4xtrb759599jsxlhkrb",
  "livemode": false,
  "location": "/customers/cust_test_4xtrb759599jsxlhkrb",
  "default_card": null,
  "email": "john.doe@example.com",
  "description": "John Doe (id: 30)",
  "created": "2014-10-24T06:04:48Z",
  "cards": {
    "object": "list",
    "from": "1970-01-01T07:00:00+07:00",
    "to": "2014-10-24T13:04:48+07:00",
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
