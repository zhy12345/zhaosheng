package cn.java.controller.admin;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartRequest;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.College;
import cn.java.service.CollegeService;
import cn.java.utils.FilesUpload;
import cn.java.utils.Page;

@Controller
@RequestMapping("/admin/")
public class AdminCollegeContoller {
	
	@Autowired
	CollegeService collegeService;
	
	@RequestMapping("addCollegeInfo")
	public String addCollegeInfo(College college, MultipartRequest files, HttpServletRequest request) throws IllegalStateException, IOException {
		FilesUpload fu = new FilesUpload();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<String> pathlist = fu.addCollegeInfo(request, files);
		String date = sdf.format(new Date());
		if (pathlist.size() > 1 || pathlist.size() == 0) {
			request.setAttribute("message", "一次只能上传一张图片");
			return "redirect:getCollegeList.shtml";
		} else {
			college.setCollegePhoto(pathlist.get(0));
			college.setAddTime(date);
		}
		if(collegeService.insertSelective(college)<0) {
			request.setAttribute("message", "添加失败，请稍候重试");
		}else {
			request.setAttribute("message", "操作成功");
		}
		return "redirect:getCollegeList.shtml";
	}
	
	@RequestMapping("getCollegeList")
	public String getCollegeList(Model model, Integer page, Integer limit, HttpServletRequest request) {
		List<Map<String, Object>> collegeList = collegeService.selectAllCollege();
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		PageInfo<Map<String, Object>> pageinfo = new PageInfo<Map<String, Object>>(collegeList);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("collegeList",collegeList);
		return "admin/college/list.jsp";
	}
	
	
	@RequestMapping("delCollegeInfo")
	public String delCollegeInfo(Integer[] delids) {
		for (Integer id : delids) {
			collegeService.deleteByPrimaryKey(id);
		}
		return "redirect:getCollegeList.shtml";
	}
	
	@RequestMapping("updateCollege")
	public String updateCollege(College college,HttpServletRequest request) {
		
		if (collegeService.updateByPrimaryKeySelective(college) == 1) {
			request.setAttribute("message", "操作成功");
		} else {
			request.setAttribute("message", "操作失败");
		}
		return "redirect:getCollegeList.shtml";
	}
}
