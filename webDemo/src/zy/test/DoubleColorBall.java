package zy.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoubleColorBall
 */
@WebServlet("/DoubleColorBall")
public class DoubleColorBall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoubleColorBall() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Set<Integer> set = new HashSet<Integer>();
		Random random = new Random();
		while(set.size() != 6)
		{
			int randomValue = random.nextInt(33) + 1;
			set.add(randomValue);
		}
		int randomVlaue =  random.nextInt(16) + 1;
		
		String result = "RedBall:";
		for(Integer i:set)
		{
			result += i+ "" + ",";
		}
		
		result += "<br>blueBall:" + randomVlaue + "";
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter(); 
		
		out.println("<html><head><title>DoubleColorball</title></head>");
		out.println("<body>" + result + "</body></html>");
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
