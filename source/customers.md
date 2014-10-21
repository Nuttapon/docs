---
title: Managing the customers
excerpt: You will be guided how to create, update and delete the customer.
---

## Creating a customer

Creating a customer is super easy, you need nothing. However, you can specify the email, description if needed. The library also allow you to assign a new card to the customer.

#### Ruby
```ruby
customer = Omise::Customer.create({
  email: "test@localhost.com", #optional, max length 255
  description: "Test creating a customer", #optional, max length 255
})
```

#### C&#35;
```c#
var customerCreateInfo = new CustomerCreateInfo(){
  Email = "test@localhost",
  Description = "Test creating a customer"
};

var customer = client.CustomerService.CreateCustomer(customerCreateInfo);
```

### Creating a customer and also assign a card

#### Ruby
```ruby
customer = Omise::Customer.create({
  email: "test@localhost.com", #optional, max length 255
  description: "Test creating a customer", #optional, max length 255
  card: card_token #card token created from Omise.js or other library
})
```

#### C&#35;
```c#
var customerCreateInfo = new CustomerCreateInfo(){
  Email = "test@localhost",
  Description = "Test creating a customer",
  CardToken = cardToken
};

var customer = client.CustomerService.CreateCustomer(customerCreateInfo);
```

You can also pass card dictionary if you want to

#### Ruby

```ruby
customer = Omise::Customer.create({
  email: "test@localhost.com", #optional, max length 255
  description: "Test creating a customer", #optional, max length 255
  card: {
    number: "4242424242424242",
    expiration_year: "2017",
    expiration_month: "9",
    name: "Test card",
    security_code: "123"
  }
})
```

#### C&#35;
```c#
var customerCreateInfo = new CustomerCreateInfo(){
  Email = "test@localhost",
  Description = "Test creating a customer",
  CardCreateInfo = new CardCreateInfo(){
    Number = "4242424242424242",
    ExpirationYear = 2017,
    ExpirationMonth = 9,
    Name = "Test card",
    SecurityCode = "123"
  }
};
```


## Updating a customer
You can update the customer's email and description together with adding a new card. You can also pass the default card id to change the default customer's card uses for charging.

#### Ruby
```ruby
customer = Omise::Customer.retrieve(customer_id)
customer.update { description: "Test updating a customer", 
                  card: card_token, 
                  default_card: card_id }
```

#### C&#35;
```c#
var customerUpdateInfo = new CustomerUpdateInfo(){
  Email = "test@localhost",
  Description = "Test updating a customer",
  CardToken = cardToken,
  DefaultCardId = cardId
};

var customer = client.CustomerService.UpdateCustomer(customerUpdateInfo);
```

The following example shows that you can pass card dictionary for updating a customer

#### Ruby

```ruby
customer = Omise::Customer.retrieve(customer_id)
customer.update { description: "Test updating a customer", 
                  card: {
                          number: "4242424242424242",
                          expiration_year: "2017",
                          expiration_month: "9",
                          name: "Test card",
                          security_code: "123"
                        }, 
                  default_card: card_id }
```

#### C&#35;
```c#
var customerUpdateInfo = new CustomerUpdateInfo(){
  Email = "test@localhost",
  Description = "Test creating a customer",
  CardCreateInfo = new CardCreateInfo(){
    Number = "4242424242424242",
    ExpirationYear = 2017,
    ExpirationMonth = 9,
    Name = "Test card",
    SecurityCode = "123"
  }
};

var updateResult = client.CustomerService.UpdateCustomer(customerUpdateInfo);
```

You may want to learn how to [manage customer cards](./cards.html)

## Getting a customer

### Ruby
```ruby
customer = Omise::Customer.retrieve(customer_id)
```
#### C&#35;
```c#
var customer = client.CustomerService.GetCustomer(customerId);
```

## Deleting a customer

### Ruby
```ruby
customer = Omise::Customer.retrieve(customer_id)
customer.destroy
customer.destroyed? # => true
```
#### C&#35;
```c#
var deleteResult = client.CustomerService.DeleteCustomer(customerId);
//deleteResult.deleted => true
```
