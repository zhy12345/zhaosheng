package cn.java.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.Photo;
import cn.java.service.PhotoService;
import cn.java.utils.Page;

@Controller
public class PhotoController {
	@Autowired
	PhotoService photoService;
	
	@RequestMapping("getXYFGPhoto")
	public String getXYFGPhoto(Model model,@RequestParam(name = "page",defaultValue="1")Integer page, @RequestParam(name = "limit",defaultValue="9")Integer limit) {
		PageHelper.startPage(page, limit);
		List<Photo> photoList = photoService.selectBySign("校园风光");
		PageInfo<Photo>  pageinfo = new PageInfo<Photo>(photoList);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("photoList", photoList);
		return "front/xiao_yuan_feng_guang.jsp";
	}
	
	
	@RequestMapping("getYXXCPhoto")
	public String getYXXCPhoto(Model model,@RequestParam(name = "page",defaultValue="1")Integer page, @RequestParam(name = "limit",defaultValue="9")Integer limit) {
		PageHelper.startPage(page, limit);
		List<Photo> photoList = photoService.selectBySign("院系宣传");
		PageInfo<Photo>  pageinfo = new PageInfo<Photo>(photoList);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("photoList", photoList);
		return "front/yuan_xi_xuan_chuan.jsp";
	}
	
	@RequestMapping("getPhotoDetail")
	public String getPhotoDetail(String id,Model model) {
		Photo photo = photoService.selectByPrimaryKey(Integer.parseInt(id));
		model.addAttribute("photo", photo);
		return "front/photo_detail.jsp";
	}
}
