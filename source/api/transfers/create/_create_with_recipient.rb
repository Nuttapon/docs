require "omise"

Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

transfer = Omise::Transfer.create({
  recipient: "recp_test_4z6p7e0m4k40txecj5o",
  amount: 100000,
})
