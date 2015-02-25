account = omise.Account.retrieve()

# After retrieving it, the account can be refreshed:
account.reload()
