package zy;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.namespace.QName;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.Annotated;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.Annotation;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.SimpleType;
import com.sun.xml.internal.txw2.Document;
import com.sun.xml.internal.txw2.TypedXmlWriter;

/**
 * Servlet implementation class yanzheng
 */
@WebServlet("/yanzheng")
public class yanzheng extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public yanzheng() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		java.util.List<String> list = new ArrayList<String>();
		if("".equals(username))
		{
			list.add("用户名不能为空");
		}
		if(password == null || password.length() < 6 || password.length() > 10)
		{
			list.add("密码不规范！");
		}
		if(repassword == null || repassword.length() < 6 || repassword.length() > 10)
		{
			list.add("重输的密码不规范！");
		}
		if(repassword != null && password != null && !password.equals(repassword))
		{
			list.add("密码不一致！");
		}
		if(list.isEmpty())
		{
			request.setAttribute("username",username);
			request.getRequestDispatcher("yanzhengsuccess.jsp").forward(request, response);
		}
		else 
		{
			request.setAttribute("error", list);
			request.getRequestDispatcher("yanzhengerror.jsp").forward(request, response);
		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
