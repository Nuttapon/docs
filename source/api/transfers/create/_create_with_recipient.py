import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

transfer = omise.Transfer.create(
	amount=100000,
	recipient='recp_test_4z6p7e0m4k40txecj5o'
)
