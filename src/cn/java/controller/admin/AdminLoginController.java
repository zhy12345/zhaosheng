/**
 * 
 */
package cn.java.controller.admin;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.java.entity.Person;
import cn.java.service.PersonService;
import cn.java.utils.CaptchaGenerator;
import cn.java.utils.EncryptUtils;
import cn.java.utils.SimpleCaptchaGenerator;

/**
 * @ClassName: AdminLoginController.java Description: Date：2018年8月24日-下午4:55:47
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminLoginController {
	@Autowired
	PersonService ps;

	Person person = new Person();

	@RequestMapping(value = "adminlogin", method = RequestMethod.GET)
	public String login() {
		return "admin/login.jsp";
	}

	@RequestMapping(value = "adminlogin", method = RequestMethod.POST)
	public String submitLogin(String username, String password, String code, HttpServletRequest request, Model model) {

		String co = (String) request.getSession().getAttribute("yanzhengma");

		if (co.equals(code)) {
			person = ps.selectByusername(username);
			if (person == null) {
				model.addAttribute("error", "用户不存在");
			} else if (EncryptUtils.checkPassword(password, person.getPassword()) == false) {
				model.addAttribute("error", "密码错误");
			} else if (EncryptUtils.checkPassword(password, person.getPassword())) {
				request.getSession().setAttribute("person", person);
				return "admin/main.jsp";
			}
		} else {
			model.addAttribute("error", "验证码不正确");
		}
		return "admin/login.jsp";

	}

	@RequestMapping("main")
	public String mainpage(HttpServletRequest request) {
		Person person = (Person) request.getSession().getAttribute("person");
		request.setAttribute("user", person);
		return "admin/main.jsp";
	}

	@RequestMapping("getuserinfo")
	public String getuserinfo(HttpServletRequest request) {
		Person person = (Person) request.getSession().getAttribute("person");
		request.setAttribute("user", person);
		return "admin/personinfo/personinfo.jsp";
	}

	@RequestMapping("saveinfo")
	public String saveinfo(Person person, HttpServletRequest request) {
		String error = "";
		Person user = (Person) request.getSession().getAttribute("person");
		person.setId(user.getId());
		if (ps.updateByPrimaryKeySelective(person) != 0) {
			user.setTruename(person.getTruename());
			user.setUsername(person.getUsername());
			request.getSession().setAttribute("person", user);
		} else {
			error = "保存失败";
			request.setAttribute("error", error);
		}
		return "redirect:getuserinfo.shtml";
	}

	@RequestMapping("updatepassword")
	public String updatepass(String password, HttpServletRequest request) {
		System.out.println(password);
		String error = "";
		Person user = (Person) request.getSession().getAttribute("person");
		System.out.println(user);
		person.setId(user.getId());
		person.setPassword(password);
		if (password.equals(user.getPassword())){
			System.out.println("对了");
			person.setPassword(EncryptUtils.encryptPassword(password));
			if (ps.updateByPrimaryKeySelective(person) != 0) {
				request.getSession().removeAttribute("person");
				return "admin/personinfo/personPassword.jsp";
			} else {
				error = "修改失败";
			}
		} else {
			error = "密码错误";
		}
		request.setAttribute("error", error);
		return "admin/personinfo/personPassword.jsp";
	}

	@RequestMapping(value = "getCapthca")
	public void captcha(HttpServletRequest request, HttpServletResponse response) {
		response.setDateHeader("Expires", 0);
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "private,no-cache,no-store,max-age=0");
		CaptchaGenerator generator = new SimpleCaptchaGenerator();
		Map<String, Object> map = generator.generateCaptchaCode();

		String code = (String) map.get("code");
		BufferedImage img = (BufferedImage) map.get("image");
		request.getSession().setAttribute("yanzhengma", code);

		try {
			ImageIO.write(img, "png", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping(value = "adminloginout")
	public String adminLoginout(HttpServletRequest request) {
		request.getSession().removeAttribute("persion");
		return "redirect:adminlogin.shtml";
	}


//	 @RequestMapping("zhuce") 
//	 public void zhuce(Person person) {
//		 person.setPassword( EncryptUtils.encryptPassword(person.getPassword()));
//		 ps.insertSelective(person); 
//	 }

}
