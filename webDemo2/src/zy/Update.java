package zy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.javabean.User;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		if (null == session.getAttribute("user"))
		{
			response.sendRedirect("userLogin.jsp");
			return;
		}
		
		User user = new User();
		if("1".equals(user.getAuthority()))
		{
			System.out.println("shi bai");
		}
		else
		{
			System.out.println("cheng gong");
		}
		
	}

}
