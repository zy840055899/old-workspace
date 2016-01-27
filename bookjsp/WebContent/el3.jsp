<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>表达式语言 - 内置对象</h2>
	请输入你的名字：
	<!-- 通过表单提交请求参数 -->
	<form action="el3.jsp" method="post">
		<!-- 通过${param['name']} 获取请求参数 -->
		你的名字 = <input type="text" name="name" value="${param['name']}"/>
		<input type="submit" value='提交'/>
	</form><br/>
	<% session.setAttribute("user" , "abc");
	//下面三行代码添加Cookie
	Cookie c = new Cookie("name" , "yeeku");
	c.setMaxAge(24 * 3600);
	response.addCookie(c);
	%>
	<table border="1" width="660" bgcolor="#aaaadd">
		<tr>
			<td width="170"><b>功能</b></td>
			<td width="200"><b>表达式语言</b></td>
			<td width="300"><b>计算结果</b></td>
		<tr>
			<!-- 使用两种方式获取请求参数值 -->
			<td>取得请求参数值</td>
			<td>\${param.name}</td>
			<td>${param.name}&nbsp;</td>
		</tr>
		<tr>
			<td>取得请求参数值</td>
			<td>\${param["name"]}</td>
			<td>${param["name"]}&nbsp;</td>
		</tr>
		<tr>
			<!-- 使用两种方式获取指定请求头信息 -->
			<td>取得请求头的值</td>
			<td>\${header.host}</td>
			<td>${header.host}</td>
		</tr>
		<tr>
			<td>取得请求头的值</td>
			<td>\${header["accept"]}</td>
			<td>${header["accept"]}</td>
		</tr>
		<!-- 获取Web应用的初始化参数值 -->
		<tr>
			<td>取得初始化参数值</td>
			<td>\${initParam["author"]}</td>
			<td>${initParam["author"]}</td>
		</tr>
		<!-- 获取session返回的属性值 -->
		<tr>
			<td>取得session的属性值</td>
			<td>\${sessionScope["user"]}</td>
			<td>${sessionScope["user"]}</td>
		</tr>
		<!-- 获取指定Cookie的值 -->
		<tr>
			<td>取得指定Cookie的值</td>
			<td>\${cookie["name"].value}</td>
			<td>${cookie["name"].value}</td>
		</tr>
	</table>


</body>
</html>