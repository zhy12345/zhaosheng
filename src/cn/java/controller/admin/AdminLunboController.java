/**
 * 
 */
package cn.java.controller.admin;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartRequest;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.Lunbo;
import cn.java.service.impl.LunboServiceimpl;
import cn.java.utils.FilesUpload;
import cn.java.utils.Page;

/**
 * @ClassName: AdminLunboController.java Description: Date：2018年9月20日-下午12:23:05
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminLunboController {
	@Autowired
	LunboServiceimpl ls;

	@RequestMapping("getlunbolist")
	public String getLunBoList(Model model, Integer page, Integer limit, HttpServletRequest request) {
		List<Lunbo> lunbolist = new ArrayList<Lunbo>();
		lunbolist = ls.selectAllLuobo();
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		PageInfo<Lunbo> pageinfo = new PageInfo<Lunbo>(lunbolist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("lunbolist", lunbolist);
		return "admin/photo/lunbo.jsp";
	}

	@RequestMapping("addlunbo")
	public String Addlunbo(Lunbo lunbo,MultipartRequest file, HttpServletRequest request)
			throws IllegalStateException, IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		FilesUpload fu = new FilesUpload();
		List<String> pathlist = fu.AddPhotoFile(request, file);
		if (pathlist.size() > 1 || pathlist.size() == 0) {
			request.setAttribute("message", "一次只能上传一张图片");
			return "redirect:getlunbolist.shtml";
		} else {
			lunbo.setPhotopath(pathlist.get(0));
			lunbo.setAddtime(date);
			if (ls.insertSelective(lunbo) != 1) {
				request.setAttribute("message", "添加失败，请稍候重试");
			} else {
				request.setAttribute("message", "操作成功");
			}
			return "redirect:getlunbolist.shtml";
		}

	}

	@RequestMapping("dellunbophoto")
	public String delphoto(Integer[] delids) {
		for (Integer id : delids) {
			ls.deleteByPrimaryKey(id);
		}
		return "redirect:getlunbolist.shtml";
	}

	@RequestMapping("updatelunbo")
	public String updatelunbo(Lunbo lunbo,HttpServletRequest request) {
		if (ls.updateByPrimaryKeySelective(lunbo) == 1) {
			request.setAttribute("message", "操作成功");
		} else {
			request.setAttribute("message", "操作失败");
		}
		return "redirect:getlunbolist.shtml";
	}
}
