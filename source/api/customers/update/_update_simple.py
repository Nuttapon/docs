customer = omise.Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
customer.update(
  email="john.smith@example.com",
  description="Another description"
)

# Or alternatively:
customer.email = "john.smith@example.com"
customer.description = "Another description"
customer.update()
