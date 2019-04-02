/**
 * 
 */
package cn.java.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
 * @ClassName: NewsDetailController.java Description: Date：2018年8月21日-下午4:19:39
 * @author zhy
 */
@Controller
public class NewsDetailController {
	@Autowired
	NewsService ns;

	@RequestMapping("getallnews")
	public String getAllNews(Model model, Integer page, Integer limit) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<News> newslist = ns.selectAllnews(queryitems);
		PageInfo<News> pageinfo = new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		model.addAttribute("type", "最新动态");
		return "front/zui_xin_list.jsp";
	}

	@RequestMapping("newsdetail")
	public String getNewsDetail(Integer id, String type, Model model) {
		ns.updateClicknum(id);
		News news = ns.selectById(id);
		model.addAttribute("news", news);
		return "front/home_news.jsp";
	}

	@RequestMapping("getzsjz")
	public String getzsjz(String type, Integer page, Integer limit, Model model) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		queryitems.put("type", "招生简章");
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<News> newslist = ns.selectByType(queryitems);
		PageInfo<News> pageinfo = new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		model.addAttribute("type", "招生简章");
		return "front/zhao_sheng_list.jsp";
	}

//	@RequestMapping("newsDetail")
//	public String getzsjzdetail(News news, Model model) {
//		ns.updateClicknum(news.getId());
//		News newss = ns.selectById(news.getId());
//		model.addAttribute("news", newss);
//		return "front/home_news.jsp";
//	}

	
	@RequestMapping("gettzgg")
	public String gettzgg(String type, Integer page, Integer limit, Model model) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		queryitems.put("type", "通知说明");
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<News> newslist = ns.selectByType(queryitems);
		PageInfo<News> pageinfo = new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		model.addAttribute("type", "通知公告");
		return "front/tong_zhi_list.jsp";
	}
	
	
	@RequestMapping("getzcgd")
	public String getzcgd(String type, Integer page, Integer limit, Model model) {
		Map<String, Object> queryitems = new HashMap<String, Object>();
		queryitems.put("type", "政策规定");
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<News> newslist = ns.selectByType(queryitems);
		PageInfo<News> pageinfo = new PageInfo<News>(newslist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("newslist", newslist);
		model.addAttribute("type", "政策规定");
		return "front/zhao_sheng_list.jsp";
	}

//	@RequestMapping("zcgddetail")
//	public String getzsgddetail(News news, Model model) {
//		ns.updateClicknum(news.getId());
//		News news1 = ns.selectById(news.getId());
////		News news2 = new News();
////		News news3 = new News();
////		if (newslist.size() == 3) {
////			news1 = newslist.get(0);
////			news2 = newslist.get(1);
////			news3 = newslist.get(2);
////		}
////		if (newslist.size() == 2 && newslist.get(0).getId() == news.getId()) {
////			news2 = newslist.get(0);
////			news3 = newslist.get(1);
////		}
////		if (newslist.size() == 2 && newslist.get(1).getId() == news.getId()) {
////			news1 = newslist.get(0);
////			news2 = newslist.get(1);
////
////		}
////		if (newslist.size() == 1) {
////			news2 = newslist.get(0);
////		}
////
////		model.addAttribute("news1", news1);
////		model.addAttribute("news2", news2);
//		model.addAttribute("news", news1);
//
//		return "front/zcgddetail.jsp";
//	}
}
