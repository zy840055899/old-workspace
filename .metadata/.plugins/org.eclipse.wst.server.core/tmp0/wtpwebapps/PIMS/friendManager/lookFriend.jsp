<%@page import="friendManager.LookFriendBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--查看通讯录</title>
</head>
<body>

<center>

<table>

<tr>
<td><a href="http://localhost:8080/PIMS/friendManager/addFriend.jsp">增加联系人</a></td>
<td>查看通讯录</td>
<td><a href="http://localhost:8080/PIMS/friendManager/updateFriend.jsp">修改联系人</a></td>
<td><a href="http://localhost:8080/PIMS/friendManager/deleteFriend.jsp">删除联系人</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<table border="1" width="50%">

<tr>
<td>联系人姓名</td>
<td>电话</td>
<td>邮箱</td>
<td>职称</td>
<td>家庭住址</td>
<td>QQ</td>
</tr>

<%
ArrayList friendslist = (ArrayList)session.getAttribute("friendslist");
if(friendslist == null || friendslist.size() == 0)
{
%>
<div>
<h1>你还没有任何联系人</h1>
</div>
<%
}
else
{
	for(int i = friendslist.size() - 1; i >= 0; i--)	
	{
		LookFriendBean ff = (LookFriendBean)friendslist.get(i);
%>

<tr>
<td><%=ff.getName() %></td>
<td><%=ff.getPhone() %></td>
<td><%=ff.getEmail() %></td>
<td><%=ff.getWorkplace() %></td>
<td><%=ff.getPlace() %></td>
<td><%=ff.getQQ() %></td>
</tr>
<%		
	}
}
%>

</table>

</center>

</body>
</html>