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
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
	Statement stmt = conn.createStatement();
	
	String id = request.getParameter("id");
	byte[] b = id.getBytes("iso-8859-1");
	id = new String(b,"UTF-8");
	 
	String sql = "delete from student where studentNumber="+id;
	stmt.executeUpdate(sql);
	
	conn.close();
	stmt.close();
%>

<h1 align="center">删除成功</h1>



</body>
</html>