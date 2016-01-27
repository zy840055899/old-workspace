package loginRegister;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import sun.misc.Request;

@WebServlet("/LoginCloseServlet")
public class LoginCloseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		//这一行代码非常重要
		//保证了用户A在退出登录的同时销毁session,而不会干扰到B用户的使用
		//重要！！！！！！！
		session.invalidate();
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
