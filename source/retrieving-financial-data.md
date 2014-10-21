---
title: Retrieving Financial Data
excerpt: You will learn how to retrieve your financial data such as balance amount and transactions
---

## Your Balance
In order to get your balance information, we offer a very easy way to do that

#### Ruby
```ruby
balance = Omise::Balance.retrieve
#balance.total is total balance
#balance.available is available balance which can be transferred
#balance.currency is currency of the balance
```

#### C&#35;
```c#
var balance = client.BalanceService.GetBalance();
//balance.Total is total balance
//balance.Available is available balance which can be transferred
//balance.Currency is currency of the balance
```

## The Transactions List
You will get a transaction list object which also contain pagination attributes. Those attributes can be used for doing a query.

#### C&#35;
```c#
//the request takes the following forms
//  var transactions = client.TransactionService.GetAllTransactions (DateTime? from, DateTime? to, int offset, int limit);
//where : -
//  from and to are used to specify range of transaction creation date, these two parameters are optional
//  limit = maximum numbers of records return
//  offset = index where the return record starts

var transactions = client.TransactionService.GetAllTransactions (null, null, 0, 20);
//transactions.Limit
//transactions.Offset
//transactions.Total returns total amount of records
//transactions.Collection returns list of transaction object
```
