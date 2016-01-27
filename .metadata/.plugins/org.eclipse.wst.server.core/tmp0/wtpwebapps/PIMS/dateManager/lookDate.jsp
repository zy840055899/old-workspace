<%@page import="dateManager.LookDateBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--查看日程</title>
</head>
<body>

<center>

<table>

<tr>
<td><a href="http://localhost:8080/PIMS/dateManager/addDate.jsp">增加日程</a></td>
<td>查看日程</td>
<td><a href="http://localhost:8080/PIMS/dateManager/updateDate.jsp">修改日程</a></td>
<td><a href="http://localhost:8080/PIMS/dateManager/deleteDate.jsp">删除日程</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<form action="http://localhost:8080/PIMS/LookDateServlet">

<%
ArrayList datelist = (ArrayList)session.getAttribute("datelist");

if(datelist == null || datelist.size() == 0)
{
%>
<h1>你还没有日程安排 </h1>
<%
}
else
{
%>
<table border="1" width="25%">
<tr>
<td width="40%">日程时间</td>
<td width="60%">日程安排</td>
</tr>
<%
	for(int i = datelist.size() - 1; i >= 0; i--)
	{
		LookDateBean dd = (LookDateBean)datelist.get(i);
%>
<tr>
<td><%=dd.getDate() %></td>
<td><%=dd.getThing() %></td>
</tr>
<%
	}
}
%>

</table>

</form>

</center>

</body>
</html>