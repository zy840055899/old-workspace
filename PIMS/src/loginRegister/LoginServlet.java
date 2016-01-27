package loginRegister;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void wrong1()
	{
		String msg = "用户名不可以为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	
	public void wrong2()
	{
		String msg = "密码不可以为空";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	
	public void wrong3()
	{
		String msg = "该用户尚未注册";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	
	public void wrong4()
	{
		String msg = "密码不正确";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	     

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
		
		//System.out.println(userName);//这一部可以读取到userName
		
		if(userName.equals(""))
		{
			wrong1();
			response.sendRedirect("http://localhost:8080/PIMS/login.jsp");
		}
		else if (password.equals("")) 
		{
			wrong2();
			response.sendRedirect("http://localhost:8080/PIMS/login.jsp");
		}
		else
		{
			try
			{
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				Class.forName("com.mysql.jdbc.Driver");
				/*url后面的?useUnicode=true&characterEncoding=gbk，用于处理向数据库中添加数据出现乱码的问题*/
				String url = "jdbc:mysql://localhost:3306/person";
				con = (Connection) DriverManager.getConnection(url,"root","root");
				stmt = (Statement) con.createStatement();
				String sql = "select * from user where userName = '"+ userName +"'";
				rs = stmt.executeQuery(sql);
				int N = 0;
				int P = 0;
				while(rs.next())
				{
					if(userName.equals(rs.getString("userName")))
					{
						N = 1001;
						if(password.equals(rs.getString("password")))
						{
							//System.out.println(userName);//能读取userName
							P = 1001;
							//实例化保存个人信息的javabean
							LoginBean nn = new LoginBean();
							nn.setUserName(userName);
							nn.setPassword(password);
							//获取session对象
							HttpSession session = request.getSession();
							//实例化列表对象
							ArrayList login = new ArrayList();
							//吧个人信息保存到列表中
							login.add(nn);
							//吧列表保存到session对象中，以便其他页面获取个人信息
							session.setAttribute("login",login);
							response.sendRedirect("http://localhost:8080/PIMS/main/main.jsp");
						}
						else
						{
						}
					}
					else
					{
						N++;
					}
				}
				
				if(N < 1001)
				{
					wrong3();
					response.sendRedirect("http://localhost:8080/PIMS/login.jsp");
				}
				else if(P < 1001)
				{
					wrong4();
					response.sendRedirect("http://localhost:8080/PIMS/login.jsp");
				}
				
			} 
			catch (Exception e)
			{
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
