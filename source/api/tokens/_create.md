## Create a token

On a Production environment, create tokens from your users browser using [Omise.js](/omise-js). Related article: [Collecting card information](/collecting-card-information).

### Endpoint

```
POST https://vault.omise.co/tokens
```
<div id="token-creation-parameters"></div>
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

### Curl

<div class="Notice">
  Reminder: <strong>Sensitive card data should never go through your server.</strong>
  Unless you have a very good reason and know what you are doing, the following method of token creation should only be used with fake data in test mode (e.g.: Quickly creating some fake data, testing our API from a terminal, ...)
</div>

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

<div class="Notice">
  Reminder: <strong>Sensitive card data should never go through your server.</strong>
  Unless you have a very good reason and know what you are doing, the following method of token creation should only be used with fake data in test mode (e.g.: Quickly creating some fake data, testing our API from a terminal, ...)
</div>

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

### Python

<div class="Notice">
  Reminder: <strong>Sensitive card data should never go through your server.</strong>
  Unless you have a very good reason and know what you are doing, the following method of token creation should only be used with fake data in test mode (e.g.: Quickly creating some fake data, testing our API from a terminal, ...)
</div>

```python
token = omise.Token.create(
  name="Somchai Prasert",
  number="4242424242424242",
  expiration_month=10,
  expiration_year=2018,
  city="Bangkok",
  postal_code="10320",
  security_code=123
)
```

### C&#35;

<div class="Notice">
  Reminder: <strong>Sensitive card data should never go through your server.</strong>
  Unless you have a very good reason and know what you are doing, the following method of token creation should only be used with fake data in test mode (e.g.: Quickly creating some fake data, testing our API from a terminal, ...)
</div>

```c#
var card = new CardCreateInfo ();
card.Name = "Somchai Prasert";
card.Number = "4242424242424242";
card.ExpirationMonth = 10;
card.ExpirationYear = 2018;
card.City = "Bangkok";
card.PostalCode = "10320";

var token = new TokenInfo ();
token.Card = card;

var resultToken = client.TokenService.CreateToken (token);
```

### PHP

<div class="Notice">
  Reminder: <strong>Sensitive card data should never go through your server.</strong>
  Unless you have a very good reason and know what you are doing, the following method of token creation should only be used with fake data in test mode (e.g.: Quickly creating some fake data, testing our API from a terminal, ...)
</div>

$token = OmiseToken::create(
	array('card' => array(
		'name' => 'Somchai Prasert',
		'number' => '4242424242424242',
		'expiration_month' => 10,
		'expiration_year' => 2018,
		'city' => 'Bangkok',
		'postal_code' => '10320',
		'security_code' => 123
	))
);
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
