## List all customers

### Endpoint

```
GET https://api.omise.co/customers
```

### Request Parameters

None
parameters
### Response
A [paginated list](/api/pagination) of [customers](/api/customers#the-customer-object)

### Curl

```sh
curl https://api.omise.co/customers -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
customers = Omise::Customer.retrieve
```

### C&#35;

```c#
var customers = client.CustomerService.GetAllCustomers();
```

### JSON Response

```json
{
  "object": "list",
  "from": "1970-01-01T07:00:00+07:00",
  "to": "2014-11-20T14:23:43+07:00",
  "offset": 0,
  "limit": 20,
  "total": 2,
  "data": [
    {
      "object": "customer",
      "id": "cust_4y48tpd8rtdwoaf4ea3",
      "livemode": false,
      "location": "/customers/cust_4y48tpd8rtdwoaf4ea3",
      "default_card": null,
      "email": "jane.doe@example.com",
      "description": null,
      "created": "2014-11-20T01:32:07Z",
      "cards": {
        "object": "list",
        "from": "1970-01-01T07:00:00+07:00",
        "to": "2014-11-20T14:23:43+07:00",
        "offset": 0,
        "limit": 20,
        "total": 1,
        "data": [
          {
            "object": "card",
            "id": "card_4y48tpc703vjdg7jt60",
            "livemode": true,
            "location": "/customers/cust_4y48tpd8rtdwoaf4ea3/cards/card_4y48tpc703vjdg7jt60",
            "country": "us",
            "city": null,
            "postal_code": null,
            "financing": "debit",
            "last_digits": "4242",
            "brand": "Visa",
            "expiration_month": 10,
            "expiration_year": 2015,
            "fingerprint": null,
            "name": "janes_live",
            "security_code_check": false,
            "created": "2014-11-20T01:31:07Z"
          }
        ],
        "location": "/customers/cust_4y48tpd8rtdwoaf4ea3/cards"
      }
    },
    {
      "object": "customer",
      "id": "cust_4y48tpd8s59d9ydphj8",
      "livemode": false,
      "location": "/customers/cust_4y48tpd8s59d9ydphj8",
      "default_card": "card_4y48tpc6gikrrioiu33",
      "email": "john.doe@example.com",
      "description": null,
      "created": "2014-11-20T01:32:07Z",
      "cards": {
        "object": "list",
        "from": "1970-01-01T07:00:00+07:00",
        "to": "2014-11-20T14:23:43+07:00",
        "offset": 0,
        "limit": 20,
        "total": 3,
        "data": [
          {
            "object": "card",
            "id": "card_4y48tpc79z6xdd46ry6",
            "livemode": false,
            "location": "/customers/cust_4y48tpd8s59d9ydphj8/cards/card_4y48tpc79z6xdd46ry6",
            "country": "us",
            "city": "Dunkerque",
            "postal_code": "59140",
            "financing": "debit",
            "last_digits": "4242",
            "brand": "Visa",
            "expiration_month": 10,
            "expiration_year": 2015,
            "fingerprint": null,
            "name": "john_expired_on_charge",
            "security_code_check": false,
            "created": "2014-11-20T01:30:27Z"
          },
          {
            "object": "card",
            "id": "card_4y48tpc6gikrrioiu33",
            "livemode": false,
            "location": "/customers/cust_4y48tpd8s59d9ydphj8/cards/card_4y48tpc6gikrrioiu33",
            "country": "us",
            "city": "Dunkerque",
            "postal_code": "59140",
            "financing": "debit",
            "last_digits": "4242",
            "brand": "Visa",
            "expiration_month": 10,
            "expiration_year": 2015,
            "fingerprint": null,
            "name": "john_personal_visa",
            "security_code_check": false,
            "created": "2014-11-20T01:30:27Z"
          },
          {
            "object": "card",
            "id": "card_4y48tpc710dlo9aoahb",
            "livemode": false,
            "location": "/customers/cust_4y48tpd8s59d9ydphj8/cards/card_4y48tpc710dlo9aoahb",
            "country": "us",
            "city": null,
            "postal_code": null,
            "financing": "debit",
            "last_digits": "4242",
            "brand": "Visa",
            "expiration_month": 10,
            "expiration_year": 2018,
            "fingerprint": null,
            "name": "john_mastercard",
            "security_code_check": false,
            "created": "2014-11-20T01:30:37Z"
          }
        ],
        "location": "/customers/cust_4y48tpd8s59d9ydphj8/cards"
      }
    }
  ]
}
```
