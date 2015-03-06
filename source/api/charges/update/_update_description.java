Charge charge = Charge.retrieve("chrg_test_4xso2s8ivdej29pqnhz")
charge.update(new HashMap<String, Object>() {
		{put("description", "Another description");}
	});
