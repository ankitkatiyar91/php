<?php
include 'db.php';
?>
 <?php echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Biochemistry</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="css/property.css">
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bgcolor="#FFFFFF">
<table bgcolor="#FFFFFF" width="100%" border="0" align="center">
<tr><td height="20" width="100%"><?php include("top.php");?></td></tr>
<tr>
<td>
<fieldset><legend><b>Biochemistry Test</b></legend>
<table>
<?php
if($_SESSION['pregno'])
{
$pregno=$_SESSION['pregno'];
$sql="SELECT * FROM `patient` WHERE registration_no = '$pregno'";
$rs=mysql_query($sql,$conn);
$fname=mysql_result($rs,0,name);
echo('<tr><td width="10">&nbsp;</td><td>Patient Registration no.:- &nbsp<b>'.$pregno.'</b></td><td width="20">&nbsp;</td>');
echo('<td>Patient Name :- &nbsp&nbsp;<b>'.$fname.'</b></td><td width="20">&nbsp;</td>');
echo('<td>Date :- &nbsp&nbsp;<b>'.'</b></td></tr>');
}
?>
</table>
</fieldset>
	

</td>
</tr>
<tr><td><?php include("bottom.php");?></td>
</tr>
</table>
</body>
</html>