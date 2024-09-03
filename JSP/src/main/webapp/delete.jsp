<%@ page import ="java.sql.*" %>
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
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"root", "root");
PreparedStatement ps = null;
ResultSet rs = null;
String name = request.getParameter("uname");
try{
	ps=con.prepareStatement("delete from members where uname='"+name+"'");
	ps.executeUpdate();
	%><h1 style="padding-top:20px"><b><%
	out.println(name+" Employee details was deleted");
	%></b></h1><%
}
catch(Exception e){
	out.println(e);
}
%>
</br>
<a href='index1.jsp'>Back</a>
</div>
</center>
</body>
</html>