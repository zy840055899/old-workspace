<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String username = request.getParameter("username");%>
你的名字是：<%=username %><br>

<form action="hidden3.jsp">
    你的爱好是：<input type="text" name="aihao"><br>
    <input type="hidden" name="name" value="<%=username %>">
    <input type="submit" value="submit">
</form>

</body>
</html>