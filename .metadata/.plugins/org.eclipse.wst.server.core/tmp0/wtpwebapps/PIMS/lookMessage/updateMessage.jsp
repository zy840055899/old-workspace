<%@page import="lookMessage.LookMessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>

<table>

<tr>
<td>修改个人信息</td>
<td><a href="http://localhost:8080/PIMS/lookMessage/lookMessage.jsp">查看个人信息</a></td>
<td><a href="http://localhost:8080/PIMS/lookMessage/updatePassword.jsp">修改密码</a></td>
<td><a href="http://localhost:8080/PIMS/main/main.jsp">返回</a></td>
</tr>

</table><hr>

<form action="http://localhost:8080/PIMS/UpdateMessageServlet" method="post">


<table border="1" width="25%">
<%
ArrayList wordlist = (ArrayList)session.getAttribute("wordlist");
if(wordlist == null || wordlist.size() == 0)
{
	response.sendRedirect("http://localhost:8080/PIMS/main/main.jsp");
}
else
{
	for(int i = wordlist.size() - 1; i >= 0; i--)
	{
		LookMessageBean mm = (LookMessageBean)wordlist.get(i);
		%>
		<tr>
		<td>用户姓名</td>
		<td><%=mm.getName() %></td>
		</tr>
		
		<tr>
		<td>用户性别</td>
		<td><%=mm.getSex() %></td>
		</tr>
		
		<tr>
		<td>出生日期</td>
		<td><%=mm.getBirth() %></td>
		</tr>
		
		<tr>
		<td>用户民族</td>
		<td><%=mm.getNation() %></td>
		</tr>
		
		<tr>
		<td>用户学历</td>
		<td>
		<select name="edu">
		<%if(mm.getEdu().equals("博士")){ %>
		<option value="博士" selected="selected">博士</option>
		<%}else{ %>
		<option value="博士">博士</option>
		<%} %>
		
		<%if(mm.getEdu().equals("硕士")){ %>
		<option value="硕士" selected="selected">硕士</option>
		<%}else{ %>
		<option value="硕士">硕士</option>
		<%} %>
		
		<%if(mm.getEdu().equals("本科")){ %>
		<option value="本科" selected="selected">本科</option>
		<%}else{ %>
		<option value="本科">本科</option>
		<%} %>
		
		<%if(mm.getEdu().equals("专科")){ %>
		<option value="专科" selected="selected">专科</option>
		<%}else{ %>
		<option value="专科">专科</option>
		<%} %>
		
		<%if(mm.getEdu().equals("其他")){ %>
		<option value="其他" selected="selected">其他</option>
		<%}else{ %>
		<option value="其他">其他</option>
		<%} %>
	
		</select>
		</td>
		</tr>
		
		<tr>
		<td>用户职称</td>
		<td>
		<select name="work">
		
		<%if(mm.getWork().equals("工程师")){ %>
		<option value="工程师" selected="selected">工程师</option>
		<%}else{ %>
		<option value="工程师">工程师</option>
		<%} %>
		
		<%if(mm.getWork().equals("教师")){ %>
		<option value="教师" selected="selected">教师</option>
		<%}else{ %>
		<option value="教师">教师</option>
		<%} %>
		
		<%if(mm.getWork().equals("学生")){ %>
		<option value="学生" selected="selected">学生</option>
		<%}else{ %>
		<option value="学生">学生</option>
		<%} %>
		
		<%if(mm.getWork().equals("职员")){ %>
		<option value="职员" selected="selected">职员</option>
		<%}else{ %>
		<option value="职员">职员</option>
		<%} %>
		
		<%if(mm.getWork().equals("公务员")){ %>
		<option value="公务员" selected="selected">公务员</option>
		<%}else{ %>
		<option value="公务员">公务员</option>
		<%} %>
		
		<%if(mm.getWork().equals("其他")){ %>
		<option value="其他" selected="selected">其他</option>
		<%}else{ %>
		<option value="其他">	其他</option>
		<%} %>
	
		</select>
		</td>
		</tr>
		
		<tr>
		<td>用户电话</td>
		<td>
		<input type="text" name="phone" value=<%=mm.getPhone()%>>		
		</td>
		</tr>
		
		<tr>
		<td>家庭住址</td>
		<td><%=mm.getPlace()%></td>
		</tr>
		
		<tr>
		<td>邮箱地址</td>
		<td>
		<input type="text" name="email" value=<%=mm.getEmail()%>>		
		</td>
		</tr>
		
<%
	}
}
%>

</table>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>


</center>


</body>
</html>