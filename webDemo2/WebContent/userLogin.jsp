<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String authority = request.getParameter("authority"); %>

<form action="UserLogin" method="post">

username:<input type="text" name="username" value="<%= null==request.getAttribute("username") ? "" : request.getAttribute("username")%>"><br>
password:<input type="password" name="password"><br>

authority:
<select name="authority">
<option value="1" <%="1".equals(authority)? "selected": ""%>>用户</option>
<option value="2" <%="2".equals(authority)? "selected": ""%>>管理员</option>
</select><br>

<input type="submit" value="submit">

</form>

</body>
</html>