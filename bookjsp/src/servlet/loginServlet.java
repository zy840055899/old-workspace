package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import javaBean.DbDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServlet")
	public class loginServlet extends HttpServlet
	{
	private static final long serialVersionUID = 1L;

		//响应客户端请求的方法
		public void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,java.io.IOException
		{
			String errMsg = "";
			RequestDispatcher rd;
			String username = request.getParameter("username");
			String pass = request.getParameter("pass");
			try
			{
				DbDao dd = new DbDao("com.mysql.jdbc.Driver","jdbc:mysql://localhost:3306/user_table","root","root");
				ResultSet rs = dd.query("select pass from user_table " + "where name = ?", username);
				if (rs.next())
				{
					//用户名和密码匹配
					if (rs.getString("pass").equals(pass))
					{
						//获取session对象
						HttpSession session = request.getSession(true);
						//设置session属性，跟踪用户会话状态
						session.setAttribute("name" , username);
						//获取转发对象
						rd = request.getRequestDispatcher("loginWelcome.jsp");
						//转发请求
						rd.forward(request,response);
					}
					else
					{
						//用户名和密码不匹配时
						errMsg += "密码错误,请重新输入";
					}
				}
				else
				{
					//用户名不存在时
					errMsg += "您的用户名不存在,请先注册";
				}
			}
			catch (Exception e)
			{
				e.printStackTrace();			
			}
			//如果出错，转发到重新登录
			if (errMsg != null && !errMsg.equals(""))
			{
				rd = request.getRequestDispatcher("login.jsp");		
				request.setAttribute("err" , errMsg);
				rd.forward(request,response);
			}
		}
	}
