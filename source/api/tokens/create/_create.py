import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

token = omise.Token.create(
  name="Somchai Prasert",
  number="4242424242424242",
  expiration_month=10,
  expiration_year=2018,
  city="Bangkok",
  postal_code="10320",
  security_code=123
)
