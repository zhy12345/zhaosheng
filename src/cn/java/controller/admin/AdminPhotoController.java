/**
 * 
 */
package cn.java.controller.admin;

import java.io.IOException;
import java.util.HashMap;
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

import cn.java.entity.Photo;
import cn.java.service.PhotoService;
import cn.java.utils.FilesUpload;
import cn.java.utils.Page;

/**
 * @ClassName: AdminPhoto.java Description: Date：2018年9月16日-上午10:16:34
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminPhotoController {
	@Autowired
	PhotoService ps;

	@RequestMapping("getviewphoto")
	public String getViewPhoto(Model model, Integer page, Integer limit, HttpServletRequest request) {
		String sign = "校园风光";
		
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Photo> photolist = ps.selectBySign(sign);
		PageInfo<Photo> pageinfo = new PageInfo<Photo>(photolist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("photolist", photolist);
		return "admin/photo/view.jsp";
	}

	@RequestMapping("getxuanchuanphoto")
	public String getxuanchuanphoto(Model model, Integer page, Integer limit, HttpServletRequest request) {
		String sign = "院系宣传";
		
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<Photo> photolist = ps.selectBySign(sign);
		PageInfo<Photo> pageinfo = new PageInfo<Photo>(photolist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("photolist", photolist);
		return "admin/photo/xuanchuan.jsp";
	}

	@RequestMapping("addphoto")
	public String AddPhoto(Photo photo, String address, MultipartRequest files, HttpServletRequest request)
			throws IllegalStateException, IOException {
		FilesUpload fu = new FilesUpload();
		List<String> pathlist = fu.AddPhotoFile(request, files);
		for (String path : pathlist) {
			Map<String, Object> photomap = new HashMap<String, Object>();
			photomap.put("sign", photo.getSign());
			photomap.put("photopath", path);
			photomap.put("yuanxi", photo.getYuanxi());
			photomap.put("addtime", photo.getAddtime());
			photomap.put("author", photo.getAuthor());
			if (ps.insertSelective(photomap) != 1) {
				request.setAttribute("message", "添加失败，请稍候重试");
			} else {
				request.setAttribute("message", "操作成功");
			}
		}
		if (address.equals("view")) {
			return "redirect:getviewphoto.shtml";
		} else {
			return "redirect:getxuanchuanphoto.shtml";
		}

	}

	@RequestMapping("delphoto")
	public String delphoto(Integer[] delids, String phototype) {
		for (Integer id : delids) {
			ps.deleteByPrimaryKey(id);
		}
		if (phototype.equals("view")) {
			return "redirect:getviewphoto.shtml";
		} else {
			return "redirect:getxuanchuanphoto.shtml";
		}
	}
	
	
}
