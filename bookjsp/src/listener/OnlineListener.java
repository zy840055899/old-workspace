package listener;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class OnlineListener implements HttpSessionListener {

    public OnlineListener() {
    }

    public void sessionCreated(HttpSessionEvent arg0) {
    	//第一步：获取session，和application
    	HttpSession session = arg0.getSession();
    	ServletContext application = session.getServletContext();
    	//第二部：获取session id
    	String id = session.getId();
    	//第三部：判断是否新的对话，未登录用户当做游客来处理，登录信息放入map容器
    	if(session.isNew())
    	{
    		String user = (String) session.getAttribute("user");
    		//未登录游客当做游客处理,三目运算符的用法 int i = (1 == 2) ? 4:5
    		user = (user == null) ? "游客" : user;
    		//创建一个MAP容器
    		Map<String, String> online = (Map<String, String>) application.getAttribute("user");
    		//如果online为空，创建一个新的hashmap
    		if(online == null)
    		{
    			online = new Hashtable<String, String>();
    		}
    		//把用户信息放在map中
    		online.put(id, user);
    		application.setAttribute("online", online);
    	}
    	
    }
//当用户和服务器之间session断开时会调用该方法
    public void sessionDestroyed(HttpSessionEvent arg0) {
    	//与session创建方法类似
    	HttpSession session = arg0.getSession();
    	ServletContext application = session.getServletContext();
    	
    	String id = session.getId();
    	Map<String, String> online = (Map<String, String>) application.getAttribute("online");
    	if(online != null)
    	{
    		online.remove(id);
    	}
    	application.setAttribute("online", online);
    }
	
}
