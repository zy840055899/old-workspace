<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String username = "";
if(!session.isNew())
{
	username = (String)session.getAttribute("username");
	if(null == username)
	{
		username = "";
	}
}
%>

session id:<%=session.getId() %><br>

<form action="mailCheck.jsp">

username:<input type="text" name="username" value="<%=username %>"><br>
<input type="submit" value="submit">

</form>

</body>
</html>