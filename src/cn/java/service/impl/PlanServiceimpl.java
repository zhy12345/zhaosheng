/**
 * 
 */
package cn.java.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import cn.java.entity.Excel;
import cn.java.entity.PlanProvince;
import cn.java.mapper.ExcelMapper;
import cn.java.mapper.ZhaoShengPlanMapper;
import cn.java.service.PlanService;
import cn.java.utils.FilesUpload;
import cn.java.utils.PlanExcel;

/**
 * @ClassName: PlanServiceimpl.java Description: Date：2018年12月14日-下午1:39:32
 * @author zhy
 */
@Service
@Transactional(readOnly = false)
public class PlanServiceimpl implements PlanService {

	@Autowired
	ZhaoShengPlanMapper planMapper;

	@Autowired
	ExcelMapper excelMapper;

	Excel excel = new Excel();

	PlanExcel planExcel = new PlanExcel();

	FilesUpload filesUpload = new FilesUpload();

	@SuppressWarnings("static-access")
	@Override
	public boolean insertPlan(String years, String excelPath, HttpServletRequest request) {
		String path = request.getServletContext().getRealPath("/upload");
		String basePath = path.split("webapps")[0] + "webapps\\upload\\excel";

		String filePath = basePath + "\\" + excelPath;
		int count = 0;

		// PlanProvince planProvince = null;

		List<Map<String, Object>> infoList = planExcel.getExcelInfo(filePath);
		for (Map<String, Object> map : infoList) {

			List<PlanProvince> plist = new ArrayList<>();

			String families = null;
			String major = null;
			// planProvince = new PlanProvince();
			Map<String, Object> planMap = new LinkedHashMap<String, Object>();
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd-hh:mm:ss");
			String date = df.format(new Date());
			planMap.put("addTime", date);
			planMap.put("fileName", excelPath);
			planMap.put("years", years);
			Set<Entry<String, Object>> entryseSet = map.entrySet();
			// 去除key+value
			for (Entry<String, Object> entry : entryseSet) {
				count++;
				String str = entry.getValue().toString().trim();
				if (str != null && !str.equals("")) {

					if (count == 2) {
						major = entry.getValue().toString().trim();
					}

					if (count == 3) {
						families = entry.getValue().toString().trim();
					}
					if (count < 5) {
						if (entry.getKey().equals("层次"))
							planMap.put("cengCi", entry.getValue().toString().trim());
						if (entry.getKey().equals("专业"))
							planMap.put("major", entry.getValue().toString().trim());
						if (entry.getKey().equals("科类"))
							planMap.put("families", entry.getValue().toString().trim());
						if (entry.getKey().equals("总计"))
							planMap.put("peopleNum", entry.getValue().toString().trim());
					}

					if (count > 4 && entry.getValue() != null) {
						// 这里存入数据库
						plist.add(new PlanProvince(entry.getKey(), Integer.parseInt(entry.getValue().toString().trim()),
								families, major, excelPath));
					}

				}
			}
			count = 0;
			// 先将Plan存入数据库中
			planMapper.addPlan(planMap);
			// 查询Plan_id
			Integer planId = planMapper.getPlanIdByFamiliesAndMajor(major, families, years);

			for (PlanProvince list : plist) {
				list.setPlanId(planId);
				// 将PlanProvince存入数据库
				planMapper.addPlanProvince(list);
			}
		}
		return true;
	}


	@Override
	public String addPlanExcel(HttpServletRequest request, MultipartFile file) {
		String fileName = filesUpload.uploadFiles(request, file);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date = sdf.format(new Date());
		excel.setAddtime(date);
		excel.setFilename(file.getOriginalFilename());
		excel.setFilepath(fileName);
		excel.setFilesign("招生计划");
		int flag = excelMapper.insert(excel);
		return flag >= 1 ? excel.getFilepath() : null;
	}

	@Override
	public List<Map<String, Object>> findAllMajor() {
		return planMapper.getAllMajor();
	}

	@Override
	public List<Map<String, Object>> findFamiliesByMajor(String major) {
		// TODO Auto-generated method stub
		return planMapper.getFamiliesByMajor(major);
	}

	@Override
	public List<Map<String, Object>> findProviceByMajorAndFamilies(String major, String families) {
		// TODO Auto-generated method stub
		return planMapper.getProviceByMajorAndFamilies(major, families);
	}

	@Override
	public Map<String, Object> findPlanInfo(String major, String families, String province) {
		// TODO Auto-generated method stub
		return planMapper.getPlanInfo(major, families, province);
	}

	@Override
	public boolean deletePlan(Integer id) {
		String fileName = planMapper.getFileNameById(id);
		int flag1 = planMapper.delExcelFileById(id);
		int flag2 = planMapper.delPlanByFileName(fileName);
		int flag3 = planMapper.delPlanProvinceByFileName(fileName);
		if (flag1 > 0 && flag2 > 0 && flag3 > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean test() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Map<String, Object>> findAllFamilies() {
		return planMapper.getAllFamilies();
	}

	@Override
	public List<Map<String, Object>> findAllCengCi() {
		return planMapper.getAllCengCi();
	}

	@Override
	public List<Map<String, Object>> findAllYears() {
		return planMapper.getAllYears();
	}

	@Override
	public List<Map<String, Object>> findAllProvince() {
		return planMapper.getAllProvince();
	}

	@Override
	public List<Map<String, Object>> findPlanInfoByFour(String province, String families, String years, String cengCi) {

		if (families.equals("全部")) {
			families = null;
		}
		if (cengCi.equals("全部")) {
			cengCi = null;
		}
		Map<String, Object> map = new HashMap<>();
		map.put("province", province);
		map.put("families", families);
		map.put("years", years);
		map.put("cengCi", cengCi);
		List<Map<String, Object>> infoList = planMapper.getPlanInfoList(map);
		return infoList;
	}

}
