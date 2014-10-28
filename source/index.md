---
title: Getting Started
excerpt: In these pages you'll find all information you need to get started and start receiving payments on your website.
---

## How It All Works

The first articles will give you a general overview of Omise so you have a good understanding of how all the pieces into place. More details are available for each steps into their own separate articles.

### Collecting Credit Card Information

The first step is to collect your customer credit card information. Any sensitive card data that transits, gets stored or processed through your server requires that you pass an audit in order to be [PCI compliant](https://www.pcisecuritystandards.org/security_standards/documents.php?agreements=pcidss&association=pcidss).
This is where Omise comes in: We are PCI certified and our API allows your server to never touch sensitive data!

To collect credit cards on your website, Omise offers a small Javascript library called [Omise.js](https://github.com/omise/omise.js). It can be integrated on your website very easily and will still allow you to use your own forms.
It works by tokenizing the card:

*  Your users fill in their credit card details on your form. They never leave your website!
*  Omise.js sends us the data and we return a token.
*  You can use this token to create a one-time charge or save the card under a Customer on our servers for later use.

[Learn more about Omise.js and Tokens](./collecting-card-information.html)

### Charging Cards

Next up is charging your customer card. This can be done using the token you received during the previous step. We offer multiple options for this: You can use one of our libraries, your language standard library or even curl. Our API follows a REST architecture.

Omise also offers a convenient abstraction atop Cards called Customers. If you choose to use the token to attach the card to a customer, you can reuse that customer object later on to charge the card again. Your users will never have to enter their details twice!

[Learn more on how to charge cards](./charging-cards.html)
