<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 指向反馈对象和方法,一般来说，post传递方法比get传递方法更安全，不会再地址栏里显示用户的用户名和密码，所以post一般用于提交表单-->
<!-- action后面指定了反馈的对象，可以指向servlet文件，也可以指想jsp文件（要加上扩展名） -->
<form action=Login method="post">
username:<input type="text" name="username"><br>
password:<input type="password" name="password"><br>
repassword:<input type="password" name="repassword"><br>
age:<input type="text" name="age"><br>
<input type="submit" value="submit">&nbsp;&nbsp;
<input type="reset" value="reset">
</form>

</body>
</html>