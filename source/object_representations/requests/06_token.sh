#!/bin/sh
curl https://vault.omise.co/tokens \
  -X POST \
  -u %{pkey}: \
  -d "card[name]=Somchai Prasert" \
  -d "card[number]=4242424242424242" \
  -d "card[expiration_month]=10" \
  -d "card[expiration_year]=2018" \
  -d "card[city]=Bangkok" \
  -d "card[postal_code]=10320" \
  -d "card[security_code]=123"
