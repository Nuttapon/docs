<?php

$token = OmiseToken::create(array(
  'card' => array(
    'name' => 'Somchai Prasert',
    'number' => '4242424242424242',
    'expiration_month' => 10,
    'expiration_year' => 2018,
    'city' => 'Bangkok',
    'postal_code' => '10320',
    'security_code' => 123
  )
));
