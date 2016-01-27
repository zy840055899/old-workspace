package friendManager;

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

import loginRegister.LoginBean;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/DeleteFriendServlet")
public class DeleteFriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void wrong1()
	{
		String msg = "请输入要删除的人的姓名";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void wrong2()
	{
		String msg = "此联系人不存在";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void right()
	{
		String msg = "成功删除";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		
		if(name == null || name.length() == 0)
		{
			wrong1();
			response.sendRedirect("http://localhost:8080/PIMS/friendManager/deleteFriend.jsp");
		}
		else 
		{
			try
			{
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/person";
				con = (Connection) DriverManager.getConnection(url,"root","root");
				stmt = (Statement) con.createStatement();
				
				String userName = "";
				
				HttpSession session = request.getSession();
				
				ArrayList login = (ArrayList) session.getAttribute("login");
				
				if(login.size() == 0 || login ==null)
				{
					response.sendRedirect("http://localhost:8080/PIMS/login.jsp");
				}
				else 
				{
					for(int i = login.size() - 1; i >= 0; i--)
					{
						LoginBean nn = (LoginBean) login.get(i);
						userName = nn.getUserName();
					}
				}
				
				String sql1 = "select * from friends where name='"+name+"' and userName='"+userName+"'";
				
				rs = stmt.executeQuery(sql1);
				rs.last();
				int k = rs.getRow();
				if(k < 1)
				{
					wrong2();
					response.sendRedirect("http://localhost:8080/PIMS/friendManager/deleteFriend.jsp");
				}
				else 
				{
					right();
					
					String sql2 = "delete from friends where name='"+name+"' and userName='"+userName+"'";
					stmt.executeUpdate(sql2);
					
					String sql3 = "select * from friends where userName='"+userName+"'";
					rs = stmt.executeQuery(sql3);
					rs.last();
					int list = rs.getRow();
					
					if(list < 1)
					{
						ArrayList friendslist = null;
						session.setAttribute("friendslist", friendslist);
					}
					else 
					{
						ArrayList friendslist = null;
						friendslist = new ArrayList();
						
					
						
						while(rs.next())
						{
							LookFriendBean ff = new LookFriendBean();
							
							ff.setName(rs.getString("name"));
							ff.setPhone(rs.getString("phone"));
							ff.setEmail(rs.getString("email"));
							ff.setWorkplace(rs.getString("workPlace"));
							ff.setPlace(rs.getString("place"));
							ff.setQQ(rs.getString("QQ"));
							
							friendslist.add(ff);
							session.setAttribute("friendslist", friendslist);
						}
					}
				}
				rs.close();
				stmt.close();
				con.close();
				
				
				//request.getRequestDispatcher("http://localhost:8080/PIMS/lookFriend.jsp").forward(request, response);
			
				response.sendRedirect("http://localhost:8080/PIMS/LookFriendServlet");
	
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
