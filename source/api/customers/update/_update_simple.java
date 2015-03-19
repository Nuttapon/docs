Customer customer = Customer.retrieve("cust_test_4xtrb759599jsxlhkrb");
customer.update(new HashMap<String, Object>() {
  {put("email", "john.smith@example.com");}
  {put("description", "Another description");}
});
