<?php

$customer = OmiseCustomer::retrieve('cust_test_4xtrb759599jsxlhkrb');
$customer->destroy();
$customer->isDestroyed(); # => true
