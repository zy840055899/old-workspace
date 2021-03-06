package lookMessage;

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

import sun.org.mozilla.javascript.internal.ast.NewExpression;
import loginRegister.LoginBean;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/UpdateMessageServlet")
public class UpdateMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void wrong1()
	{
		String msg = "不允许有空，注册失败";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	
	public void right()
	{
		String msg = "修改成功";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String edu = new String(request.getParameter("edu").getBytes("ISO-8859-1"),"UTF-8");
		String work = new String(request.getParameter("work").getBytes("ISO-8859-1"),"UTF-8");
		String phone = new String(request.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
		
		if (phone.length() == 0 || email.length() == 0)
		{
			wrong1();
			response.sendRedirect("http://localhost:8080/PIMS/lookMessage/updateMessage.jsp");
		}
		else
		{
			try
			{
				//使用数据库四个重要的步骤
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3306/person";
				con = (Connection) DriverManager.getConnection(url, "root", "root");
				stmt = (Statement) con.createStatement();
				
				String userName = "";
				HttpSession session = request.getSession();
				ArrayList login = (ArrayList) session.getAttribute("login");
				
				if(login == null || login.size()== 0)
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
				
				String sql1 = "Update user set edu='"+edu+"',work='"+work+"',phone='"+phone+"',email='"+email+"' where userName='"+userName+"'";
				stmt.executeUpdate(sql1);
				
				String sql2 = "select * from user where userName = '"+userName+"'";
				rs = stmt.executeQuery(sql2);
				LookMessageBean mm = new LookMessageBean();
				while(rs.next())
				{
					mm.setName(rs.getString("name"));
					mm.setSex(rs.getString("sex"));
					mm.setBirth(rs.getString("birth"));
					mm.setNation(rs.getString("nation"));
					mm.setEdu(rs.getString("edu"));
					mm.setWork(rs.getString("work"));
					mm.setPhone(rs.getString("phone"));
					mm.setPlace(rs.getString("place"));
					mm.setEmail(rs.getString("email"));
				}
				
				ArrayList wordlist = null;
				wordlist = new ArrayList();
				wordlist.add(mm);
				
				session.setAttribute("wordlist", wordlist);
				
				rs.close();
				stmt.close();
				con.close();
				
				right();
				
				response.sendRedirect("http://localhost:8080/PIMS/lookMessage/lookMessage.jsp");
		
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
