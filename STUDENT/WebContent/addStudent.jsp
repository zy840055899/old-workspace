<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="login.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function validate()
{
	var studentNumber =document.getElementsByName("studentNumber")[0];
	var studentName =document.getElementsByName("studentName")[0];
	var studentSex =document.getElementsByName("studentSex")[0];
	var studentAge =document.getElementsByName("studentAge")[0];
	//对学号进行限制 
	if(studentNumber.value == "")
	{
	    alert("学号不可以为空 ");
	    return false;
	}
	if(studentNumber.value.length != 4)
	{
	    alert("学号必须为四位数");
        return false ;	
	}
	for(var i = 0; i < studentNumber.value.length; i++)
	{
		var param ="0123456789";
		
		if(param.indexOf(studentNumber.value.charAt(i)) == -1)
		{
			alert("输入的必须是数字");
			return false;
		}
	}
	//对姓名进行限制 
	if(studentName.value == "")
	{
	    alert("姓名不可以为空 ");
	    return false;
	}
	//对性别进行限制 
	if(studentSex.value == "")
	{
	    alert("性别不可以为空 ");
	    return false;
	}
	if(studentSex.value.length > 1)
	{
	    alert("性别只能填写男或者女");
        return false ;	
	}
	//对年龄进行限制 
	if(studentAge.value == "")
	{
	    alert("年龄不可以为空 ");
	    return false;
	}
	if(studentAge.value.length > 2)
	{
	    alert("年龄填写最大为两位数 ");
        return false ;	
	}
	for(var i = 0; i < studentAge.value.length; i++)
	{
		var param ="0123456789";
		
		if(param.indexOf(studentAge.value.charAt(i)) == -1)
		{
			alert("年龄必须是数字");
			return false;
		}
	}

	return true;
}

</script>


</head>
<body>

<form action="addStudentCheck.jsp" onsubmit="return validate();">
<table align="center">

<tr>
<td>学号：</td>
<td><input type="text" name="studentNumber"></td>
</tr>

<tr>
<td>姓名：</td>
<td><input type="text" name="studentName"></td>
</tr>
<tr>

<td>性别：</td>
<td><input type="text" name="studentSex"></td>
</tr>

<tr>
<td>年龄：</td>
<td><input type="text" name="studentAge"></td>
</tr>

<tr>
<td><input type="submit" value="提交"></td>
<td><input type="reset" value="重置"></td>
</tr>

</table>

</form>
</body>
</html>