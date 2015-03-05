#!/bin/sh
curl https://api.omise.co/charges \
  -X POST \
  -u %{skey}: \
  -d "amount=100000" \
  -d "currency=thb" \
  -d "customer=%{customer}"
