Transfer transfer = Transfer.retrieve("trsf_test_4xs5px8c36dsanuwztf");
transfer.update(new HashMap<String, Object>() {
		{put("amount", 50000);}
	});
