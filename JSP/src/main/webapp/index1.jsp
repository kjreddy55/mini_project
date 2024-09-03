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
	<form method="post" action="reg.jsp">
		<center>
		<h1>Add, Delete or Sort</h1>
			<input type="submit" value="ADD" >
		</center>
	</form>
	<br>
	<form method="post" action="value.jsp">
		<center>
			<input type="submit" value="DELETE" >
		</center>
	</form>
	<br>
	<form method="post" action="sortdetails.jsp">
		<center>
						<input type="submit" value="SORT" >
		</center>
	</form>
	<br>
	<a href='admin.jsp'>Back</a>
	</div>
	</center>
</body>
</html>
