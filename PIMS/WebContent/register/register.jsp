<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请填写以下注册信息</title>
</head>
<body>

<center>
<h1>请填写以下注册信息</h1>


<form action="http://localhost:8080/PIMS/RegisterServlet" method="post">

<table border="1">

	<tr>
	<td>登录名字:</td>
	<td><input type="text" name="userName" size="25"></td>
	</tr>
	
	<tr>
	<td>用户密码：</td>
	<td><input type="password" name="password1" size="25"></td>
	</tr>
	
	<tr>
	<td>重复密码：</td>
	<td><input type="password" name="password2" size="25"></td>
	</tr>
	
	<tr>
	<td>用户姓名：</td>
	<td><input type="text" name="name" size="25"></td>
	</tr>
	
	<tr>
	<td>用户性别：</td>
	<td>
	<input type="radio" name="sex" value="男" checked="checked">男
	<input type="radio" name="sex" value="女">女
	</td>
	</tr>
	
	<tr>
	<td>出生日期：</td>
	<td>
	<select name="year">
	<option value="1985">1985</option>
	<option value="1986">1986</option>
	<option value="1987">1987</option>
	<option value="1988">1988</option>
	<option value="1989">1989</option>
	<option value="1990">1990</option>
	<option value="1991">1991</option>
	<option value="1992">1992</option>
	<option value="1993">1993</option>
	<option value="1994">1994</option>
	<option value="1995">1995</option>
	</select>年
	<select name="mouth">
	<option value="01">01</option>
	<option value="02">02</option>
	<option value="03">03</option>
	<option value="04">04</option>
	<option value="05">05</option>
	<option value="06">06</option>
	<option value="07">07</option>
	<option value="08">08</option>
	<option value="09">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	</select>月
	<select name="day">
	<option value="01">01</option>
	<option value="02">02</option>
	<option value="03">03</option>
	<option value="04">04</option>
	<option value="05">05</option>
	<option value="06">06</option>
	<option value="07">07</option>
	<option value="08">08</option>
	<option value="09">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
	</select>日
	</td>
	</tr>
	
	<tr>
	<td>用户民族：</td>
	<td>
	<input type="radio" name="nation" value="汉族" checked="checked">汉族
	<input type="radio" name="nation" value="其他">其他
	</td>
	</tr>
	
	<tr>
	<td>用户学历：</td>
	<td>
	<select name="edu">
	<option value="博士">博士</option>
	<option value="硕士">硕士</option>
	<option value="本科">本科</option>
	<option value="专科">专科</option>
	<option value="其他">其他</option>
	</select>
	</td>
	</tr>
	
	<tr>
	<td>用户职称：</td>
	<td>
	<select name="work">
	<option value="工程师">工程师</option>
	<option value="教师">教师</option>
	<option value="学生">学生</option>
	<option value="职员">职员</option>
	<option value="公务员">公务员</option>
	<option value="其他">其他</option>
	</select>
	</td>
	</tr>
	
	<tr>
	<td>用户电话:</td>
	<td><input type="text" name="phone" size="25"></td>
	</tr>
	
	<tr>
	<td>家庭住址：</td>
	<td>
	<select name="place">
	<option value="北京">北京</option>
	<option value="上海">上海</option>
	<option value="广州">广州</option>
	<option value="深圳">深圳</option>
	<option value="其他">其他</option>
	</select>
	</td>
	</tr>
	
	<tr>
	<td>邮箱地址:</td>
	<td><input type="text" name="email" size="25"></td>
	</tr>

</table>
<br>
<input type="submit" value="提交">
<input type="reset" value="重置">

</form>

</center>

</body>
</html>