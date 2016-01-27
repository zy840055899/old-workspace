<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
<h1>欢迎登录学生信息管理系统</h1>

<form method="post" action="loginServlet">
<hr>
教师入口
<table>

<tr>
<td>教师号:</td>
<td><input type="text" name="username"></td>
</tr>

<tr>
<td>密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
<td><input type="password" name="pass"></td>
</tr>

</table><br>

<input type="submit" value="登录">&nbsp;&nbsp;&nbsp;<input type="reset" value="重置">
<br>

<span style="color:red">
<%
if (request.getAttribute("err") != null)
{
	out.println(request.getAttribute("err") + "<br/>");
}

%>
</span>

</form>
<hr>
学生入口
<br><br>
<a href="selectStudent.jsp">学生信息查询</a>

</center>
</body>
</html>