<?php
$con = mysql_connect("localhost","jack","jack2016");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("my_db", $con);
//返回用户名与post过来的名一致所在行的User数据
$row = mysql_query("SELECT * FROM User WHERE Name like '$_POST[Name]'");
//根据该行的用户数据判断密码是否正确
if($row['Pwd'] = '$_POST[Pwd]')
  {
  	//跳转到该用户主页
  }
else
  {
	//alert弹出用户名密码错误
  }
mysql_close($con);
?>
