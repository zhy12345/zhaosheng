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

import cn.java.entity.News;
import cn.java.service.NewsService;
import cn.java.utils.Page;

/**
 * @ClassName: NewsController.java Description: Date：2018年8月20日-下午8:06:55
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminNewsController {
	@Autowired
	NewsService ns;

	@RequestMapping(value = "addnews")
	public String AddNews(News news, HttpServletRequest request) {
		String message = "";
		int flag = ns.insertSelective(news);
		if (flag == 1) {
			message = "发布成功";

		} else {
			System.out.println("导入失败");
			message = "发布失败";
		}
		request.setAttribute("message", message);
		if ("政策规定".equals(news.getType())) {
			return "redirect:adminzcgdnews.shtml";
		} else if ("招生简章".equals(news.getType())) {
			return "redirect:adminzsjznews.shtml";
		} else {
			return "redirect:adminallnews.shtml";
		}

	}

	@RequestMapping("adminallnews")
	public String adminallnews(Model model,String name,String type,Integer page, Integer limit) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (name != null && !name.trim().equals("")) {
			queryitems.put("name", "%" + name + "%");
		}
		if (type != null && !type.trim().equals("")) {
			queryitems.put("type", type);
		}
		if(page==null) {
			page=1;
		}
		if(limit==null) {
			limit=10;
		}
		PageHelper.startPage(page,limit);
		List<News> newslist = ns.selectAllnews(queryitems);
		PageInfo<News> pageinfo=new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		return "/admin/news/list.jsp";
	}

	@RequestMapping("adminzcgdnews")
	public String adminzcgdnews(Model model,String name,Integer page, Integer limit) {
		String type = "政策规定";
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (name != null && !name.trim().equals("")) {
			queryitems.put("name", "%" + name + "%");
		}
		queryitems.put("type", type);
		if(page==null) {
			page=1;
		}
		if(limit==null) {
			limit=10;
		}
		PageHelper.startPage(page,limit);
		List<News> newslist = ns.selectByType(queryitems);
		PageInfo<News> pageinfo=new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		return "/admin/news/zcgdlist.jsp";
	}

	@RequestMapping("adminzsjznews")
	public String adminzsjznews(Model model,String name,Integer page, Integer limit) {
		String type = "招生简章";
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (name != null && !name.trim().equals("")) {
			queryitems.put("name", "%" + name + "%");
		}
		queryitems.put("type", type);
		if(page==null) {
			page=1;
		}
		if(limit==null) {
			limit=10;
		}
		PageHelper.startPage(page,limit);
		List<News> newslist = ns.selectByType(queryitems);
		PageInfo<News> pageinfo=new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		return "/admin/news/zszclist.jsp";
	}

	@RequestMapping("getupdatanews")
	public String getupdatanews(Integer id, Model model) {
		News news = ns.selectById(id);
		model.addAttribute("news", news);
		return "/admin/news/modify.jsp";
	}

	@RequestMapping("delnews")
	public String delnews(Integer[] delids, String listtype) {
		for (Integer id : delids) {
			ns.deleteByPrimaryKey(id);
		}
		if (listtype.equals("list")) {
			return "redirect:adminallnews.shtml";
		} else if (listtype.equals("zcgdlist")) {
			return "redirect:adminzcgdnews.shtml";
		} else if (listtype.equals("zszclist")) {
			return "redirect:adminzsjznews.shtml";
		}else {
			return "redirect:adminallnews.shtml";
		}
	}

	@RequestMapping("updatanews")
	public String updatanews(News news, HttpServletRequest request) {
		String message = "";
		int flag = ns.updateByPrimaryKeySelective(news);
		if (flag == 1) {
			message = "修改成功";

		} else {
			System.out.println("导入失败");
			message = "修改失败";
		}
		request.setAttribute("message", message);
		return "/admin/news/modify.jsp";

	}
}
