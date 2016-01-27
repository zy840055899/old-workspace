package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebFilter(filterName="LogFilter",urlPatterns={"/*"})
public class LogFilter implements Filter {

    private static final String HttpServletResponse = null;

    public LogFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//设置request编码用的字符集
		request.setCharacterEncoding("UTF-8");
		HttpServletRequest req = (HttpServletRequest) request;
		
		//获取客户请求的页面
		String requestPath = req.getServletPath();
		if(requestPath.endsWith("index.jsp"))
		{
			chain.doFilter(request, response);
			return;
		}
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("username") == null)
		{
		    ((javax.servlet.http.HttpServletResponse) response).sendRedirect("index.jsp");
		}
		else
		{
			chain.doFilter(request, response);
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
