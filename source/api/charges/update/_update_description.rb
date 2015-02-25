Omise.api_key = "skey_test_4xsjvwfnvb2g0l81sjz"

charge = Omise::Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
charge.update(description: "Another description")
