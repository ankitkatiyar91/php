 <?php echo "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?".">"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php
include 'db.php';
$regno=$_POST['regno'];
$fname=$_POST['fname'];
$mname=$_POST['mname'];
$lname=$_POST['lname'];
$ptype=$_POST['p_type'];
$marital=$_POST['marital'];
$gender=$_POST['gender'];
$religion=$_POST['religion'];
$age=$_POST['age'];
$profession=$_POST['profession'];
$contact=$_POST['cnt'];
$mobile=$_POST['mobile'];
$add1=$_POST['add1'];
$city=$_POST['city'];
$add2=$_POST['add2'];
$responsible=$_POST['responsible'];
$relation=$_POST['rel'];

echo('these are inputs=='.$regno.'-fmane-'.$fname.'-mane-'.$mname.'-laname=>'.$lname.'-ptype='.$ptype.'-marital='.$marital.'-gender='.$gender.'-religion'.$religion.'
-age='.$age.'-profession='.$profession.'-contact='.$contact.'-mobile'.$mobile.'-add1=='.$add1.'-city=='.$city.'add2'.$add2.'-responsible=='.$responsible.'-rel='.$relation);
$name=($fname.' '.$mname. ' '.$lname);
echo('name===='.$name);
if($ptype=='on')
{
$ptype='emergency';
echo('-----ptype-'.$ptype);
}
else{ $ptype='normal'; echo('---ptype--'.$ptype);}
$sql="insert into patient(registration_no,registration_date,name,patient_type,marital,religion,age,profession,contact_no,mobile_no,address1,city,address2,responsible,relation) values('$regno',now(),'$name','$ptype','$marital','%religion','$age','$profession','$contact','$mobile','$add1','$city','$add2','$responsible','relation')";
$rsl=mysql_query($sql,$conn);
if(mysql_query($sql,$conn))
{echo('successful........');}
?>
<head>
<title>Hospital</title>
<link rel="stylesheet" type="text/css" href="css/property.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bgcolor="#FFFFFF">
<table bgcolor="#FFFFFF" width="100%" border="0">
<tr><td height="20" width="100%"><?php include("top.php");?></td></tr>

<tr bgcolor="#ffffff">

    <td height="500" >
	<table border="0">
	<tr><td width="300">&nbsp; </td>
	<td>
	<fieldset><legend><b>Patient Registraion Form</b></legend>
     <table border="0">

<form method="post" name="patientregisteration" action="#">
<tr>
<td>Registraion No.</td><td><input type="text" size="15" value="" name="regno"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>First Name</td><td><input type="text" size="15" value="" name="fname"></td><td>Last Name</td><td><input name="lname" type="text" size="15" value=""></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Middle Name</td><td><input type="text" name="mname" size="15" value=""></td><td><sub><font color="#3300FF">* Optional</font></sub></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Patient Type</td><td>Emergency<input name="p_type" type="radio"  checked="checked"></td><td>Normal<input type="radio" value="true" name="p_type"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
 <td>Responsible Person</td><td><input type="text" size="20" value="" name="responsible"></td><td>Relation</td><td><input type="text" size="20" value="" name="rel"></td>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Marital Status</td><td>
<select name="marital"><option>Single</option><option>Married</option><option>Divorced</option></select>
</td><td>Gender</td><td><select name="gender"><option>Male</option><option>Female</option></select></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
 <td>Religion</td><td><input type="text" size="20" value="" name="religion"></td><td>Age</td><td><select>
 <?php 
 for($i=0;$i<100;$i++)
 {
 echo('<option>'.$i);
 echo('</option>');
 }
 echo('<option>Other</option>');
 ?>
 </select>
</td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Profession</td><td><input type="text" size="15" value="" name="profession"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Contact No.</td><td><input type="text" maxlength="10" size="10" value="" name="cnt"></td><td>Mobile No.</td><td><input size="10" type="text"  name="mobile" value="" maxlength="10"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Address 1</td><td colspan="2"><input type="text" height="60" width="200" name="add1"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>City</td><td colspan="2"><input type="text" height="60" width="200" name="city"></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td>Address 2</td><td colspan="2"><input type="text" height="60" width="200" name="add2"></td>
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
