

package cn.java.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.java.entity.Person;

public class LoginInterceptor implements HandlerInterceptor {
    // preHandle方法每次访问都执行
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
        HttpSession session = request.getSession();
        Person person = new Person();
        person = (Person)session.getAttribute("person");
        if(person==null) {
        	String loginurl = "/admin/adminlogin.shtml";
        	response.sendRedirect(request.getContextPath()+loginurl);
        	return false;
        }else {
        	return true;
        }
        
    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {

    }

}
