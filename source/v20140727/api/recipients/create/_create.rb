require "omise"

Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

recipient = Omise::Recipient.create({
  name: "Somchai Prasert",
  email: "somchai.prasert@example.com",
  type: "individual",
  bank_account: {
    brand: "bbl",
    number: "1234567890",
    name: "SOMCHAI PRASERT"
  }
})
