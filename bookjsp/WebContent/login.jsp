<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<span style="color:red;font-weight:bold">
<%
if (request.getAttribute("err") != null)
{
	out.println(request.getAttribute("err") + "<br/>");
}
%>
</span>
请输入用户名和密码：

<form method="post" action="loginServlet">

用户名：<input type="text" name="username"/><br/>
密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="pass"/><br/>
<input type="submit" value="登录"/><br/>

</form>

</body>
</html>