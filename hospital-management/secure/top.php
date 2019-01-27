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

 <html>
<head>
<title>Top</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="property.css">
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">
<table background="image/top.jpg"  width="100%" height="100">
<tr>
    <td><font size="+5" face="Monotype Corsiva" style="italic">Hospital Management</font> </td>
    <td align="right"> 
	<table  cellpadding="0" cellspacing="0" align="right" border="0" width="100%">
        <tr><td height="55"><font size="+2" face="Times New Roman, Times, serif">
		<?php echo('Welcome '.$fname);?>
		</font></td></tr> 
          <tr>
		  <td><?php echo('Your IP is'.$uip);?></td>
			
          <td align="center">&nbsp; </td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
</tr>
</table>
<table><tr><td><?php include'index.html' ?></td></tr></table>
</body>
</html>
