<?php

$customer = OmiseCustomer::retrieve('cust_test_4xsjvylia03ur542vn6');
$card = $customer->getCards()->retrieve('card_test_4xsjw0t21xaxnuzi9gs');
$card->update(array(
  'expiration_month' => 11,
  'expiration_year' => 2017,
  'name' => 'Somchai Praset',
  'postal_code' => '10310'
));
