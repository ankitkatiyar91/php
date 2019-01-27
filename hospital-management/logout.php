<?php
session_start();
session_unset();
session_destroy();
header('index.php?err=2');
exit;
?>