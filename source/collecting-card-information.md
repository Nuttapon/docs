---
title: Collecting Card Information
excerpt: This article will help you build a form that will let you collect cards directly from a page on your website and tokenize them.
---

Omise provides an easy way to collect cards information called  [Omise.js](/omise-js). This client-side JavaScript library let you have your own custom HTML form running on your customer's browser and will send the sensitive card data to Omise server in exchange for a card token. The card token can then be forwarded to your server for processing. This way your server doesn't have to deal with any sensitive card information.

On a high level this is how it works:

  - Using Omise.js and your public key, send the cardholder data from your customer's browser to Omise,
  - Omise tokens service responds with a single-use card token,
  - Forward the token back to your server,
  - Use this token to take an action on the card. You can [charge the card](/api/charges), [save the card on a new customer](/api/customers) or [attach the card to an existing one](/api/customers).

You can learn more about the tokens API in the [tokens reference](/api/tokens).

### A full fledged example

First you need to insert Omise.js into your webpage you can add it before the closing `</body>` tag.

```html
<script src="https://cdn.omise.co/omise.js"></script>
```

Then add your public key to let Omise.js authenticates against Omise API:

```html
<script>
  Omise.setPublicKey("pkey_test_4xpip92iqmehclz4a4d");
</script>
```

Next you need a form that will collect the card details.

```html
<form action="/checkout" method="post" id="checkout">
  <div id="token_errors"></div>

  <input type="hidden" name="omise_token">

  <div>
    Name<br>
    <input type="text" data-omise="holder_name">
  </div>
  <div>
    Number<br>
    <input type="text" data-omise="number">
  </div>
  <div>
    Date<br>
    <input type="text" data-omise="expiration_month" size="4"> /
    <input type="text" data-omise="expiration_year" size="8">
  </div>
  <div>
    Security Code<br>
    <input type="text" data-omise="security_code" size="8">
  </div>

  <input type="submit" id="create_token">
</form>
```

Next we need to trigger the creation of the token when the submit button is pressed. Then fill the token field and clear the other fields so they are not submitted to your server

```js
$("#checkout").submit(function () {

  var form = $(this);

  // Disable the submit button to avoid repeated click.
  form.find("input[type=submit]").prop("disabled", true);

  // Serialize the form fields into a valid card object.
  var card = {
    "name": form.find("[data-omise=holder_name]").val(),
    "number": form.find("[data-omise=number]").val(),
    "expiration_month": form.find("[data-omise=expiration_month]").val(),
    "expiration_year": form.find("[data-omise=expiration_year]").val(),
    "security_code": form.find("[data-omise=security_code]").val()
  };

  // Send a request to create a token then trigger the callback function once
  // a response is received from Omise.
  //
  // Note that the response could be an error and this need to be handled within
  // the callback.
  Omise.createToken("card", card, function (statusCode, response) {
    if (response.object == "error") {
      // Display an error message.
      $("#token_errors").html(response.message);

      // Re-enable the submit button.
      form.find("input[type=submit]").prop("disabled", false);
    } else {
      // Then fill the omise_token.
      form.find("[name=omise_token]").val(response.id);

      // And submit the form.
      form.get(0).submit();
    };
  });

  // Prevent the form from being submitted;
  return false;

});
```

All done.
