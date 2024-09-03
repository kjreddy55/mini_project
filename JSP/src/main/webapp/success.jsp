<%@ page import ="java.sql.*" %>
<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
	%>
	<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Example</title>
</head>
<body style="padding-top:250px; padding-left:510px; background-color: pink ">
	<div style= "background-color: white; width:350px; height: 200px;">
	<center><h1><b>Welcome</b></h1></center><%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"root", "root");
PreparedStatement ps = null;
ResultSet rs = null;
try{
	ps=con.prepareStatement("select * from members where uname='" + session.getAttribute("userid") + "' and pass='" + session.getAttribute("pwd") + "'");
	rs = ps.executeQuery();
	while(rs.next()){
		%><label style="padding-left:40px">First Name :</label><%
		String c1 = rs.getString("first_name");
		out.println(c1);
		%></br><label style="padding-left:40px">Last Name :</label><%
		String c2 = rs.getString("last_name");
		out.println(c2);
		%></br><label style="padding-left:40px">Email     :</label><%
		String c3 = rs.getString("email");
		out.println(c3);
		%></br><label style="padding-left:40px">Reg-Date :</label><%
		String c4 = rs.getString("regdate");
		out.println(c4);
		%></br><%
	}
}
catch(Exception e){
	out.println(e);
}
%>
</br>
<form action="logout.jsp">
<center>
<a href='New.jsp' style="padding-right:30px">Back</a>
<input type="submit" value="Log out"></center></form>
</div>
</body>
</html>
<%
}
%>
