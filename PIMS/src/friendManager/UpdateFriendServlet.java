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

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/UpdateFriendServlet")
public class UpdateFriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void wrong1()
	{
		String msg = "请输入要修改人的姓名";
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
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String friendName = new String(request.getParameter("friendName").getBytes("ISO-8859-1"),"UTF-8");
		if(friendName.length() == 0)
		{
			wrong1();
			response.sendRedirect("http://localhost:8080/PIMS/friendManager/updateFriend.jsp");
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
				//由于所有用户的联系人都是放在同一张表中，
				//所以筛选的时候要先把userName得到，根据userName进行筛选
				HttpSession session = request.getSession();
				String userName = (String) session.getAttribute("userName");
				
				String sql1 = "select * from friends where name='"+friendName+"' and userName='"+userName+"'";
				rs = stmt.executeQuery(sql1);
				rs.last();
				int k = rs.getRow();
				//这一行什么意思？？
				rs.beforeFirst();
				if(k < 1)
				{
					wrong2();
					response.sendRedirect("http://localhost:8080/PIMS/friendManager/updateFriend.jsp");
				}
				else
				{
					ArrayList friendslist2 = null;
					friendslist2 = new ArrayList();
					while(rs.next())
					{
						LookFriendBean ff = new LookFriendBean();
						
						ff.setName(rs.getString("name"));
						ff.setPhone(rs.getString("phone"));
						ff.setEmail(rs.getString("email"));
						ff.setWorkplace(rs.getString("workPlace"));
						ff.setPlace(rs.getString("place"));
						ff.setQQ(rs.getString("QQ"));
						
						friendslist2.add(ff);
						session.setAttribute("friendslist2", friendslist2);
					}
					
					ArrayList friendslist3 = null;
					friendslist3 = new ArrayList();
					UpdateFriendBean nn = new UpdateFriendBean();
					nn.setName(friendName);
					friendslist3.add(nn);
					session.setAttribute("friendslist3", friendslist3);
				}
				
				rs.close();
				stmt.close();
				con.close();
				
				response.sendRedirect("http://localhost:8080/PIMS/friendManager/updateFriendMessage.jsp");
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
