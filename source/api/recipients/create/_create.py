import omise

omise.api_secret = 'skey_test_4xs8breq3htbkj03d2x'

recipient = omise.Recipient.create(
    name='Somchai Prasert',
    email='somchai.prasert@example.com',
    type='individual',
    bank_account=dict(
        brand='bbl',
        number='1234567890',
        name='SOMCHAI PRASERT'
    )
)