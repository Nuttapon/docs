#!/bin/sh
curl https://api.omise.co/transactions/trxn_test_5086v66oxpujs6nll93 \
  -X GET \
  -u %{skey}:
