<?php 
session_start();
include 'db.php';
if(isset($_POST['username']))
{
	$uname=$_POST['username'];
	$upwd=$_POST['password'];
	$sql="select count(*) as num from login where username='$uname' and userpassword=md5('$upwd')";
	$rs=mysql_query($sql,$conn);
	$c=mysql_result($rs,0,num);
	if($c=='1')
	{
		//echo('validated');
		echo('<br>');
		$sql="select fname,date_format(lastlogin,'%D-%b-%Y'),time(lastlogin) as d,ip , authority from login where username='$uname'";
		$rs1=mysql_query($sql,$conn);
		$c1=mysql_result($rs1,0,fname);
		$c2=mysql_result($rs1,0,d);
		$c3=mysql_result($rs1,0,authority);
		echo('First Name  '.$c1);
		echo('<br>');
		echo('Time of last login  '.$c2);
		echo('<br>');
		$i=mysql_result($rs1,0,ip);
		echo('IP of  user  '.$i);
		echo('<br>');
		$_SESSION["username"]=$uname;
		$_SESSION["firstname"]=$c1;
		$_SESSION["lastlogin"]=$c2;
		$_SESSION["authority"]=$c3;
		$ip=$_SERVER['REMOTE_ADDR'];
		$_SESSION["ip"]=$ip;
		$_SESSION["activetime"]=time();
		echo('server ip'.$ip);
		$ipquery="update login set ip='$ip' where username='$uname'";
		$ty="update login set lastlogin=now() where username='$uname'";
		mysql_query($ty,$conn);
		mysql_query($ipquery,$conn);
		mysql_close();
		header('Location:secure');
	}
	else
	{
		echo('invalidated');
		echo('<br>');
		$err=1;
	}
}
else
{}
?>
<! DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" type="text/css" href="property.css">
<title>Hospital Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0" bgcolor="#FFFFFF">
<table height="100%" width="100%" border="0" bgcolor="#ffffff">
<tr>
<td height="96" bgcolor="#ffffff"><?php include("top.php"); ?></td>
</tr>
<td height="47"><tr>
<td height="500" bgcolor="#FFFFFF">
<table align="right" width="300" height="200"border="0" >

<tr><td>
<caption ><font size="+1" color="#ff0000"face="Comic Sans MS" style="Regular">
<?php
if($err=='1')
{
echo('*Invalid username password');
}
if($err=='3')
{
echo('Please login again to continue.');
}
?>
</font></caption>
 </td></tr>

<form name="login" method="post" action="#">
<tr><td><font size="+1" color="#000000"face="Comic Sans MS" style="Regular">USER NAME</font>&nbsp;<input type="text" size="20" value="" name="username"></td></tr>
<tr><td><font size="+1" color="#000000" face="Comic Sans MS" style="Regular">PASSWORD</font>&nbsp;&nbsp;<input type="password" size="20" value="" name="password"></td></tr>
<tr>
            <td align="center"><input type="submit" align="middle" name="login" value="Login" alt="Login"></td>
<td><a href="register.php"><font size="+1" color="#000000" face="Comic Sans MS" style="Regular">signup</font></a></td>
</tr>
</form>

</table>
<td height="130"></td>
  
<td height="112"></tr>
<tr>
<td ><?php include("bottom.php"); ?></td>
</tr>
</table>

</body>
</html>