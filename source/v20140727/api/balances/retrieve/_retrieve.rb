Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

balance = Omise::Balance.retrieve

# After retrieving it, the balance can be refreshed:
balance.reload
