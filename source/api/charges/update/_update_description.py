import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

charge = omise.Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
charge.update(description="Another description")

# Or alternatively:
charge.description = "Another description"
charge.update()
