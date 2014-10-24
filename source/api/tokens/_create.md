## Create a token

<div class="Notice">
  For security reasons, it's highly recommended not to request a token creation from your server. Instead, do it from
  your customer browser using Omise.js. This will help you with PCI compliance.
  Rule of thumb: <strong>Sensitive card data should never go through your server.</strong>
</div>

### Endpoint

```
POST https://vault.omise.co/tokens
```

### Request Parameters

| Parameter                | Value                                             |
|:-------------------------|:--------------------------------------------------|
| `card[name]`             | *(required)* The cardholder name as printed on the card. |
| `card[number]`           | *(required)* The card number. Note that the number you pass can contains spaces and dashes but will be stripped from the response. |
| `card[expiration_month]` | *(required)* The expiration month printed on the card in the format M or MM. |
| `card[expiration_year]`  | *(required)* The expiration year printed on the card in the format YYYY. |
| `card[security_code]`    | *(required)* The security code (CVV, CVC, etc) printed on the back of the card. |
| `card[postal_code]`      | *(optional)* The postal code from the city where the card was issued. |
| `card[city]`             | *(optional)* The city where the card was issued. |

### From Your Customer Browser

#### Javascript using Omise.js
```js
var card = documents.forms.card;
Omise.createToken("card", {
  "name": card.holder_name.value,
  "number": card.number.value,
  "expiration_month": card.expiration_month.value,
  "expiration_year": card.expiration_year.value,
  "security_code": card.security_code.value
}, function (statusCode, response) {
  if (response.object == "token") {
    // then send the token (response.id) to your server
    // ...
  } else {
    // an error occurred, display error message
    alert(response.code+": "+response.message);
  };
});
```

---
### From Your Server
<div class='Notice'>
<strong>Do not do this</strong>. If cardholder data is going through your server, then you are doing something wrong.
The only possible exceptions to this are: If you are PCI compliant or if you are playing around with fake test data.
</div>

### Curl

```sh
curl https://vault.omise.co/tokens \
  -X POST \
  -u pkey_test_4xs8breq32civvobx15: \
  -d "card[name]=Somchai Prasert" \
  -d "card[number]=4242424242424242" \
  -d "card[expiration_month]=10" \
  -d "card[expiration_year]=2018" \
  -d "card[city]=Bangkok" \
  -d "card[postal_code]=10320" \
  -d "card[security_code]=123"
```

### Ruby

```ruby
token = Omise::Token.create(card: {
  name: "Somchai Prasert",
  number: "4242424242424242",
  expiration_month: 10,
  expiration_year: 2018,
  city: "Bangkok",
  postal_code: "10320",
  security_code: 123
})
```

### JSON Response

```json
{
  "object": "token",
  "id": "tokn_test_4xs9408a642a1htto8z",
  "livemode": false,
  "location": "/tokens/tokn_test_4xs9408a642a1htto8z",
  "used": false,
  "card": {
    "object": "card",
    "id": "card_test_4xs94086bpvq56tghuo",
    "livemode": false,
    "country": "th",
    "city": "Bangkok",
    "postal_code": "10320",
    "financing": "credit",
    "last_digits": "4242",
    "brand": "Visa",
    "expiration_month": 10,
    "expiration_year": 2018,
    "fingerprint": "/LCaOoTah/+As+qKsohIldZkEfew0Zq2nJKgIObRwMI=",
    "name": "Somchai Prasert",
    "created": "2014-10-20T09:41:56Z"
  },
  "created": "2014-10-20T09:41:56Z"
}
```
