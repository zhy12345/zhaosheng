package cn.java.controller.front;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.service.PlanService;

@Controller
public class ZhaoShengPlanConntroller {

	@Autowired
	PlanService planService;

	@RequestMapping("zsjh")
	public String goToZSJH(Model model) {
		// 获取科类
		List<Map<String, Object>> familiesList = planService.findAllFamilies();
		// 获取层次 本专科
		List<Map<String, Object>> cengCiList = planService.findAllCengCi();
		// 获取年份
		List<Map<String, Object>> yearsList = planService.findAllYears();
		// 获取地区 省份
		List<Map<String, Object>> provinceList = planService.findAllProvince();

		model.addAttribute("familiesList", familiesList);
		model.addAttribute("cengCiList", cengCiList);
		model.addAttribute("yearsList", yearsList);
		model.addAttribute("provinceList", provinceList);
		return "/front/zsjh.jsp";
	}
	
	@RequestMapping("getPlanInfo")
	@ResponseBody
	public List<Map<String, Object>> getPlanInfo(String province,String families ,String years,String cengCi) {
		List<Map<String, Object>> infoList = planService.findPlanInfoByFour(province, families, years, cengCi);
		return infoList;
	}
}
