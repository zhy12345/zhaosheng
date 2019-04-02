/**
 * 
 */
package cn.java.controller.front;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.Lunbo;
import cn.java.entity.News;
import cn.java.entity.Photo;
import cn.java.entity.VideoFile;
import cn.java.entity.ZhaoShenRiLi;
import cn.java.service.CollegeService;
import cn.java.service.LunboServcie;
import cn.java.service.NewsService;
import cn.java.service.PhotoService;
import cn.java.service.PlanService;
import cn.java.service.VideoFileService;
import cn.java.service.ZhaoShenRiLiService;
import cn.java.utils.Page;

/**
 * @ClassName: MainController.java Description: Date：2018年8月28日-下午9:12:32
 * @author zhy
 */
@Controller
public class MainController {
	@Autowired
	NewsService newsService;

	@Autowired
	ZhaoShenRiLiService zhaoShenRiLiService;

	@Autowired
	LunboServcie lunBoService;

	@Autowired
	VideoFileService videoFileService;

	@Autowired
	PlanService planService;

	@Autowired
	PhotoService photoService;
	
	@Autowired
	CollegeService collegeService;
	

	@RequestMapping("main")
	public String zhuye(Model model, HttpServletRequest request) {
		// 获取四条新闻
		List<News> fournews = newsService.selectFournews();
		model.addAttribute("fournews", fournews);


		// 获取政策
		String type1 = "通知说明";
		List<News> tongZhi = newsService.selectFiveNewsByType(type1);
		model.addAttribute("tongZhiList", tongZhi);
		
		// 获取招生政策
		String type = "招生简章";
		List<News> jianZhang = newsService.selectFiveNewsByType(type);
		model.addAttribute("jianZhangList", jianZhang);
		
		
		
		// 获取招生日历
		List<ZhaoShenRiLi> RLlist = zhaoShenRiLiService.selectByPrimaryKey();
		model.addAttribute("RLlist", RLlist);
		
		// 获取轮播图
		List<Lunbo> lunBoList = lunBoService.selectAllLuobo();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ "/upload/";
		for (Lunbo lunbo : lunBoList) {
			String path = basePath + lunbo.getPhotopath();
			lunbo.setPhotopath(path);
		}
		model.addAttribute("lunBoList", lunBoList);

		/* 校园风光 */
		List<Photo> photoList = photoService.selectThreePhotoBySign("校园风光");
		model.addAttribute("rPhotoList", photoList.get(0));
		List<Photo> lPhotoList = new ArrayList<>();
		lPhotoList.add(photoList.get(1));
		lPhotoList.add(photoList.get(2));
		model.addAttribute("lPhotoList", lPhotoList);

		/* 一条视频 */
		Map<String, Object> video = videoFileService.selectOneVideo();
		model.addAttribute("video", video);
		
		
//		List<VideoFile> videoList = videoFileService.selectVideoByFrom();
//		String vpath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
//		for (VideoFile video : videoList) {
//			if (video.getVideofrom().equals("招生办公室")) {
//				video.setVideopath(vpath + video.getVideopath());
//				model.addAttribute("video", video);
//			}
//			break;
//		}
//		
		/* 院系介绍 */
		List<Map<String, Object>> collegeList = collegeService.selectAllCollege();
		model.addAttribute("collegeList", collegeList);
		
		// 首先获取major信息
//		List<Map<String, Object>> majorList = planService.findAllMajor();
//		model.addAttribute("majorList", majorList);
		return "front/home.jsp";
	}
	
	

	@RequestMapping("getFamiliesList")
	public @ResponseBody List<Map<String, Object>> getFamiliesList(String major) {
		List<Map<String, Object>> FamiliesList = planService.findFamiliesByMajor(major);
		return FamiliesList;
	}

	@RequestMapping("getProviceList")
	public @ResponseBody List<Map<String, Object>> getProviceList(String major, String families) {
		List<Map<String, Object>> proviceList = planService.findProviceByMajorAndFamilies(major, families);
		return proviceList;
	}

	@RequestMapping("findPlanInfo")
	public String planInfo(String major, String families, String province, Model model) {
		Map<String, Object> planInfo = planService.findPlanInfo(major, families, province);
		model.addAttribute("planInfo", planInfo);
		return "front/planResult.jsp";
	}
	
	@RequestMapping("riLiDetail")
	public String riLiDetail(Integer page, Integer limit,Model model) {
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		List<ZhaoShenRiLi> riLiList = zhaoShenRiLiService.selectAllist();
		System.out.println(riLiList);
		PageInfo<ZhaoShenRiLi> pageinfo = new PageInfo<ZhaoShenRiLi>(riLiList);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("riLiList", riLiList);
		
		return "front/zhao_sheng_ri_li.jsp";
	}

}
