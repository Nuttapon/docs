<?php

$recipient = OmiseRecipient::retrieve('recp_test_4z6p7e0m4k40txecj5o');
$recipient->update(array(
  'name' => 'Omise Tester',
  'email' => 'tester@omise.co',
  'description' => 'Another description'
));