/**
 * 
 */
package cn.java.controller.front;

import java.util.List;

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
 * @ClassName: MajorController.java Description: Date：2018年8月26日-下午4:20:59
 * @author zhy
 */
@Controller
public class MajorController {
	@Autowired
	MajorService ms;

	@RequestMapping("getthreemajor")
	public String getThreeMajor(HttpServletRequest request) {
		List<Major> BKlist = ms.selectByMajorType("本科");
		List<Major> ZKlist = ms.selectByMajorType("专科");
		List<Major> ZSBlist = ms.selectByMajorType("专升本");
		request.setAttribute("bklist", BKlist);
		request.setAttribute("zklist", ZKlist);
		request.setAttribute("zsblist", ZSBlist);
//		int length = BKlist.size() + ZKlist.size() + ZKlist.size();
//		request.setAttribute("length", length);
		return "front/major_info.jsp";
	}

	@RequestMapping("bkmajor")
	public String getBKMajor(Integer page, Integer limit,Model model,HttpServletRequest request) {
		
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Major> BKlist = ms.selectByMajorType("本科");
		PageInfo<Major> pageinfo = new PageInfo<Major>(BKlist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		request.setAttribute("bklist", BKlist);
		return "front/regular_college.jsp";
	}

	@RequestMapping("zkmajor")
	public String getZKMajor(Integer page, Integer limit,Model model,HttpServletRequest request) {
		
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Major> ZKlist = ms.selectByMajorType("专科");
		PageInfo<Major> pageinfo = new PageInfo<Major>(ZKlist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		request.setAttribute("zklist", ZKlist);
		return "front/specialized_subject.jsp";
	}

	@RequestMapping("zsbmajor")
	public String getZSBMajor(Integer page, Integer limit,Model model,HttpServletRequest request) {
		
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Major> ZSBlist = ms.selectByMajorType("专升本");
		PageInfo<Major> pageinfo = new PageInfo<Major>(ZSBlist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		request.setAttribute("zsblist", ZSBlist);
		return "front/upgraded_to_this_major.jsp";
	}

/*	@RequestMapping("majordetail")
	public String majordetail(Integer id, String majortype, Model model) {
		ms.updateClicknum(id);
		Major major = new Major();
		major.setId(id);
		major.setMajortype(majortype);
		List<Major> majorlist = ms.selectThreeById(major);
		Major major1 = new Major();
		Major major2 = new Major();
		Major major3 = new Major();
		if (majorlist.size() == 3) {
			major1 = majorlist.get(0);
			major2 = majorlist.get(1);
			major3 = majorlist.get(2);
		}
		if (majorlist.size() == 2 && majorlist.get(0).getId() == id) {
			major2 = majorlist.get(0);
			major3 = majorlist.get(1);
		}
		if (majorlist.size() == 2 && majorlist.get(1).getId() == id) {
			major1 = majorlist.get(0);
			major2 = majorlist.get(1);

		}
		if (majorlist.size() == 1) {
			major2 = majorlist.get(0);
		}
		model.addAttribute("major1", major1);
		model.addAttribute("major2", major2);
		model.addAttribute("major3", major3);
		if (majortype.equals("本科")) {
			return "front/bkmajordetail.jsp";
		}
		else if (majortype.equals("专科")) {
			return "front/zkmajordetail.jsp";
		}
		else{
			return "front/zsbmajordetail.jsp";
		}
	}*/
	@RequestMapping("majordetail")
	public String majordetail(Integer id, Model model) {
		ms.updateClicknum(id);
		Major major = ms.selectById(id);
		model.addAttribute("major", major);
		return "front/major_detail.jsp";
	}

}
