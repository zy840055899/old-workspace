<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

//选中全部的复选框
function selectAll()
{
	//除了。。。。byname方法 还有byid bytagname>>通过标签的方法来访问
	var allmails = document.getElementsByName("allmails")[0];
	var mail = document.getElementsByName("mail");
	if(allmails.checked)
		{
		    for(var i = 0; i < mail.length;  i++)
		    	{
		    	    mail[i].checked = true;//如果通过标签的方法访问的话还可以访问checked.name  type等等信息
		    	}
		}
	else
		{
		    for(var i = 0; i < mail.length; i++)
		    	{
		    	    mail[i].checked = false ;
		    	}
		}
}
</script>
</head>
<body>
<form>

全选按钮:<input type="checkbox" onclick="selectAll()" name="allmails"><br><br>

<input type="checkbox" name="mail"><br>
<input type="checkbox" name="mail"><br>
<input type="checkbox" name="mail"><br>
<input type="checkbox" name="mail"><br>
<input type="checkbox" name="mail"><br>
</form>
</body>
</html>