#!/bin/sh
curl https://api.omise.co/transactions/trxn_test_4z9d4abslzu19kjdc5h \
  -X GET \
  -u %{skey}:
