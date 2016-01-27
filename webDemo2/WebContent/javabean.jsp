<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.javabean.Person"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- scope属性是指javabean的存活范围，“page“表示当前范围，还有request表示一个请求内的范围，还有session，application -->
<jsp:useBean id="person" class="test.javabean.Person" scope="page"></jsp:useBean>

<!-- name的属性就是id，，property属性就是你想要访问的数据属性 -->
<jsp:getProperty property="name" name="person"/><br>
<jsp:getProperty property="age" name="person"/><br>
<jsp:getProperty property="address" name="person"/><br><br>

<!-- 设置属性内容，在访问的话就是新设置的内容 -->
<jsp:setProperty property="name" name="person" value="zhangsan"/>
<jsp:getProperty property="name" name="person"/><br><br>

<%//这样也可以，不过只能显示源代码里设置的属性值 ，和上面的方法是一样的，但是这样看不见java源代码，页面也比较整洁 
Person p = new Person();
out.println(p.getName());
%><br>
<!-- 这一行和15行完全等价的 -->
<%=person.getName() %><br><br>

<!-- param的作用 动态的付给temp的值，temp再付给age从而实现动态访问-->
<jsp:setProperty property="age" name="person" param="temp"/><br>
<jsp:getProperty property="age" name="person"/><br><br>

</body>
</html>