<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=application.getInitParameter("zy") %><br>

<%
pageContext.setAttribute("request","the first request",pageContext.REQUEST_SCOPE);
pageContext.setAttribute("page", "a page",pageContext.PAGE_SCOPE);
%>
request存货范围 <%=pageContext.getAttributesScope("request") %><br>
page存活范围<%=pageContext.getAttributesScope("page") %>

</body>
</html>