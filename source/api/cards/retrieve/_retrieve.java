Customer customer = Customer.retrieve("cust_test_4xsjvylia03ur542vn6");
Card card = customer.getCards().retrieve("card_test_4xsjw0t21xaxnuzi9gs");

# Note that you can reload the card once you have an instance of one.
card.reload();
