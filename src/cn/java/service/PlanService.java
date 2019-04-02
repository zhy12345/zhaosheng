/**
 * 
 */
package cn.java.service;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;


/**
 * @ClassName: PlanService.java
 * Description:
 * Date：2018年12月14日-下午1:35:52
 * @author zhy
 */
public interface PlanService {
	
	String  addPlanExcel(HttpServletRequest request,MultipartFile file);
	
	boolean insertPlan(String years,String excelPath,HttpServletRequest request);
	
	List<Map<String,Object>> findAllMajor();
	
	List<Map<String,Object>> findFamiliesByMajor(String major);
	
	List<Map<String,Object>> findProviceByMajorAndFamilies(String major,String families);
	
	Map<String,Object> findPlanInfo(String major,String families,String province);
	
	boolean deletePlan(Integer id);
	
	boolean test();
	
	List<Map<String,Object>> findAllFamilies();
	
	List<Map<String,Object>> findAllCengCi();
	
	List<Map<String,Object>> findAllYears();
	
	List<Map<String,Object>> findAllProvince();
	
	List<Map<String,Object>> findPlanInfoByFour(String province,String families ,String years,String cengCi);
	
}
