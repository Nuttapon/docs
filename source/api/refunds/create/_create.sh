#!/bin/sh
curl https://api.omise.co/charges/chrg_test_4ype2jynk2len88i4er/refunds \
  -X POST \
  -u skey_test_4ypcvnwzy9ob6gs89pn: \
  -d "amount=100000"
