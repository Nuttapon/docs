---
title: Getting Started
excerpt: In those pages you'll find all information you need to get started and start receiving payments from your website.
---

## How It All Works

To be able to receive payment on your website you first need to get a bird eye view of all the steps that you need to take. This document outlines just that without going into to much details at first. More details are available for each steps into their own separate articles.

### Collecting Credit Card Information

First is to collect your customer credit card information. Those information are sensitive and needs to be protected at all cost. If you're already PCI certified you already know how much works is required to get there and it's unnecessary to bother you with the details all over again. If you're not, at least remember this: any sensitive card data that transit, get stored or processed through your server requires that you pass an audit in order to be PCI compliant. If you want to do all the above, good luck to you.

But for you that just want to get paid there must be a better way. That's the moment where Omise comes in. You don't need to go through so much pain and tears. Send us those sensitive card data and we'll make sure to keep them safe but accessible so you can charge your customers when you need to.

To collect credit cards on your website Omise offers a small Javascript library called [Omise.js](https://github.com/omise.omise.js) that you can integrate on your website in a few minutes. Omise.js let's you use your own forms on your own website and still don't transmit, store, or process the credit card information on your own servers. We'll take care of that for you through a process called tokenization. In exchange to the card data we'll give you a token that represents the card. You can then use that token to charge your customer card.

[Learn more about Omise.js and Tokens](./collecting-card-information.html)

### Charging Cards

Next up is charging your customer card. Using the token you received during the previous step you can then create a charge object using one of our libraries or simply by using your language standard library or even a tool like curl. Our API follows a REST architecture.

Omise also offers a nice abstraction atop Cards called Customers that you can use to remember which cards belongs to which customers and let you use their customer ID instead of having to exchange tokens every time you want to charge a recurring customers.

[Learn more on how to charge cards](./collecting-card-information.html)
