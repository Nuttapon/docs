## Retrieve a card

### Endpoint

```
GET https://api.omise.co/customers/CUSTOMER_ID/cards/CARD_ID
```

### Curl

```sh
curl http://api.omise-gateway.dev/customers/cust_test_4xsjvylia03ur542vn6/cards/card_test_4xsjw0t21xaxnuzi9gs \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
card = customer.cards.retrieve("card_test_4xsjw0t21xaxnuzi9gs")

# Note that you can reload the card once you have an instance of one.
card.reload
```

### JSON Response

```json
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
```