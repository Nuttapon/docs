require "omise"

Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

transfer = Omise::Transfer.create({
  recipient: "recp_test_5086xmr74vxs0ajpo78",
  amount: 100000,
})
