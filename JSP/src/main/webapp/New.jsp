<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Example</title>
</head>
<body style= "background-color: pink ;padding-top:250px">
<center>
<div style= "background-color: white; width:350px; height: 200px;">
<h1><b>Login</b></h1>
	<form method="post" action="login.jsp">
			 <label for="uname">Username :</label>
			 <input type="text" id="uname" name="uname" placeholder="Enter a username"><br><br>
			 <label for="pass">Password :</label>
			 <input type="password" id="pass" name="pass" placeholder="Enter a password"><br><br>
			 <input type="submit" value="Login">

	</form>
	<br>
	<a href="index.jsp">Back</a>
</div></center>
</body>
</html>
