## Destroy a customer

### Endpoint

```
DELETE https://api.omise.co/customers/CUSTOMER_ID
```

### CURL

```sh
curl http://api.omise.co/customers/cust_test_4xtrb759599jsxlhkrb \
  -X DELETE \
  -u skey_test_4xsjvwfnvb2g0l81sjz:
```

### Ruby

```ruby
customer = Omise::Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
customer.destroy
customer.destroyed? # => true
```

### C&#35;

```c#
var deleteResult = client.CustomerService.DeleteCustomer("cust_test_4xtrb759599jsxlhkrb");
// deleteResult.deleted => true
```

### JSON Response

```json
{
  "object": "customer",
  "id": "cust_test_4xtrb759599jsxlhkrb",
  "livemode": false,
  "deleted": true
}
```
