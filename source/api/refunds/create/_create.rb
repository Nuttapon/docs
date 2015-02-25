charge = Omise::Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
refund = charge.refunds.create(amount: 10000)
