/**
 * 
 */
package cn.java.controller.front;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.Excel;
import cn.java.service.ExcelService;
import cn.java.utils.FileDownload;
import cn.java.utils.Page;

/**
 * @ClassName: DownloadExcelController.java Description:
 *             Date：2018年8月19日-下午5:29:11
 * @author zhy
 */
@Controller
public class DownloadExcelController {
	@Autowired
	ExcelService es;

	@RequestMapping("getzsjhexcel")
	public String getQueryExcel(Integer page, Integer limit,String exceltype, Model model) {
		List<Excel> excellist = es.selectByPrimaryFilesign("招生计划");
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		PageInfo<Excel> pageinfo = new PageInfo<Excel>(excellist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("excellist", excellist);
		return "front/zhaoshenplan.jsp";
	}

	@RequestMapping("getluquexcel")
	public String getluquexcel(Integer page, Integer limit,String exceltype, Model model) {
		List<Excel> excellist = es.selectByPrimaryFilesign("录取分数线");
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		PageInfo<Excel> pageinfo = new PageInfo<Excel>(excellist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("excellist", excellist);
		return "front/luqu.jsp";
	}

	@RequestMapping("load")
	public void load(Integer id, String fileName, HttpServletRequest request, HttpServletResponse response) {
		es.updateDownloadnum(id);
		FileDownload fdl = new FileDownload();
		fdl.download(fileName, request, response);
	}

}
