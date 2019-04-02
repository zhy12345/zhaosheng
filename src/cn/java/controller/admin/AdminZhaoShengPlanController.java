/**
 * 
 */
package cn.java.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;

import cn.java.entity.Excel;
import cn.java.service.ExcelService;
import cn.java.service.PlanService;
import cn.java.utils.FileDownload;

/**
 * @ClassName: ZhaoShengPlanController.java
 * Description:
 * Date：2018年12月14日-下午1:29:42
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminZhaoShengPlanController {

	@Autowired
	PlanService planService;
	
	@Autowired
	ExcelService excelService;
	
	@RequestMapping("getAllPalnExcel")
	public String getAllPalnExcel(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
			@RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize, Model model) {
		List<Excel> excelList = excelService.getBySign("招生计划", pageNum, pageSize);
		PageInfo<Excel> pageinfo = new PageInfo<Excel>(excelList);
		model.addAttribute("pageinfo", pageinfo);
		return "/admin/excel/zhaoShengPlan.jsp" ;
	}
	
	@RequestMapping("addPlanExcel")
	public String addPlanExcel(String years, @RequestParam(value = "file") MultipartFile file,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String filePath = planService.addPlanExcel(request, file);
		planService.insertPlan(years,filePath,request);
		return "redirect:/admin/getAllPalnExcel.shtml";
	}
	
	
	
	@RequestMapping("delPlan")
	public String test(String [] delids) {
		for (String strId : delids) {
			Integer id = Integer.parseInt(strId);
			  planService.deletePlan(id);
		}
		return "redirect:/admin/getAllPalnExcel.shtml";
	}
	
	@RequestMapping("load")
	public void load(Integer id, String filepath, HttpServletRequest request, HttpServletResponse response) {
		excelService.updateDownloadnum(id);
		FileDownload fdl = new FileDownload();
		fdl.download(filepath, request, response);
	}

}
