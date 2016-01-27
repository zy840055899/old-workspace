<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--增加通讯录</title>
</head>
<body>

<center>

<table>

<tr>
<td>增加联系人</td>
<td><a href="http://localhost:8080/PIMS/LookFriendServlet">查看联系人</a></td>
<td><a href="http://localhost:8080/PIMS/friendManager/updateFriend.jsp">修改联系人</a></td>
<td><a href="http://localhost:8080/PIMS/friendManager/deleteFriend.jsp">删除联系人</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<form action="http://localhost:8080/PIMS/AddFriendServlet" method="post">

<table border="1" >

<tr>
<td>联系人姓名</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>联系人电话</td>
<td><input type="text" name="phone"></td>
</tr>

<tr>
<td>邮箱地址</td>
<td><input type="text" name="email"></td>
</tr>

<tr>
<td>工作单位</td>
<td><input type="text" name="workPlace"></td>
</tr>

<tr>
<td>家庭住址</td>
<td>
	<select name="place">
	<option value="北京">北京</option>
	<option value="上海">上海</option>
	<option value="广州">广州</option>
	<option value="深圳">深圳</option>
	<option value="其他">其他</option>
	</select>
</td>
</tr>

<tr>
<td>联系人QQ</td>
<td><input type="text" name="QQ"></td>
</tr>

</table>

<input type="submit" value="提交">
<input type="reset" value="重置">

</form>

</center>

</body>
</html>