## Update a customer

### Endpoint

```
PATCH https://api.omise.co/customers/CUSTOMER_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `email`                  | *(optional)* Customer's email                     |
| `description`            | *(optional)* A custom description for the customer. This value can be searched for in your dashboard. |
| `card`                   | *(optional)* A card token in case you want to add a card to the customer |

### Curl

```sh
curl http://api.omise.co/customers/cust_test_4xtrb759599jsxlhkrb \
  -X PATCH \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "email=john.smith@example.com" \
  -d "description=Another description"
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
customer.update { email: "john.smith@example.com",
                  description: "Another description" }
```

### C&#35;

```c#
var customerUpdateInfo = new CustomerInfo ();
customerUpdateInfo.Email = "john.smith@example.com";
customerUpdateInfo.Description = "Another description";

var updateResult = client.CustomerService.UpdateCustomer("cust_test_4xtrb759599jsxlhkrb", customerUpdateInfo);
```

### JSON Response

```json
{
    "object": "customer",
    "id": "cust_test_4xtrb759599jsxlhkrb",
    "livemode": false,
    "location": "/customers/cust_test_4xtrb759599jsxlhkrb",
    "default_card": "card_test_4xtsoy2nbfs7ujngyyq",
    "email": "john.smith@example.com",
    "description": "John Doe (id: 30)",
    "created": "2014-10-24T08:26:46Z",
    "cards": {
        "object": "list",
        "from": "1970-01-01T07:00:00+07:00",
        "to": "2014-10-24T15:36:34+07:00",
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
