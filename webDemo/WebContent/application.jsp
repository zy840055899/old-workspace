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
if(application.getAttribute("counter") == null)
{
	application.setAttribute("counter","1");
}
else
{
	String strnum;
	strnum = application.getAttribute("counter").toString();
	
	int count = 0;
	count = Integer.parseInt(strnum);
	count++;
	
	application.setAttribute("counter",count);
}
%>

你是第<%=application.getAttribute("counter") %>个访问者

</body>
</html>

