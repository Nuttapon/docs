import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

recipient = omise.Recipient.retrieve("recp_test_511zkbdo44p30knf2lc")
recipient.update(
    email='somchai@prasert.com',
    bank_account=dict(
        brand='kbank',
        number='1234567890',
        name='SOMCHAI PRASERT'
    )
)