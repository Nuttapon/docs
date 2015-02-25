<?php

$customer = OmiseCustomer::retrieve('cust_test_4xtrb759599jsxlhkrb');
$customer->update(array(
  'email' => 'john.smith@example.com',
  'description' => 'Another description'
));
