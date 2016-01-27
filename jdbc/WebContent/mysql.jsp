<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", "root", "root");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from news_inf");
%>
<table bgcolor="#C1FFE4" border="1" width="200" align="left">

<%
	while(rs.next())
	{%>

<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
</tr>

<%}%>
</table>
</body>
</html>