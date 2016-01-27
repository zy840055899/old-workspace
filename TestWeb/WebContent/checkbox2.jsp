<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String[] color = request.getParameterValues("color");%>

<%
if(color == null)
{%>
	你没有选择
<%}
else
{
for(String str : color)
{
//如何解决中文乱码问题  如下： 
byte[] b = str.getBytes("ISO-8859-1");
str = new String(b,"UTF-8");

%>
<%=str %><br>
<%} 
}%>

</body>
</html>