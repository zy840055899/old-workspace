<%@ page contentType="image/jpeg" language="java" pageEncoding="GBk"%>
<%@ page import="java.awt.image.*,javax.imageio.*,java.io.*,java.awt.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
//创建BufferedImage对象
BufferedImage image = new BufferedImage(340 , 160, BufferedImage.TYPE_INT_RGB);
//以Image对象获取Graphics对象
Graphics g = image.getGraphics();
//使用Graphics画图，所画的图像将会出现在image对象中
g.fillRect(0,0,400,400);
//设置颜色：红
g.setColor(new Color(255,0,0));
//画出一段弧
g.fillArc(20, 20, 100,100, 30, 120);
//设置颜色：绿
g.setColor(new Color(0 , 255, 0));
//画出一段弧
g.fillArc(20, 20, 100,100, 150, 120);
//设置颜色：蓝
g.setColor(new Color(0 , 0, 255));
//画出一段弧
g.fillArc(20, 20, 100,100, 270, 120);
//设置颜色：黑
g.setColor(new Color(0,0,0));
g.setFont(new Font("Arial Black", Font.PLAIN, 16));
//画出三个字符串
g.drawString("red:climb" , 200 , 60);
g.drawString("green:swim" , 200 , 100);
g.drawString("blue:jump" , 200 , 140);
g.dispose();
//将图像输出到页面的响应
ImageIO.write(image , "jpg" , response.getOutputStream());
%>
</body>
</html>