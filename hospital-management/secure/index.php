<?php
include 'db.php';
include 'session.php';
session_start();
if($_SESSION['firstname'])
{
	$fname=$_SESSION['firstname'];
	$uip=$_SESSION["ip"];
}
?>
 <?php echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="css/property.css" type="text/css" charset="utf-8"/>
<head>
<title>Hospital Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="property.css">
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bgcolor="#FFFFFF">
<table bgcolor="#FFFFFF" width="100%" border="0">
<tr><td height="20" width="100%"><?php include("top.php");?></td></tr>
<tr><td height="100%" width="100%">
	<table>
<tr><td>
<p ><font class="internal" size="4">Welcome to the Hospital management site the site is <br>
 mainly designed to provide a full mangement to the hostipals</font> </p></td>
	<td><img align="center" src="image/img_main.jpg"></td></tr>
</table>
	
	
	<tr><td><?php include("bottom.php");?></td></tr>
</table>
</body>
</html>
