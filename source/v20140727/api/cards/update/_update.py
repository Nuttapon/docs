import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

customer = omise.Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
card = customer.cards.retrieve("card_test_4xsjw0t21xaxnuzi9gs")
card.update(
  expiration_month=11,
  expiration_year=2017,
  name="Somchai Praset",
  postal_code="10310"
)

# Or alternatively:
card.expiration_month = 11
card.expiration_year = 2017
card.name = "Somchai Praset"
card.postal_code = "10310"
card.update()
