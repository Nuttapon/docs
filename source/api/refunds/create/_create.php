<?php

$charge = OmiseCharge::retrieve("chrg_test_4xso2s8ivdej29pqnhz");
$refund = $charge->refunds()->create(array('amount' => 10000));
