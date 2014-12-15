## Update a card

### Endpoint

```
PATCH https://api.omise.co/customers/CUSTOMER_ID/cards/CARD_ID
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `name`             | *(optional)* The cardholder name as printed on the card. |
| `expiration_month` | *(optional)* The expiration month printed on the card. |
| `expiration_year`  | *(optional)* The expiration year printed on the card in the format YYYY. |
| `postal_code`      | *(optional)* The postal code from the city where the card was issued. |
| `city`             | *(optional)* The city where the card was issued. |

### Curl

```sh
curl https://api.omise.co/customers/cust_test_4xsjvylia03ur542vn6/cards/card_test_4xsjw0t21xaxnuzi9gs \
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

### Python

```python
customer = omise.Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
card = customer.cards.retrieve("card_test_4xsjw0t21xaxnuzi9gs")
card.update(
  expiration_month=11,
  expiration_year=2017,
  name="Somchai Praset",
  postal_code="10310"
)

# Or alternatively:
card.expiration_month = 11
card.expiration_year = 2017
card.name = "Somchai Praset"
card.postal_code = "10310"
card.update()
```

### C&#35;
```c#
var card = new CardUpdateInfo ();
card.Id = "card_test_4xsjw0t21xaxnuzi9gs";
card.Name = "Somchai Praset";
card.ExpirationMonth = 11;
card.ExpirationYear = 2017;

var updateResult = client.CardService.UpdateCard ("cust_test_4xsjvylia03ur542vn6", card);
```

### PHP

```php
$info = new OmiseCardUpdateInfo();
$info->setCardID("card_test_4xsjw0t21xaxnuzi9gs");
$info->setCustomerID("cust_test_4xsjvylia03ur542vn6");
$info->setName('Somchai Praset');
$info->setExpirationMonth(11);
$info->setExpirationYear(2017);

$card = $omise->getOmiseAccessCards()->update($info);
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
