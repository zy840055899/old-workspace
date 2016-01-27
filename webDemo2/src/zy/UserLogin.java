package zy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.javabean.User;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String authority = request.getParameter("authority");
		
		User user = new User();
		HttpSession session = request.getSession();
		
		if ("1".equals(authority) && "zhangsan".equals(username) && "123".equals(password))
		{
			user.setUsername(username);
			user.setPassword(password);
			user.setAuthority(authority);

			session.setAttribute("user", user);
			
			request.getRequestDispatcher("userIndex.jsp").forward(request, response);
		}

		else if ("2".equals(authority) && "lisi".equals(username) && "456".equals(password))
		{
			user.setUsername(username);
			user.setPassword(password);
			user.setAuthority(authority);

			session.setAttribute("user", user);
			
			request.getRequestDispatcher("userIndex.jsp").forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
			rd.forward(request, response);
		}
		
	}

}
