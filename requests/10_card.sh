#!/bin/sh
curl https://api.omise.co/customers/%{customer}/cards/%{card} \
  -u %{skey}:
