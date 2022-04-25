<?php

// Require database & thông tin chung
require_once 'core/init.php';

// Xoá session
$session->destroy();
new Redirect('http://localhost/ct275_do_an/'); // Trở về trang index

?>