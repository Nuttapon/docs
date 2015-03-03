curl https://api.omise.co/recipients/recp_test_4z6p7e0m4k40txecj5o \
    -X PATCH \
    -u skey_test_4xsjvwfnvb2g0l81sjz: \
    -d "name=John Smith" \
    -d "email=john.smith@example.com" \
    -d "bank_account[bank_account_no]=acc123456789"
