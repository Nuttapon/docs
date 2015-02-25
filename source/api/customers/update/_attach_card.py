customer = omise.Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
customer.update(
  card="tokn_test_4xs9408a642a1htto8z"
)

# Or alternatively:
customer.card = "tokn_test_4xs9408a642a1htto8z"
customer.update()
