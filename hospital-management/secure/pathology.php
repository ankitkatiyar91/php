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
<head>
<title>Hospital Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="css/property.css">
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bgcolor="#FFFFFF">
<table bgcolor="#FFFFFF" width="100%" border="0" align="center">
<tr><td height="20" width="100%"><?php include("top.php");?></td></tr>
<tr>
<td>
	<fieldset>
	<legend><b>Pathology Test</b></legend>
	<table border="0" width="100%">
	<tr><td colspan="8"><font size="5" class="internal">Following test are available to perform. &nbsp; To perform any of test select the test. If you have a registration no. of the patient then enter the&nbsp;<i><b>Patient Registration No</b></i>  to find the test referred by the doctor.</font></td></tr>
	<tr><td height="30">&nbsp;&nbsp;</td></tr>
	<tr><td colspan="8">
	<fieldset><legend><b>Patient Information</b></legend>
	<table>
	<tr><td>
	<?php
	if($_SESSION['pregno'])
	{	
		$pno=$_SESSION['pregno'];
		echo('	Patient Registration No. ->&nbsp;&nbsp;<b>'.$pno);
		echo('</b><input type="button" value="new" >');
	}
	else
	{
	echo('<form method="post" action="">');
	echo('	Patient Registration No.&nbsp;<input type="text" size="15" name="setpno"> &nbsp;&nbsp;&nbsp;<input type="submit" value="Find"> ');
	$_SESSION["pregno"]=$_POST['setpno'];
	echo('	</form>');
	}
	?>
	</td></tr>
	</table>
	</fieldset>
	</td></tr>
	<b><tr><td width="20">&nbsp;</td>
	<td width="20"><a href="biochemistry.php"><img src="image/biochemistry.jpg"  alt="Biochemistry Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	<td width="20"><a href="blood.php"><img src="image/blood.jpg"  alt="Blood Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	<td width="20"><a href="ecg.php"><img src="image/ecg.jpg"  alt="ECG Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	<td width="20"><a href="urine.php"><img src="image/urine.jpg"  alt="Urine Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	</tr><tr><td height="30">&nbsp;&nbsp;</td></tr><tr><td width="20">&nbsp;</td>
	<td width="20"><a href="colonoscopy.php"><img src="image/colonoscopy.jpg"  alt="Colonoscopy Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	<td width="20"><a href="stool.php"><img src="image/stool.jpg"  alt="Stool Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	<td width="20"><a href="xray.php"><img src="image/xray.jpg"  alt="X-Ray Test" border="2" align="top"></a></td><td width="20">&nbsp;</td>
	</tr>
	</b><tr><td height="30" colspan="8">&nbsp;&nbsp;</td></tr>
	<tr><td colspan="8">
	<font size="+1">before the fotter </font>
	</td></tr>
	</table></fieldset>
	

</td>
</tr>
<tr><td><?php include("bottom.php");?></td>
</tr>
</table>
</body>
</html>