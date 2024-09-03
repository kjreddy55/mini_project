<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Example</title>
</head>
<body style="padding-top:250px; background-color: pink ">
<center>
<div style= "background-color: white; width:350px; height: 200px;">
<center><h1>Filteration</h1></center>
	<form method="post" action="sort.jsp">
		<center>
		<label>Sort By Idno :</label>
			<input type="submit" value="SORT" />
		</center>
	</form>
	<br>
	<form method="post" action="datesort.jsp">
		<center>
		<label>Sort By Date :</label>
			<input type="submit" value="SORT " />
		</center>
	</form>
	<br>
	<form method="post" action="Name.jsp">
		<center>
		<label>Sort By Name:</label>
			<input type="submit" value="SORT" />
		</center>
	</form>
	<br><form action="index.jsp">
	<center><a href="index1.jsp" style="padding-right:30px">Back</a><input type="submit" value="Log Out"></center>
	</form>
	</div>
	</center>
</body>
</html>
