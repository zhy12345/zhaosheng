/**
 * 
 */
package cn.java.controller.front;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.java.entity.Student;
import cn.java.service.StudentService;

/**
 * @ClassName: TestController.java
 * Description:
 * Date：2018年8月18日-下午5:40:02
 * @author zhy
 */
@Controller
public class CheckAndRiliController {
	@Autowired
	StudentService ss;
	@RequestMapping("checkluqu")
	public String Checkluqu(Student stu,HttpServletRequest request ) {
		Student student	= new Student();
		student = ss.selectByPrimaryKey(stu);
		request.setAttribute("stu", student);
		if(student==null) {
			return "front/luquerror.jsp";
		}else {
			return "front/luquresult.jsp";
		}
	}
	
	@RequestMapping("luQuCheck")
	public String luQuCheck() {
		return "/front/lqcx.jsp";
	}
}
