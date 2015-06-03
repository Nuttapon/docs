require "omise"

Omise.api_key = "skey_test_4xs8breq3htbkj03d2x"

dispute = Omise::Dispute.retrieve("dspt_test_4zgf15h89w8t775kcm8")
dispute.update({
  message: "Proofs and other information regarding the disputed charge ..."
})
