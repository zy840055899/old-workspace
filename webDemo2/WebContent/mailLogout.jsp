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
String username = (String)session.getAttribute("username");
session.invalidate();//放置在前面一行会出现异常 
%>

<%=username %>再见！<br>

<a href="mailLogin.jsp">重新登录</a>

</body>
</html>