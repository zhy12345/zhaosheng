/**
 * 
 */
package cn.java.controller.admin;

import java.util.ArrayList;
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

import cn.java.entity.VideoFile;
import cn.java.service.VideoFileService;
import cn.java.utils.FilesUpload;
import cn.java.utils.Page;

/**
 * @ClassName: VideoController.java
 * Description:
 * Date：2018年9月13日-上午10:02:16
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminVideoController {
	@Autowired
	VideoFileService vs;
	@RequestMapping("addvideo")
	public String AddVideo(VideoFile video ,MultipartRequest files,HttpServletRequest request) {
		Map<String,String> filemap = new FilesUpload().SomeFiles(request, files); 
		if(filemap.get("video")==null) {
			request.setAttribute("message","你上传的视频格式不正确，本次上传只支持“.mp4”格式");
		}else {
			video.setPhotopath("/upload"+"/video/"+filemap.get("photo"));
			video.setVideopath("/upload"+"/video/"+filemap.get("video"));
			vs.insertSelective(video);
			request.setAttribute("message", "添加成功！");
		}
		return "admin/video/add.jsp";
	}
	@RequestMapping("getallvideo")
	public String getallvideo(String videofrom, Model model, Integer page, Integer limit,HttpServletRequest request) {
		List<VideoFile> videolist  = new ArrayList<VideoFile>();
		Map<String,String > map = new HashMap<String,String>();
		map.put("videofrom", videofrom);
		videolist = vs.selectAllVideo(map);
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page, limit);
		PageInfo<VideoFile> pageinfo = new PageInfo<VideoFile>(videolist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()), String.valueOf(pageinfo.getPageSize()));
		pager.setCount((int) pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("videolist", videolist);
		return "admin/video/list.jsp";
	}
	
	@RequestMapping("delvideo")
	public String delvideo(Integer[] delids) {
		for (Integer id : delids) {
			vs.deleteByPrimaryKey(id);
		}
		return "redirect:getallvideo.shtml";
	}
}
