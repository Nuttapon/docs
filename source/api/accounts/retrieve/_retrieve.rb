Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

account = Omise::Account.retrieve

# After retrieving it, the account can be refreshed:
account.reload
