<?php

$transfer = OmiseTransfer::retrieve('trsf_test_4y3miv1nhy0dceit4w4');
$transfer->destroy();
$transfer->isDestroyed(); # => true
