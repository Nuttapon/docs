Customer customer = Customer.retrieve("cust_test_4xsjvylia03ur542vn6");
Card card = customer.getCards().retrieve("card_test_4xsjw0t21xaxnuzi9gs");
card.update(new HashMap<String, Object>() {
  {put("expiration_month", 11);}
  {put("expiration_year", 2017);}
  {put("name", "Somchai Praset");}
  {put("postal_code", "10310");}
});
