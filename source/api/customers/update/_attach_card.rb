Omise.api_key = "skey_test_4xsjvwfnvb2g0l81sjz"

customer = Omise::Customer.retrieve("cust_test_4xtrb759599jsxlhkrb")
customer.update(card: "tokn_test_4xs9408a642a1htto8z")
