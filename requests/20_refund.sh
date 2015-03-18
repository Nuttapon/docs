#!/bin/sh
curl "https://api.omise.co/charges/%{charge}/refunds" \
  -X POST \
  -u %{skey}: \
  -d "amount=20000"
