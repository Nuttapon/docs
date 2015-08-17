import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

charge = omise.Charge.create(
  amount=100000,
  currency="thb",
  card="tokn_test_4xs9408a642a1htto8z"
)
