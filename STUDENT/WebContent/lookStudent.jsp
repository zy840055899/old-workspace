<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <jsp:include page="login.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center" >
<tr>
<td>记录条数</td>
<td>学号</td>
<td>姓名</td>
<td>性别</td>
<td>年龄</td>
</tr>
<% 
    Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root" , "root");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from student");
{
	while(rs.next())
	{%>
	
	<tr>
	<td align="center"><%=rs.getRow() %></td>
	<td align="center"><%=rs.getString("studentNumber") %></td>
	<td align="center"><%=rs.getString("studentName") %></td>
	<td align="center"><%=rs.getString("studentSex") %></td>
	<td align="center"><%=rs.getString("studentAge") %></td>
	</tr>

	<%}
}
stmt.close();
rs.close();
conn.close();
%>
</table>
</body>
</html>