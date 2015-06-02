<?php
$balance = OmiseBalance::retrieve();
// After retrieving it, the balance can be refreshed:
$balance->reload();
