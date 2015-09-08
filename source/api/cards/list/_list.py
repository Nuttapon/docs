import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

customer = omise.Customer.retrieve("cust_test_4xsjvylia03ur542vn6")
cards = customer.cards
