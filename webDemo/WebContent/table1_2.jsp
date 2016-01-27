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
String hang = request.getParameter("hang");
String lie = request.getParameter("lie");

int a = 0;
int b = 0;
try
{
     a = Integer.parseInt(hang);
     b = Integer.parseInt(lie);
}
catch(Exception e)
{
	out.println("请输入数字！ ");
	return;
}
out.println("<table border=1 width=50% align=center>");
int c = 0;
for(int i=0; i<a; i++)
{
	out.println("<tr>");
	for(int j=0; j<b; j++)
	{
		c++;
		out.println("<td align='center'>"+ c +"</td>");
	}
	out.println("</tr>");
}
out.println("</table>");
%>

</body>
</html>
