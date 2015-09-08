import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

balance = omise.Balance.retrieve()
balance.total
