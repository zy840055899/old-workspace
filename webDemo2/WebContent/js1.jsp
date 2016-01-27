<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--    
//script验证是一种客户端验证，是不安全的，用户完全可以在看过页面源代码后，
//在地址栏里直接输入要提交向的那个页面，后面缀上？=username 。。等等
//所以必须要服务器验证，而不是客户端验证
<script type="text/javascript">

function validate()
{
	var username = document.getElementById("username1");
	var password = document.getElementById("password1");
	var repassword = document.getElementById("repassword1");
	//
	//var username =document.getElementsByName("username")[0];
	//var password =document.getElementsByName("password")[0];
	//var repassword =document.getElementsByName("repassword")[0];
	if(username.value == "")
		{
		    alert("用户名不可以为空 ");
		    return false;
		}
	if(password.value.length < 6 || password.value.length > 10)
		{
		    alert("密码长度必须在6到8位  ");
	        return false ;	
		}
	if(password.value != repassword.value)
		{
		    alert("密码不一致！！！  ");
		    return false;
		}
	return true;
}

</script>
-->
<title>Insert title here</title>
</head>
<body>
	<form  action="yanzheng" onsubmit="return validate()">  <!-- 可以更改指向yanzheng 前提把onsubmit去掉 -->
		username:<input type="text" name="username" id="username1"><br>
		password:<input type="password" name="password" id="password1"><br>
		repassword:<input type="password" name="repassword" id="repassword1"><br>
		 <input type="submit" value="submit">&nbsp;&nbsp;
		 <input type="reset" value="reset">
	</form>
</body>
</html>