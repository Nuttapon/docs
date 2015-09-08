import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

transfer = omise.Transfer.retrieve('trsf_test_4y3miv1nhy0rceit4w4')
transfer.destroy()
transfer.destroyed # => true
