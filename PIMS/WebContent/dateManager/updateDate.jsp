<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理系统--修改日程</title>
</head>
<body>

<center>

<table>

<tr>
<td><a href="http://localhost:8080/PIMS/dateManager/addDate.jsp">增加日程</a></td>
<td><a href="http://localhost:8080/PIMS/dateManager/lookDate.jsp">查看日程</a></td>
<td>修改日程</td>
<td><a href="http://localhost:8080/PIMS/dateManager/deleteDate.jsp">删除日程</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<h3>请输入您要修改的日程日期和内容</h3>

<form action="http://localhost:8080/PIMS/UpdateDateServlet" method="post">

<table border="1">

<tr>
<td>日程时间</td>
<td>
20<input type="text" size="1" name="year" value="">年-
<input type="text" size="1" name="month" value="">月-
<input type="text" size="1" name="day" value="">日
</td>
</tr>

<tr>
<td>日程内容</td>
<td><input type="text" name="thing" size="40"></td>
</tr>

</table>

<input type="submit" value="提交">
<input type="reset" value="重置">

</form>

</center>

</body>
</html>