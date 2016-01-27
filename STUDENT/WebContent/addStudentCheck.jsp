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
String studentNumber = request.getParameter("studentNumber");
byte[] b1 = studentNumber.getBytes("ISO-8859-1");
studentNumber = new String(b1,"UTF-8");

String studentName = request.getParameter("studentName");
byte[] b2 = studentName.getBytes("ISO-8859-1");
studentName = new String(b2,"UTF-8");

String studentSex = request.getParameter("studentSex");
byte[] b3 = studentSex.getBytes("ISO-8859-1");
studentSex = new String(b3,"UTF-8");

String studentAge = request.getParameter("studentAge");
byte[] b4 = studentAge.getBytes("ISO-8859-1");
studentAge = new String(b4,"UTF-8");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root" , "root");
Statement stmt = conn.createStatement();

String sql = "insert into student values('"+ studentNumber +"','"+ studentName +"','"+ studentSex +"','"+ studentAge+"')";
stmt.executeUpdate(sql);
stmt.close();
conn.close();

%>
<h1 align="center">数据添加成功</h1>

</body>
</html>