<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
String text = request.getParameter("text");
String num = request.getParameter("num");
String checkbox = request.getParameter("checkbox");
String checkbox2 = request.getParameter("checkbox2");
String select = request.getParameter("select");

List<String> list = new ArrayList();

if(checkbox==null) checkbox="";
if(checkbox2==null) checkbox2="";
if(text==null) text="";
if(num==null)
	{
	    num="";
	}
	int a = Integer.parseInt(num);


/*
if(checkbox==null&&checkbox2==null)
{
	list.add("你没有选择复选框");
}*/

if(checkbox.equals("A"))
{
	list.add("你选择了第一个复选框 ");
}
if(checkbox2.equals("B"))
{
	list.add("你选择了第二个复选框  ");
}
%>
你输入的文本是： <%=text %><br>
你输入的数字是： <%=a %><br>
复选框情况：<br>
<%
for(String str:list)
{%>
	<%=str %><br>
<% }%>

下拉列表情况 ：<%=select %>

</body>
</html>