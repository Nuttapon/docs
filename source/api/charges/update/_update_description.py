charge = omise.Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
charge.update(description="Another description")

# Or alternatively:
charge.description = "Another description"
charge.update()
