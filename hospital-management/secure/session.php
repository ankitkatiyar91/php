<?php
session_start();
if(!isset($_SESSION['username']))
{
 header('Location: ../?err=3');
 exit;
 $time=5;
 $diff=(time()-$_SESSION["activetime"]);
 if($diff>$time)
 {
header('Location: ../?err=4');
exit;
}
}
$fname=$_SESSION['firstname'];
$ip=$_SESSION['ip'];
$lastlogin=$_SESSION['lastlogin'];
$_SESSION["activetime"]=time();
?>
