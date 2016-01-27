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

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sun.xml.internal.fastinfoset.algorithm.BuiltInEncodingAlgorithm.WordListener;

@WebServlet("/LookMessageServlet")
public class LookMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("userName");
		
		//System.out.println(userName);
		//错误在这里  压根找不到userName,如果换成1102就能直接找到1102的信息 ！！！错误已经解决
		//书上用了请求用户名附在请求地址后面的方式来传递userName，这是不可取的！！！
		//这个错误找了挺久的，解决方法是  把userName再拿出来  放入session中 
		//转入下一个页面时再拿出来使用  而不是通过附在地址栏后面！！！
		//String userName = request.getParameter("userName");
		try
		{
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			Class.forName("com.mysql.jdbc.Driver");	
			String url = "jdbc:mysql://localhost:3306/person";
			con = (Connection) DriverManager.getConnection(url, "root", "root");
			stmt = (Statement) con.createStatement();
			String sql = "select * from user where userName ='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			//System.out.println("hahahah");//这行可以看到
			
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
			
			
			ArrayList wordlist = new ArrayList();
			wordlist.add(mm);
			session.setAttribute("wordlist", wordlist);
			rs.close();
			stmt.close();
			con.close();
			response.sendRedirect("http://localhost:8080/PIMS/lookMessage/lookMessage.jsp");
		} 
		catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
