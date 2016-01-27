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
int sum = 0;

String str1 = request.getParameter("1");
String str2 = request.getParameter("2");
String str3 = request.getParameter("3");
if(null==str1)
	str1="";
if(null==str2)
	str2="";
if(null==str3)
	str3="";
if(str1.equals("A"))
{
	sum++;
}
if(str2.equals("B"))
{
	sum++;
}
if(str3.equals("C"))
{
	sum++;
}

%>

答对了<%=sum %>题




</body>
</html>