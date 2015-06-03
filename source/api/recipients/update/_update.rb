require "omise"

Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

recipient = Omise::Recipient.retrieve("recp_test_5086xmr74vxs0ajpo78")
recipient.update({
  email: "somchai@prasert.com",
  bank_account: {
    brand: "kbank",
    number: "1234567890",
    name: "SOMCHAI PRASERT"
  }
})
