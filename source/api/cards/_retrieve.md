## Retrieve a card

### Endpoint

```
GET https://api.omise.co/customers/CUSTOMER_ID/cards/CARD_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `customer_id`            | **(required)** Customer id |
| `card_id`                | **(required)** Card id |


### Response parameters
| Parameter  | Value |
|:-----------|:------|
| `object`   | **(string)** 'card' |
| `id`       | **(string)** Card ID |
| `livemode` | **(boolean)** Whether this is a Live (true) or Test (false) card. |
| `location` | **(string)** Path to retrieve the card |
| `country`  | **(string, format: [Lowercase Iso3166](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements))** Country code based on the card number. |
| `city`     | **(string)** City. |
| `postal_code`     | **(string)** Postal code. |
| `financing`     | **(string)** Type of credit card financing (Debit, credit). |
| `last_digits`     | **(string)** Last 4 digits of the card number. |
| `brand`     | **(string)** Card brand (e.g.: Visa, Mastercard,...). |
| `expiration_month`     | **(integer, 1-12)** Card expiration month. |
| `expiration_year`     | **(integer)** Card expiration year. |
| `fingerprint`     | **(string)** Unique card-based fingerprint. Allows detection of identical cards |
| `name`     | **(string)** Card owner full name. |
| `created`  | **(datetime, format: [iso8601](http://en.wikipedia.org/wiki/ISO_8601))** Creation date of the card |


### Curl

```sh
curl https://api.omise.co/customers/cust_test_4xsjvylia03ur542vn6/cards/card_test_4xsjw0t21xaxnuzi9gs \
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
