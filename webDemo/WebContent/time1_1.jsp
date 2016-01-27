<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String username = request.getParameter("username");
Date a = new Date();
%>
你好  <%=username %>，
今天是<%=a.getDate() %>号，
星期<%=a.getDay() %>


<a href="test.txt">link</a>
</body>
</html>