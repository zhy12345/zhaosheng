

package cn.java.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Description: 能够解决当前工程下的所有乱码问题<br/>
 * Date: 下午4:27:06 <br/>
 * 
 * @author dingP
 * @version
 * @see
 */
public class EncodingFilter implements Filter {

    @Override
    public void doFilter(ServletRequest reqeust, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        reqeust.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        chain.doFilter(reqeust, response);
    }

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
