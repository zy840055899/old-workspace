<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*;"%>
    <jsp:include page="login.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root" , "root");
Statement stmt = conn.createStatement();
%>
<center>

<form action="deleteStudentCheck.jsp">
选择要删除学生的学号 ：
<select name="id">
<%
String sql = "select * from student";
ResultSet rs = stmt.executeQuery(sql);
while(rs.next())
{
	String no = rs.getString("studentNumber");
%>
<option value="<%=no %>"><%=no %></option>
<%} %>
</select>
<br>
<input type="submit" value="删除">


</form>

</center>
</body>
</html>