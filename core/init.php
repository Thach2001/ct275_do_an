<?php

// Require các thư viện PHP
require_once 'classes/DB.php';
require_once 'classes/Session.php';
require_once 'classes/Functions.php';

// Kết nối database
$db = new DB();
$db->connect();
$db->set_char('utf8');

$_DOMAIN = 'http://localhost/ct275_do_an/';

?>