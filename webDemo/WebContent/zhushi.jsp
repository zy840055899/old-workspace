<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 这是一个普通的html注释,用户可以看得到的 -->
<%--这是一个jsp注释，用户看不到 --%>
<!-- <%= new java.util.Date()%> -->  <!-- 住市里面的java代码仍然运行输出 -->
<% int a = 3;%><!-- 里面可以存放java代码块，局部变量，所以不回发生变化，一般用的是这种，保证所有用户看到的是不变的 -->
<%! int b = 4; %><!-- 这是一个声明 ,累的属性，所以会发生变化-->
<%=a %><br>
<%=b %><br>

<%=a-- %><br>
<%=b-- %>
</body>
</html>