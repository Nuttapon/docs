import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

account = omise.Account.retrieve()

# After retrieving it, the account can be refreshed:
account.reload()
