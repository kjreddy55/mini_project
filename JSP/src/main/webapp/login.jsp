<%@ page import ="java.sql.*" %>
<%
String userid = request.getParameter("uname");    
String pwd = request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
if (rs.next()) {
session.setAttribute("userid", userid);
session.setAttribute("pwd", pwd);
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
response.sendRedirect("success.jsp");
} else {
%>
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
<h1><b>Login Here</b></h1>
	<form method="post" action="login.jsp">
			 <label for="uname">Username :</label>
			 <input type="text" id="uname" name="uname" placeholder="Enter a username"><br><br>
			 <label for="pass">Password :</label>
			 <input type="password" id="pass" name="pass" placeholder="Enter a password"><br>
			 <p style="color:red">* Enter a valid username or password</p>
			 <a href="index.jsp" style="padding-right:30px">Back</a><input type="submit" value="Login" >

	</form>
</div></center>
</body>
</html>
<%

}
%>
