package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
//@WebFilter(filterName="log",urlPatterns={"/*"})
public class FilterTest implements Filter {
	
	private FilterConfig fc;

	public void destroy() {
		// TODO Auto-generated method stub
		this.fc = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		long before = System.currentTimeMillis();
		System.out.println("开始过滤。。。。");
		HttpServletRequest hrequest = (HttpServletRequest)request;
		System.out.println("filter已经拦截到用户请求地址：" + hrequest.getServletPath());
		
		chain.doFilter(request, response);
		
		long after = System.currentTimeMillis();
		System.out.println("过滤结束 ");
		System.out.println("请求被定位到" + hrequest.getRequestURL() + "所化的时间为" + (after-before));
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.fc = fc;
	}

}
