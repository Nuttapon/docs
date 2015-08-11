transfer = omise.Transfer.retrieve("trsf_test_4y3miv1nhy0dceit4w4")
transfer.update(amount=50000)

# Or alternatively:
transfer.amount = 50000
transfer.update()
