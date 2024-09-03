<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Records</title>
</head>
<body style="padding-top:200px; background-color: pink ">
<center>
<div style= "background-color: white; width:700px; height: 300px;">
    <h2>Employee Records</h2>
    <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
    "root", "root");
    PreparedStatement ps = null;
    ResultSet rs = null;
    try{
    	ps=con.prepareStatement("select * from members order by first_name");
    	rs = ps.executeQuery();
    	%>
    	<table border="1" width="100%" cellpadding="3">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Reg-Date</th>
			</tr>
		</thead>
		<tbody><%
    	while(rs.next()){
    		%><tr><td><%
    		String c1 = rs.getString("first_name");
    		out.println(c1);
    		%></td><td><%
    		String c2 = rs.getString("last_name");
    		out.println(c2);
    		%></td><td><%
    		String c3 = rs.getString("email");
    		out.println(c3);
    		%></td><td><%
    		String c4 = rs.getString("regdate");
    		out.println(c4);
    		%></td>
    		</tr><%
    	}
		%></tbody></table><%
    	out.println("<a href='sortdetails.jsp'>Back</a>");
    }
    catch(Exception e){
    	out.println(e);
    }
    %>
    </div>
    </center>
</body>
</html>
