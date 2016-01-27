<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<% 
String username = (String)request.getAttribute("username");
String password = (String)request.getAttribute("password");
String gender = (String)request.getAttribute("gender");
//String[] interset = (String[])request.getAttribute("interset");
String comment = (String)request.getAttribute("comment");
String address = (String)request.getAttribute("address");
 %>
 用户名：<%=username %><br>
 密码:<%=password %><br>
 性别:<%=gender %><br>

 地址:<%=address %><br>
 说明:<%=comment %><br>


</body>
</html>