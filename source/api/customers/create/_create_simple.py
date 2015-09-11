import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

customer = omise.Customer.create(
  email="john.doe@example.com",
  description="John Doe (id: 30)"
)
