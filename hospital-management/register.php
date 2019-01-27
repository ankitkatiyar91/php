<?php echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hospital</title>
<link rel="stylesheet" type="text/css" href="property.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0" bgcolor="#FFFFFF">
<table width="100%" border="0" bgcolor="#FFFFFF">
<tr><td height="20" width="100%"><?php include("top.php"); ?></td></tr>

<tr bgcolor="#ffffff">

    <td height="500" >
	<table border="0">
	<tr><td width="300">&nbsp; </td>
	<td>
	<fieldset><legend><b>Register</b></legend>
     <table border="0">

<form method="get" name="registeration">
<tr>
<td>First Name</td><td><input type="text" size="15" value=""></td><td>Last Name</td><td><input type="text" size="15" value=""></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Middle Name</td><td><input type="text" size="15" value=""></td><td><sub><font color="#3300FF">* Optional</font></sub></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Username</td><td><input type="text" size="20" value=""></td><td><input type="button" value="Check Availability"></td>
</tr>
<tr><td>add a script..</td></tr>
<tr>
<td>Password</td><td><input type="password" size="20" value=""></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Retype Password</td><td><input type="password" size="20" value=""></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Profession</td><td><input type="text" size="15" value=""></td><td>Specialisation</td><td><input type="text" size="15" value=""></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Contact No.</td><td><input type="text" maxlength="10" size="10" value=""></td><td>Mobile No.</td><td><input size="10" type="text" value="" maxlength="10"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Address 1</td><td colspan="2"><input type="text" height="60" width="200"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Address 2</td><td colspan="2"><input type="text" height="60" width="200"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr><td colspan="4" align="center"><input type="submit" value="Register" height=""></td></tr>

</form>

</table>
  </fieldset>
  <td>&nbsp;</td>
</tr></table>
	</td>
	
  </tr>

<tr><td><?php include("bottom.php"); ?></td></tr>
</table>

</body>

</html>
