import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

recipient = omise.Recipient.retrieve("recp_test_511zkbdo44p30knf2lc")
recipient.destroy()