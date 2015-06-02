#!/usr/bin/env bash
curl https://api.omise.co/recipients \
    -X POST \
    -u %{skey}: \
    -d "name=James Smith" \
    -d "email=secondary@recipient.co" \
    -d "description=Secondary recipient" \
    -d "type=individual" \
    -d "tax_id=1234567890" \
    -d "bank_account[brand]=test" \
    -d "bank_account[number]=acc12345" \
    -d "bank_account[name]=James Smith"
