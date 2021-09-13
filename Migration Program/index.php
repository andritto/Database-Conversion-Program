<?php
require 'vendor/autoload.php';

function require_all ($path) {

    foreach (glob($path.'*.php') as $filename) require_once $filename;

}
$currentDateTime = (new DateTime())->format('Y-m-d H:i:s');
require_all('manager/');
require_all('models/');
require_all('controller/');

