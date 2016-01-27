<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>

<h1>查询结果</h1>

<table border="1" align="center" >
<tr>
<td>学号</td>
<td>姓名</td>
<td>性别</td>
<td>年龄</td>
</tr>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
	Statement stmt = conn.createStatement();

	String id = request.getParameter("id");
	byte[] b = id.getBytes("iso-8859-1");
	id = new String(b, "UTF-8");
	ResultSet rs = stmt.executeQuery("select * from student where studentNumber = "+id);
	{
		while (rs.next())
		{
%>
	
	<tr>
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

<table>
<tr>
<td><a href="index.jsp">返回登录界面</a></td>
<td><a href="selectStudent.jsp">继续查询</a></td>
</tr>
</table>

</center>

</body>
</html>