<?php

$recipient = OmiseRecipient::create(array(
  'name' => 'Omise Tester',
  'description' => 'Tester account',
  'email' => 'tester@omise.co',
  'type' => 'individual',
  'tax_id' => '',
  'bank_account' => array(
    'brand' => 'bbl',
    'number' => '1234567890',
    'name' => 'Tester Account'
  )
));
