package zy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Threadd
 */
@WebServlet("/Threadd")
public class Threadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		name = request.getParameter("username");
		
		try
		{
			Thread.sleep(5000);
		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		
		request.setAttribute("username",name);
		request.getRequestDispatcher("thread.jsp").forward(request, response);
	}

}
