import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

dispute = omise.Dispute.retrieve(status='closed')