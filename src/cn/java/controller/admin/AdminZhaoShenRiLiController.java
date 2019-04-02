/**
 * 
 */
package cn.java.controller.admin;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.java.entity.ZhaoShenRiLi;
import cn.java.service.ZhaoShenRiLiService;
import cn.java.utils.Page;

/**
 * @ClassName: ZhaoShenRiLiController.java
 * Description:
 * Date：2018年8月29日-下午2:38:00
 * @author zhy
 */
@Controller
@RequestMapping("admin/")
public class AdminZhaoShenRiLiController {
	@Autowired
	ZhaoShenRiLiService zs;
	
	@RequestMapping("getrililist")
	public String getrililist(Model model,Integer page, Integer limit) {
		if (page == null) {
			page = 1;
		}
		if (limit == null) {
			limit = 10;
		}
		PageHelper.startPage(page,limit);
		List<ZhaoShenRiLi> RLlist = zs.selectByPrimaryKey();
		PageInfo<ZhaoShenRiLi> pageinfo=new PageInfo<ZhaoShenRiLi>(RLlist);
		Page pager = Page.returnPage(String.valueOf(pageinfo.getPageNum()) ,String.valueOf( pageinfo.getPageSize()));
		pager.setCount((int)pageinfo.getTotal());
		model.addAttribute("page", pager);
		model.addAttribute("list", RLlist);
		return "admin/zhaoshengcalendar/list.jsp";
	}
	
	@RequestMapping("addrili")
	public String addrili(String addtime,String subject,String bianhao) throws ParseException {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date time = df.parse(addtime); 
		ZhaoShenRiLi rili =new ZhaoShenRiLi();
		rili.setAddtime(time);
		rili.setSubject(subject);
		rili.setBianhao(Integer.parseInt(bianhao));
		zs.insertSelective(rili);
		return "redirect:getrililist.shtml";
	}
	
	@RequestMapping("delrili")
	public String delrili(Integer[] delids) {
		for (Integer id : delids) {
			zs.deleteByPrimaryKey(id);
		}
		return "redirect:getrililist.shtml";
	}
	@RequestMapping("updaterili")
	public String updaterili(ZhaoShenRiLi rili) {
		zs.updateByPrimaryKeySelective(rili);
		return "redirect:getrililist.shtml";
	}
	
	
}
