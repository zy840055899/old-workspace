<%@page import="lookMessage.LookMessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--查看个人信息</title>
</head>
<body>

<center>

<table>

<tr>
<td><a href="http://localhost:8080/PIMS/lookMessage/updateMessage.jsp">修改个人信息</a></td>
<td>查看个人信息</td>
<td><a href="http://localhost:8080/PIMS/lookMessage/updatePassword.jsp">修改密码</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<table border="1" width="25%">
<%
ArrayList wordlist = (ArrayList)session.getAttribute("wordlist");
if(wordlist == null || wordlist.size() == 0)
{
	response.sendRedirect("http://localhost:8080/PIMS/main/main.jsp");
}
else
{
	for(int i = wordlist.size() - 1; i >= 0; i--)
	{
		LookMessageBean mm = (LookMessageBean)wordlist.get(i);
		%>
		<tr>
		<td>用户姓名</td>
		<td><%=mm.getName() %></td>
		</tr>
		
		<tr>
		<td>用户性别</td>
		<td><%=mm.getSex() %></td>
		</tr>
		
		<tr>
		<td>出生日期</td>
		<td><%=mm.getBirth() %></td>
		</tr>
		
		<tr>
		<td>用户民族</td>
		<td><%=mm.getNation() %></td>
		</tr>
		
		<tr>
		<td>用户学历</td>
		<td><%=mm.getEdu() %></td>
		</tr>
		
		<tr>
		<td>用户职称</td>
		<td><%=mm.getWork() %></td>
		</tr>
		
		<tr>
		<td>用户电话</td>
		<td><%=mm.getPhone() %></td>
		</tr>
		
		<tr>
		<td>家庭住址</td>
		<td><%=mm.getPlace() %></td>
		</tr>
		
		<tr>
		<td>邮箱地址</td>
		<td><%=mm.getEmail() %></td>
		</tr>
		
<%
	}
}
%>

</table>

</center>

</body>
</html>