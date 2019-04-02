package cn.java.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.VideoFile;
import cn.java.service.VideoFileService;
import cn.java.utils.Page;

@Controller
public class VideoController {
	@Autowired
	VideoFileService videoFileService;
	
	@RequestMapping("getVideoList")
	public String getVideoList(Model model,@RequestParam(name = "page",defaultValue="1")Integer page, @RequestParam(name = "limit",defaultValue="9")Integer limit) {
		PageHelper.startPage(page, limit);
		List<VideoFile> videoList = videoFileService.selectAllVideo(null);
		PageInfo<VideoFile> pageinfo = new PageInfo<VideoFile>(videoList);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("videoList", videoList);
		return "front/video.jsp";
	}
	
	@RequestMapping("vodeoPlay")
	public String VideoPlay(String id,Model model) {
		VideoFile video = videoFileService.selectByPrimaryKey(Integer.parseInt(id));
		model.addAttribute("video", video);
		return "front/video_play.jsp";
	}
	
	
}
