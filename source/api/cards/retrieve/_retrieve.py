import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

customer = omise.Customer.retrieve('cust_test_4xsjvylia03ur542vn6')
card = customer.cards.retrieve('card_test_4xsjw0t21xaxnuzi9gs')

# Note that you can reload the card once you have an instance of one.
card.reload()
