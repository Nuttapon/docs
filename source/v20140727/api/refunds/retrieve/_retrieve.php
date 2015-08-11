<?php

$charge = OmiseCharge::retrieve("chrg_test_4xso2s8ivdej29pqnhz");
$refund = $charge->refunds()->retrieve("rfnd_test_4ypebtxon6oye5o8myu");
