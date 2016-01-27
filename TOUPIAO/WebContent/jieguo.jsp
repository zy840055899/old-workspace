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

共有<%=application.getAttribute("counter") %>个投票人 <br>

<%
String str1 = request.getParameter("1");
String str2 = request.getParameter("2");

if(application.getAttribute("2_b") == null)
{
	application.setAttribute("2_b",0);
}
if(application.getAttribute("2_a") == null)
{
	application.setAttribute("2_a",0);
}

if(str2.equals("A"))
{
		int s2a=0;
		s2a = (Integer)application.getAttribute("2_a");
		s2a++;
		application.setAttribute("2_a", s2a);
}
else if(str2.equals("B"))
{
		int s2b=0;
		s2b = (Integer)application.getAttribute("2_b");
		s2b++;
		application.setAttribute("2_b", s2b);
}

%>
2.巴萨的票数为： <%=application.getAttribute("2_a") %><br>
2.皇马的票数为： <%=application.getAttribute("2_b") %><br>


</body>
</html>