<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--登录页面</title>
</head>
<body>

<center>
<h1>欢迎登陆个人信息管理系统</h1>
<form action="http://localhost:8080/PIMS/LoginServlet" method="post">
	
	<table border="1">
	
	<tr>
	<td>用户姓名:</td>
	<td><input type="text" name="userName"></td>
	</tr>
	
	<tr>
	<td>用户密码:</td>
	<td><input type="password" name="password"></td>
	</tr>
	
	</table><br>
	
	<input type="submit" value="确定">
	<input type="reset" value="重置"><br><br>
	<a href="register/register.jsp">注册</a>

</form>

</center>

</body>
</html>