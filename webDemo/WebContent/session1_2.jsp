<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String yourname = (String)session.getAttribute("LogName");
if(yourname==null)
{
%>
你还没有登陆过

<%}else{%>
你的用户名是：<%=yourname %>
<%} %>

</body>
</html>