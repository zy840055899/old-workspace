<%@page import="friendManager.LookFriendBean"%>
<%@page import="java.util.ArrayList"%>
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

<table>

<tr>
<td><a href="http://localhost:8080/PIMS/friendManager/addFriend.jsp">增加联系人</a></td>
<td><a href="http://localhost:8080/PIMS/friendManager/lookFriend.jsp">查看通讯录</a></td>
<td>修改联系人</td>
<td><a href="http://localhost:8080/PIMS/friendManager/deleteFriend.jsp">删除联系人</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<form action="http://localhost:8080/PIMS/UpdateFriendMessageServlet">

<table border="1" width="25%">

<%
ArrayList friendslist2 = (ArrayList)session.getAttribute("friendslist2");

if(friendslist2 == null || friendslist2.size() == 0 )
{
	response.sendRedirect("http://localhost:8080/PIMS/friendManager/lookFriend.jsp");	
}
else
{
	for(int i = friendslist2.size() - 1; i >= 0; i--)
	{
		LookFriendBean ff = (LookFriendBean)friendslist2.get(i);
%>
	<tr>
	<td>联系人姓名</td>	
	<td><%=ff.getName() %></td>
	</tr>
	
	<tr>
	<td>联系人电话</td>	
	<td><input type="text" name="phone" value="<%=ff.getPhone() %>"></td>
	</tr>
	
	<tr>
	<td>邮箱地址</td>	
	<td><input type="text" name="email" value="<%=ff.getEmail() %>"></td>
	</tr>
	
	<tr>
	<td>工作单位</td>	
	<td><input type="text" name="workPlace" value="<%=ff.getWorkplace() %>"></td>
	</tr>
	
	<tr>
	<td>家庭住址</td>	
	<td><input type="text" name="place" value="<%=ff.getPlace() %>"></td>
	</tr>
	
	<tr>
	<td>联系人QQ</td>	
	<td><input type="text" name="QQ" value="<%=ff.getQQ() %>"></td>
	</tr>
		
<%		
	}
}

%>

</table>

<input type="submit" value="提交">
<input type="reset" value="重置">


</form>

</center>

</body>
</html>