package zy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieServlet
 */
@WebServlet("/CookieServlet")
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private int count1;
    private int count2;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie cookie = new Cookie("cookieName" + count1++, "cookieValue" + count2++);
		cookie.setMaxAge(10);
		response.addCookie(cookie);
		Cookie[] cookies = request.getCookies();
		
		if(null == cookies)
		{
			return;
		}
		else
		{
			for(Cookie c: cookies)
			{
				System.out.println("cookieName:" + c.getName());
				System.out.println("cookieValue" + c.getValue());
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
