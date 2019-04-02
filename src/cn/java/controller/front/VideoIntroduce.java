/**
 * 
 */
package cn.java.controller.front;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.java.entity.VideoFile;
import cn.java.service.VideoFileService;

/**
 * @ClassName: VideoIntroduce.java
 * Description:
 * Date：2018年9月15日-上午10:44:42
 * @author zhy
 */
@Controller
public class VideoIntroduce {
	@Autowired
	VideoFileService vs;
	@RequestMapping("getvideo")
	public String getVideoIntroduce(String yuanxi,Model model,HttpServletRequest request) {
		List<VideoFile> videolist = vs.selectByVideofrom(yuanxi);
		model.addAttribute("videolist", videolist);
		model.addAttribute("yuanxi", yuanxi);
		return "front/video.jsp";
	}
	
}
