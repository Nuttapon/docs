<?php

$charge = OmiseCharge::retrieve('chrg_test_4xso2s8ivdej29pqnhz');
$charge->update(array(
  'description' => 'Another description'
));
