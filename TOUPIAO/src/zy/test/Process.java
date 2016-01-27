package zy.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Process
 */
@WebServlet("/Process")
public class Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		
		gender = new String(gender.getBytes("iso-8859-1"), "utf-8");
		
		String[] interset = request.getParameterValues("interset");
		String address = request.getParameter("address");
		//转码存储
		address = new String(address.getBytes("iso-8859-1"), "utf-8");
		
		String comment = request.getParameter("comment");
		
		List<String> list = new ArrayList<String>();
		
		if(null == username || "".equals(username))
		{
			list.add("用户名不可以为空 ");
		}
		else if(username.length() < 4 || username.length() > 8)
		{
			list.add("用户名长度不符合要求 ");
		}
		
		if(null == password || "".equals(password))
		{
			list.add("密码不可以为空 ");
		}
		else if(password.length() < 4 || password.length() > 8)
		{
			list.add("密码长度不符合要求 ");
		}
		
		if(null == gender)
		{
			list.add("请选择性别  ");
		}
		
		//这个地方有问题：怎样验证兴趣选取的个数？？？？？
//		if(interset.length == 0)//当时把这一行写成：interset.length<1就运行不出来  找了好一会儿才找到这个错误，注意！！！！！
//		{
//			list.add("至少选择一个兴趣");
//		}
//		
//		else if(interset.length == 3)
//		{
//			list.add("最多选择三个兴趣 ");
//		}
		
		if(comment == null || "".equals(comment))
		{
			list.add("说明不允许为空 ");
		}
		
		if(username == null && password == null && gender == null && comment == null)
		{
			list.add("不可以全部为空 ");
		}
		if(list.isEmpty())
		{
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			request.setAttribute("gender", gender);
			request.setAttribute("interset",interset);
			request.setAttribute("address", address);
			request.setAttribute("comment", comment);
			
			request.getRequestDispatcher("loginSuccess.jsp").forward(request, response);
		}
		else 
		{
			request.setAttribute("list", list);
			request.getRequestDispatcher("loginFailure.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
