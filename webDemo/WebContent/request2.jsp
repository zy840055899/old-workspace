<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String ename = request.getParameter("username");%>

username=<%=ename %>

<% request.setAttribute("temp",ename);%>
<!-- 下面这一行开始和结束标签要在同一行，否则报错，这什么逻辑？？ --> 
<jsp:forward page="request3.jsp"></jsp:forward>

</body>
</html>