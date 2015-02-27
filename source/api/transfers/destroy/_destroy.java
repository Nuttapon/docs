Transfer transfer = Transfer.retrieve("trsf_test_4xs5px8c36dsanuwztf");
DeleteTransfer deleteTransfer = transfer.destroy();
deleteTransfer.isDestroyed(); # => true
