<?php

$customer = OmiseCustomer::retrieve('cust_test_4xsjvylia03ur542vn6');
$card = $customer->getCards()->retrieve('card_test_4xsjw0t21xaxnuzi9gs');
$card->destroy();

$card->isDestroyed(); # => true
