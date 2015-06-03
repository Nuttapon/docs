require "omise"

Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

disputes = Omise::Dispute.list(status: "open")
