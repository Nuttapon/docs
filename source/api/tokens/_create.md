## Create a token

On a Production environment, create tokens from your users browser using [Omise.js](/omise-js). Related article: [Collecting card information](/collecting-card-information).

Reminder: **Sensitive card data should never go through your server.**
For this reason, our documentation does not contain any server-side token creation code.
If you wish to quickly and easily generate fake test data, Curl commands are available on [the dashboard inline documentation](https://dashboard.omise.co/test/customers)


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


