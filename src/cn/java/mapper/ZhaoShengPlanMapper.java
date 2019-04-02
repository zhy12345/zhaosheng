/**
 * 
 */
package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.java.entity.PlanProvince;

/**
 * @ClassName: ZhaoShengPlanMapper.java
 * Description:
 * Date：2018年12月14日-下午1:30:56
 * @author zhy
 */
public interface ZhaoShengPlanMapper {
	
	@Insert("INSERT INTO plan_province VALUES(NULL,#{planId},#{provice},#{proviceNum},#{families},#{major},#{fileName})")
	int addPlanProvince(PlanProvince planProvince);
	
	@Insert("INSERT INTO plan VALUES(NULL,#{cengCi},#{major},#{families},#{peopleNum},#{addTime},#{fileName},#{years})")
	int addPlan(Map<String,Object> map);
	
	@Select("SELECT id FROM plan WHERE families = #{1} AND major=#{0} AND years = #{2}")
	Integer getPlanIdByFamiliesAndMajor(String major,String families,String years);
	
	@Select("SELECT  p.major FROM plan_province p GROUP BY major")
	List<Map<String,Object>> getAllMajor();
	
	@Select("SELECT  p.families FROM plan_province p GROUP BY families")
	List<Map<String,Object>> getAllFamilies();
	
	@Select("SELECT years FROM `plan` GROUP BY years ORDER BY years DESC")
	List<Map<String,Object>> getAllYears();
	
	@Select("SELECT ceng_ci FROM `plan` GROUP BY ceng_ci")
	List<Map<String,Object>> getAllCengCi();
	
	@Select("SELECT  p.provice FROM plan_province p GROUP BY provice")
	List<Map<String,Object>> getAllProvince();
	
	@Select("SELECT p.families FROM plan_province p WHERE major=#{0} GROUP BY families")
	List<Map<String,Object>> getFamiliesByMajor(String major);
	
	@Select("SELECT p.provice FROM plan_province p WHERE major=#{0} AND families =#{1} GROUP BY provice")
	List<Map<String,Object>> getProviceByMajorAndFamilies(String major,String families);
	
	@Select("SELECT * FROM  plan_province WHERE major =#{0} AND  families =#{1} AND provice = #{2}")
	Map<String,Object> getPlanInfo(String major,String families,String province);
	
	@Update("UPDATE plan_province SET  plan_id = #{0}  WHERE major = #{1} AND families = #{2}")
	int updatePlanIdByMajorAndFamiles(Integer planId,String major,String families);
	
	@Select("SELECT filepath FROM excelfile WHERE id = #{0}")
	String getFileNameById (Integer Id);
	
	@Delete(" DELETE FROM excelfile WHERE id = #{0}")
	int delExcelFileById(Integer Id);
	
	@Delete("DELETE FROM plan WHERE file_name = #{0}")
	int delPlanByFileName(String fileName); 
	
	@Delete("DELETE FROM plan_province WHERE file_name = #{0}")
	int delPlanProvinceByFileName(String fileName);
	
//	@Select("select * from plan p where p.years = #{1} and p.ceng_ci = #{2} And p.families = #{0} ")
	List<Integer> getPlanIdByThree(Map<String,Object> map);
	
	@Select("select *from plan p  inner join `plan_province` pp on pp.plan_id = p.id where p.id =#{0}")
	Map<String,Object> getPlanInfo2(Integer id);
	
	List<Map<String,Object>> getPlanInfoList(Map<String,Object> map);
}
