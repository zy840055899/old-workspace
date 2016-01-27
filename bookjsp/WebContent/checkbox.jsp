<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="checkbox2.jsp">

请输入一段文本:<input type="text" name="text"><br>
请填入一个数字 :<input type="text" name="num"><br>

<input type="checkbox" name="checkbox" value="A"><br>
<input type="checkbox" name="checkbox2" value="B"><br>

下拉列表：
<select name="select">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select><br>

<input type="submit" value="submit">

</form>

</body>
</html>