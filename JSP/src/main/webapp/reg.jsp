<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body style="padding-top:250px; padding-left:510px; background-color: pink ">
<div style= "background-color: white; width:350px; height: 270px;">
<form method="post" action="registration.jsp">
<center>
<h2>Enter Information Here</h2>
</center>
<label style="padding-left:40px">First Name:</label>
<input type="text" name="fname" value="" /><br><br>
<label style="padding-left:40px">Last Name:</label>
<input type="text" name="lname" value="" /><br><br>
<label style="padding-left:40px">Email Id :</label>
<input type="text" name="email" value="" /><br><br>
<label style="padding-left:40px">User Name:</label>
<input type="text" name="uname" value="" /><br><br>
<label style="padding-left:40px">Password:</label>
<input type="password" name="pass" value="" /><br><br>
<a href='index1.jsp'style="padding-right:40px; padding-left:40px">Back</a>
<input type="submit" value="Submit" /></td>
<input type="reset" value="Reset" />
</form>
</div>
</body>
</html>


