package tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloWorldTag extends SimpleTagSupport
{
	//重写dotag方法
	@Override
	public void doTag() throws JspException, IOException
	{
		// TODO Auto-generated method stub
		super.doTag();
		getJspContext().getOut().write("Hello World" + "<br>" +new java.util.Date());
	}

}
