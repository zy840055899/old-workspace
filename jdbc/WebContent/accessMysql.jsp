<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" align="left">
<tr bgcolor="yellow">
<td>学生学号</td>
<td>学生姓名</td>
<td>指导老师编号</td>
<td>指导老师</td>
</tr>
<% 
//第一步：注册数据库驱动 
    Class.forName("com.mysql.jdbc.Driver");
//第二部：建立数据库链接 
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/select_test", "root" , "root");
//第三部：创建查询语句的容器 
	Statement stmt = conn.createStatement();
//第四部：创建查询结果的容器 
	ResultSet rs = stmt.executeQuery("select s.* , teacher_name"
		+ " from student_table s , teacher_table t"
		+ " where t.teacher_id = s.java_teacher");
{
	//第五部：遍历查询结果 
	while(rs.next())
	{%>
	
	<tr>
	<td align="center"><%=rs.getString(1) %></td>
	<td align="center"><%=rs.getString(2) %></td>
	<td align="center"><%=rs.getString(3) %></td>
	<td align="center"><%=rs.getString(4) %></td>
	</tr>

	<%}
}

%>
</table>
</body>
</html>