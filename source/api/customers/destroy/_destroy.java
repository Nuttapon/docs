Customer customer = Customer.retrieve("cust_test_4xtrb759599jsxlhkrb");
DeleteCustomer deleteCustomer = customer.destroy();

deleteCustomer.isDestroyed(); # => true
