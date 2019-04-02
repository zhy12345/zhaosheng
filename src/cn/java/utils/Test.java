/**
 * 
 */
package cn.java.utils;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.util.SystemOutLogger;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import cn.java.entity.PlanProvince;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * @ClassName: Test.java Description: Date：2018年12月4日-下午7:58:21
 * @author zhy
 */
public class Test {
	// 总行数
	private int totalRows = 0;
	// 总条数
	private int totalCells = 0;

	// 获取总行数
	public int getTotalRows() {
		return totalRows;
	}

	// 获取总列数
	public int getTotalCells() {
		return totalCells;
	}

	public static List<Map<String, Object>> getExcelInfo(String filepath) {
		Test test = new Test();
		String extString = filepath.substring(filepath.lastIndexOf("."));
		File file = new File(filepath);
		/**
		 * 读取Excel内容
		 */
		Workbook workbook = null;

		List<Map<String, Object>> planList = new ArrayList<Map<String, Object>>();

		FileInputStream is = null;
		try {
			is = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		try {
			if (".xlsx".equals(extString)) {
				workbook = new XSSFWorkbook(is);
			} else if (".xls".equals(extString)) {
				workbook = new HSSFWorkbook(is);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (workbook == null) {
			System.out.println("读取失败");
		} else {
			planList = test.readExcelValue(workbook);
		}

		try {
			is.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return planList;

	}

	/**
	 * 读取Excel里面的值
	 * 
	 * @param wb
	 * @return
	 */
	private List<Map<String, Object>> readExcelValue(Workbook wb) {
		Sheet sheet = wb.getSheetAt(0);
		totalRows = sheet.getPhysicalNumberOfRows();

		// 得到Excel的列数(前提是有行数)
		if (totalRows >= 1 && sheet.getRow(0) != null) {// 判断行数大于一，并且第一行必须有标题（这里有bug若文件第一行没值就完了）
			this.totalCells = sheet.getRow(0).getPhysicalNumberOfCells();
		} else {
			return null;
		}

		List<Map<String, Object>> planList = new ArrayList<Map<String, Object>>();// 声明一个对象集合
		int r = 0;

		List<String> list = new ArrayList<String>();
		// 循环Excel行数,从第二行开始。标题不入库
		for (r = 0; r < totalRows; r++) {
			Row row = sheet.getRow(r);
			if (row == null)
				continue;
			Map<String, Object> map = new LinkedHashMap<String, Object>();
			if (r == 0) {
				for (int c = 0; c < this.totalCells; c++) {
					Cell cell = row.getCell(c);
					if (null != cell) {
						list.add(getValue(cell).toLowerCase());
					}
				}
			}
			// 循环Excel的列
			if (r != 0) {
				for (int c = 0; c < this.totalCells; c++) {
					Cell cell = row.getCell(c);
					if (cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK) {
						map.put(list.get(c), getValue(cell));
					} else if (cell.getCellType() == Cell.CELL_TYPE_BLANK) {
						System.out.println(c);
					}
				}
				// 添加对象到集合中
				planList.add(map);
			}
		}
		return planList;
	}

	/**
	 * 得到Excel表中的值
	 * 
	 * @param cell
	 *            Excel中的每一个格子
	 * @return Excel中每一个格子中的值
	 */
	private String getValue(Cell cell) {
		if (cell.getCellType() == cell.CELL_TYPE_BOOLEAN) {
			// 返回布尔类型的值
			return String.valueOf(cell.getBooleanCellValue());
		} else if (cell.getCellType() == cell.CELL_TYPE_NUMERIC) {
			// 转换为不带小数点的整数
			Integer doubleVal = (int) cell.getNumericCellValue();
			// 返回数值类型的值
			return String.valueOf(doubleVal);
		} else {
			// 返回字符串类型的值
			return String.valueOf(cell.getStringCellValue());
		}
	}

	public static void main(String[] args) {
		int count = 0;
		PlanProvince planProvince = null;
		String families = null;// 科类
		String major = null;
		String excelPath = "D:\\test.xlsx";
		List<Map<String, Object>> planList = new ArrayList<Map<String, Object>>();
		List<PlanProvince> provinceList = new ArrayList<PlanProvince>();
		List<Map<String, Object>> excelInfo = getExcelInfo(excelPath);
		for (Map<String, Object> map : excelInfo) {
			Map<String, Object> planMap = new LinkedHashMap<String, Object>();
			Set<Entry<String, Object>> entryseSet = map.entrySet();
			for (Entry<String, Object> entry : entryseSet) {
				count++;
				String str = entry.getValue().toString().trim();
				if (str != null && !str.equals("")) {
//					System.out.println(str);
					if (count == 2) {
						major = entry.getValue().toString().trim();
					}

					if (count == 3) {
						families = entry.getValue().toString().trim();
					}

					if (count > 4) {
						planProvince = new PlanProvince();
						planProvince.setProvice(entry.getKey());
						planProvince.setProviceNum(Integer.parseInt(entry.getValue().toString().trim()));
						planProvince.setFamilies(families);
						planProvince.setMajor(major);
						planProvince.setFileName(excelPath);
						System.out.println(planProvince);
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
						SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd-hh:mm:ss");
						String date = df.format(new Date());
						planMap.put("addTime", date);
						planMap.put("fileName", excelPath);
					}
				}
			}
			count = 0;
//			System.out.println("*********************");
//			System.out.println(planProvince);
			provinceList.add(planProvince);
			planList.add(planMap);
		}
//		System.out.println("*********************");
//		System.out.println(provinceList);
	}

}
