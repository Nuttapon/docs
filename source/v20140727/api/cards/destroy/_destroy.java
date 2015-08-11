Customer customer = Customer.retrieve("cust_test_4xsjvylia03ur542vn6");
Card card = customer.getCards().retrieve("card_test_4xsjw0t21xaxnuzi9gs");
DeleteCard deleteCard = card.destroy();
deleteCard.isDestroyed(); // => true
