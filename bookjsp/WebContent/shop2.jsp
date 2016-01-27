<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,Integer> m = (Map<String,Integer>)session.getAttribute("m");
if(m == null)
{
	m = new HashMap<String,Integer>();
	m.put("book", 0);
	m.put("computer", 0);
	m.put("car", 0);
}
String[] products = request.getParameterValues("name");
if(products == null)
{
	//如果用户没有选择任何商品进入空语句
}
 else
	{
		for (String product : products)
		{
			if (product.equals("book"))
			{
				int num1 = m.get("book").intValue();
				m.put("book", num1 + 1);
			}
			else if (product.equals("computer"))
			{
				int num2 = m.get("computer").intValue();
				m.put("computer", num2 + 1);
			} 
			else if (product.equals("car"))
			{
				int num3 = m.get("car").intValue();
				m.put("car", num3 + 1);
			} 
		}

		session.setAttribute("m", m);
	}
%>
你购买的商品为 <br>
书:<%=m.get("book") %>本<br>
电脑:<%=m.get("computer") %>台<br>
汽车:<%=m.get("car") %>辆<br><br>
<a href="shop.jsp">再次购买</a>
</body>
</html>