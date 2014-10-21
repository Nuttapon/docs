## Update a card

### Endpoint

```
PATCH https://api.omise.co/customers/CUSTOMER_ID/cards/CARD_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `name`             | **(optional)** The cardholder name as printed on the card. |
| `expiration_month` | **(optional)** The expiration month printed on the card. |
| `expiration_year`  | **(optional)** The expiration year printed on the card in the format YYYY. |
| `postal_code`      | **(optional)** The postal code from the city where the card was issued. |
| `city`             | **(optional)** The city where the card was issued. |

### Curl

```sh
curl http://api.omise-gateway.dev/customers/cust_test_4xsjvylia03ur542vn6/cards/card_test_4xsjw0t21xaxnuzi9gs \
  -X PATCH \
  -u skey_test_4xsjvwfnvb2g0l81sjz: \
  -d "expiration_month=11" \
  -d "expiration_year=2017" \
  -d "name=Somchai Praset" \
  -d "postal_code=10310"
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
card = customer.cards.retrieve("card_test_4xsjw0t21xaxnuzi9gs")
card.update({
  expiration_month: 11,
  expiration_year: 2017,
  name: "Somchai Praset",
  postal_code: "10310"
})
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
  "postal_code": "10310",
  "financing": "",
  "last_digits": "4242",
  "brand": "Visa",
  "expiration_month": 11,
  "expiration_year": 2017,
  "fingerprint": "uBNb5Z5J6firoMoDo80jEc1X/QucKQ4SCu80kP9U0gE=",
  "name": "Somchai Praset",
  "created": "2014-10-21T04:04:12Z"
}
```