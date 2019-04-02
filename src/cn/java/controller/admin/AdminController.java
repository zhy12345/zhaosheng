
package cn.java.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.Excel;
import cn.java.service.ExcelService;
import cn.java.service.StudentService;
import cn.java.utils.CheckExcel;
import cn.java.utils.FilesUpload;
import cn.java.utils.Page;
import cn.java.utils.ReadExcel;

/**
 * 
 * Description:
 * 
 * Date：2018年8月17日-下午7:57:30
 * 
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminController {

	// private static Log log = LogFactory.getLog(AdminController.class);

	@Autowired
	StudentService ss;
	Excel excel = new Excel();
	@Autowired
	ExcelService es;

	/**
	 * 访问controller进入操作页面
	 * 
	 * @return
	 */
	@RequestMapping("init")
	public String init() {
		return "client.jsp";
	}

	@RequestMapping(value = "addcheckexcel")
	public String addcheckexcel(String addtime, @RequestParam(value = "file") MultipartFile file,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String Msg = null;
		boolean b = false;
		// 判断文件是否为空
		if (file == null) {
			Msg = "文件是为空！";
			request.getSession().setAttribute("msg", Msg);
		}
		// String uuid = UUID.randomUUID().toString();
		// String path = request.getServletContext().getRealPath("/upload");
		// String basePath = path.split("webapps")[0] + "webapps\\upload";
		// String basePth = "D:\\TomCat";
		// 获取文件名
		String name = file.getOriginalFilename();

		// 进一步判断文件是否为空（即判断其大小是否为0或其名称是否为null）验证文件名是否合格
		long size = file.getSize();
		if (name == null || ("").equals(name) && size == 0 && !CheckExcel.validateExcel(name)) {
			Msg = "文件格式不正确！请使用.xls或.xlsx后缀文档。";
			request.getSession().setAttribute("msg", Msg);
		}
		// 创建处理EXCEL
		ReadExcel readExcel = new ReadExcel();
		// 解析excel，获取Excel表中数据集合。
		List<Map<String, Object>> Maplist = readExcel.getExcelInfo(request, file);
		if (Maplist != null) {
			b = true;
		}
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyymmddHHmm");
		String dt = df.format(date);
		String Path = dt + name;
		if (b) {
			for (Map<String, Object> map : Maplist) {
				// 这里做添加数据库的功能
				map.put("filename", Path);
				map.put("filetype", "query");
				ss.insertSelective(map);
			}
			Msg = "批量导入EXCEL成功！";
			request.getSession().setAttribute("msg", Msg);
			// 将导入的Excel文件存入数据库（路径）
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("filepath", Path);
			map.put("filename", name);
			map.put("addtime", addtime);
			int flag = es.insertSelective(map);
			if (flag == 1) {
				System.out.println("导入数据库成功");
			}
		} else {
			Msg = "批量导入EXCEL失败！";
			request.getSession().setAttribute("msg", Msg);
		}
		return "redirect:queryexcel.shtml";
	}

	@RequestMapping("exceptquery")
	public String exceptquery(Model model,String name, Integer page, Integer limit) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (name != null && !name.trim().equals("")) {
			queryitems.put("name", "%" + name + "%");
			model.addAttribute("selname", name);
		}
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Excel> exclelist = es.selectexceptquery(queryitems);
		PageInfo<Excel> pageinfo=new PageInfo<Excel>(exclelist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("exclelist", exclelist);
		model.addAttribute("page", pager);
		return "admin/excel/list.jsp";
	}

	@RequestMapping("queryexcel")
	public String queryexcel(Model model,String name, Integer page, Integer limit) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (name != null && !name.trim().equals("")) {
			queryitems.put("name", "%" + name + "%");
			model.addAttribute("filename", name);
		}
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Excel> exclelist = es.selectbyquery(queryitems);
		PageInfo<Excel> pageinfo=new PageInfo<Excel>(exclelist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("exclelist", exclelist);
		model.addAttribute("page", pager);
		return "admin/query/list.jsp";
	}

	@RequestMapping("addexcel")
	public String addexcel(Excel excel, MultipartFile file, HttpServletRequest request) {
		String message = "";
		if (file == null) {
			message = "文件不能为空";
			request.setAttribute("message", message);
		} else {
			String name = file.getOriginalFilename();
			long size = file.getSize();
			if (name == null || ("").equals(name) && size == 0 && !CheckExcel.validateExcel(name)) {
				message = "文件格式不正确！请使用.xls或.xlsx后缀文档。";
				request.setAttribute("message", message);
			} else {
				FilesUpload upload = new FilesUpload();
				String filepath = upload.UploadFile(file);
				excel.setFilepath(filepath);
				int flag = es.insert(excel);
				if (flag == 1) {
					message = "操作成功";
					request.setAttribute("message", message);
				} else {
					message = "操作失败";
					request.setAttribute("message", message);
				}
				System.out.println(message);
			}
		}
		return "redirect:exceptquery.shtml";
	}

	@RequestMapping("delqueryexcel")
	public String delexcel(Integer[] delids, String[] filepaths) {
		for (Integer id : delids) {
			Excel excel = es.selectByPrimaryKey(id);
			// 事务没写
			int flag = es.deleteByPrimaryKey(id);
			if (flag != 0) {
				ss.delByFilename(excel.getFilepath());
			}

		}
		return "redirect:queryexcel.shtml";
	}

	@RequestMapping("delexcel")
	public String delqueryexcel(Integer[] delids) {
		for (Integer id : delids) {
			es.deleteByPrimaryKey(id);
		}

		return "redirect:exceptquery.shtml";
	}

	@RequestMapping("updateexcel")
	public String updateExcel(Excel excel, MultipartFile file, HttpServletRequest request) {
		System.out.println(excel);
		String message = "";
		if (file == null) {
			message = "文件不能为空";
			request.setAttribute("message", message);
		} else {
			String name = file.getOriginalFilename();
			long size = file.getSize();
			if (name == null || ("").equals(name) && size == 0 && !CheckExcel.validateExcel(name)) {
				message = "文件格式不正确！请使用.xls或.xlsx后缀文档。";
				request.setAttribute("message", message);
			} else {
				FilesUpload upload = new FilesUpload();
				String filepath = upload.UploadFile(file);
				excel.setFilepath(filepath);
				System.out.println("*****" + excel);
				int flag = es.updateByPrimaryKeySelective(excel);
				if (flag == 1) {
					message = "操作成功";
					request.setAttribute("message", message);
				} else {
					message = "操作失败";
					request.setAttribute("message", message);
				}
				System.out.println(message);
			}
		}
		return "redirect:exceptquery.shtml";
	}

}