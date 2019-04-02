/**
 * 
 */
package cn.java.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.Major;
import cn.java.service.MajorService;
import cn.java.utils.Page;

/**
 * @ClassName: AdminMajorController.java Description: Date：2018年8月24日-下午4:56:24
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminMajorController {
	@Autowired
	MajorService ms;

	@RequestMapping("addmajor")
	public String AddMajor(Major major, HttpServletRequest request) {
		String message = "";
		int flag = ms.insertSelective(major);
		if (flag == 1) {
			message = "发布成功";
		} else {
			System.out.println("导入失败");
			message = "发布失败";
		}
		request.setAttribute("message", message);
		return "admin/major/add.jsp";
	}

	@RequestMapping("adminallmajor")
	public String adminallMajor(Model model,String name,String majortype,Integer page, Integer limit) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (name != null && !name.trim().equals("")) {
			queryitems.put("name", "%" + name + "%");
		}
		if (majortype != null && !majortype.trim().equals("")) {
			queryitems.put("majortype", majortype);
		}
		if(page==null) {
			page=1;
		}
		if(limit==null) {
			limit=10;
		}
		PageHelper.startPage(page,limit);
		List<Major> majorlist = ms.selectAllMajor(queryitems);
		PageInfo<Major> pageinfo=new PageInfo<Major>(majorlist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("majorlist", majorlist);
		return "admin/major/list.jsp";
	}

	@RequestMapping("delmajor")
	public String delMajor(Integer[] delids) {
		
		for (Integer id : delids) {
			ms.deleteByPrimaryKey(id);
		}
		return "redirect:adminallmajor.shtml";
	}

	@RequestMapping("getupdatamajor")
	public String getupdataMajor(Integer id,Model model) {
		Major major = ms.selectById(id);
		model.addAttribute("major", major);
		return "/admin/major/modify.jsp";
	}
	
	
	@RequestMapping("updatemajor")
	public String updatamajor(Major major, HttpServletRequest request) {
		String message = "";
		int flag = ms.updateByPrimaryKeySelective(major);
		if (flag == 1) {
			message = "修改成功";

		} else {
			System.out.println("导入失败");
			message = "修改失败";
		}
		request.setAttribute("message", message);
		return "/admin/major/modify.jsp";

	}
}
