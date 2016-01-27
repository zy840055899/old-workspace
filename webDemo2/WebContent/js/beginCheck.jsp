<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function check()
{
	var a = document.getElementsByName("all")[0];
	var c = document.getElementsByName("check");
	if(a.checked)
	{
		for(var i = 0; i < c.length; i++)
		{
			c[i].checked = true;
		}
	}
	else
	{
		for(var i = 0; i < c.length; i++)
		{
			c[i].checked = false;
		}
	}
}


function turn()
{
	with(document)
	{
		//什么时候用getelementById，getelementByName的总结
		//对于radio checkbox select 应该用 getelementByName 
		//因为这些组件通常为一组一组的全都只有一个name属性
		//而表格按钮为独立的，只此一个，所以可以直接使用getelementById
		var h = document.getElementById("hide");
		var t = document.getElementById("table");
		if(h.value == "hide")
		{
			t.style.display = "none";
			h.value = "show";
		}
		else
		{
			t.style.display = "block";
			h.value = "hide";
		}
	}

}

</script>




</head>
<body>

<table border="1" align="center" width="50%">

<tr>
<td><input type="checkbox" name="all" onclick="check();">全选</td>
<td><input type="button" id="hide" value="hide" onclick="turn();"></td>
</tr>
</table>


<table border="1" align="center" width="50%" id="table">

<%String num = request.getParameter("num");
int n = Integer.parseInt(num);
for(int i = 0; i < n; i++)
{%>

<tr>
<td><input type="checkbox" name="check"></td>
<td><%=i + 1 %></td>
</tr>
<%} %>

</table>


</body>
</html>