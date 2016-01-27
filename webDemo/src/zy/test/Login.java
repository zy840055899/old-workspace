package zy.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("Get方法被调用");
		process(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("Post方法被调用");
		process(request,response);
	}
	
	protected void process(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String temp = request.getParameter("age");
		int age = Integer.parseInt(temp);
		
		response.setContentType("text/html");//设置文本格式，可以去掉这一行
		
		PrintWriter out = response.getWriter();
		String result = "";
		if(password.equals(repassword) && age>=18)
		{
			result +="success!";
		}
		if(!password.equals(repassword) )
		{
			result += "password error!!";
		}	
		if(age<18)
		{
			result += "age error!!";
		}
		out.println("<html><head><title>Login Result</title></head>");
		out.println("<body>" + result + "</body></html>");
		out.flush();//清除缓存
	}
}
