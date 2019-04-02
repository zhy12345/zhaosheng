/**
 * 
 */
package cn.java.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * @ClassName: PlanExcel.java
 * Description:
 * Date：2018年12月14日-下午1:06:04
 * @author zhy
 */
public class PlanExcel {
	// 总行数
		private static int totalRows = 0;
		// 总条数
		private static int totalCells = 0;

		// 获取总行数
		public int getTotalRows() {
			return totalRows;
		}

		// 获取总列数
		public int getTotalCells() {
			return totalCells;
		}

		public static List<Map<String, Object>> getExcelInfo(String filepath) {
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
				planList = readExcelValue(workbook);
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
		private static List<Map<String, Object>> readExcelValue(Workbook wb) {
			Sheet sheet = wb.getSheetAt(0);
			totalRows = sheet.getPhysicalNumberOfRows();
//			System.out.println("行:"+totalRows);
			// 得到Excel的列数(前提是有行数)
			if (totalRows >= 1 && sheet.getRow(0) != null) {
				// 判断行数大于一，并且第一行必须有标题（这里有bug若文件第一行没值就完了）
				totalCells = sheet.getRow(0).getPhysicalNumberOfCells();
//				System.out.println("列:"+totalCells);
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
					for (int c = 0; c < totalCells; c++) {
						Cell cell = row.getCell(c);
						if (null != cell) {
							list.add(getValue(cell).toLowerCase());
						}
					}
				}
				// 循环Excel的列
				if (r != 0) {
					for (int c = 0; c < totalCells; c++) {
						Cell cell = row.getCell(c);
						if (cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK) {
							map.put(list.get(c), getValue(cell));
						} else if (cell.getCellType() == Cell.CELL_TYPE_BLANK) {
//							System.out.println(c);
						}
					}
					// 添加对象到集合中
					planList.add(map);
				}
			}
//			System.out.println(planList);
			return planList;
		}

		/**
		 * 得到Excel表中的值
		 * 
		 * @param cell
		 *            Excel中的每一个格子
		 * @return Excel中每一个格子中的值
		 */
		@SuppressWarnings("static-access")
		private static String getValue(Cell cell) {
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

}
