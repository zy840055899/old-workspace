<%@page import="loginRegister.LoginBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--主页面</title>
</head>
<body>
<%
String userName = null;
//获取在loginservlet.java中保存在session中的数据,如果获取不到说明没有登录，返回登陆页面
ArrayList login = (ArrayList)session.getAttribute("login");
if(login == null || login.size() == 0)
{
	response.sendRedirect("http://localhost:8080/PIMS/login.jsp");
}
else
{
	for(int i = login.size() - 1; i >= 0; i--)
	{
		LoginBean nn = (LoginBean)login.get(i);
		userName = nn.getUserName();
		System.out.println(userName);
	}
}

session.setAttribute("userName", userName);
%>

<center>

<table>

<tr>
<td><a href="http://localhost:8080/PIMS/LookMessageServlet">个人信息管理</a></td>
<td><a href="http://localhost:8080/PIMS/LookFriendServlet">通讯录管理</a></td>
<td><a href="http://localhost:8080/PIMS/LookDateServlet">日程安排管理</a></td>
<td><a href="http://localhost:8080/PIMS/fileManager/fileUp.jsp">个人文件管理</a></td>
<td><a href="http://localhost:8080/PIMS/LoginCloseServlet">退出系统</a></td>
<td>欢迎<%=userName %>登录系统</td>
</tr>

</table>

</center>

</body>
</html>