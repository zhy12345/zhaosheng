/**
 * 
 */
package cn.java.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * Description:
 * 
 * Date：2018年8月17日-下午7:59:48
 * 
 * @author zhy
 */
public class ReadExcel {
	// 总行数
	private int totalRows = 0;
	// 总条数
	private int totalCells = 0;
	// 错误信息接收器
	private String errorMsg;

	// 构造方法
	public ReadExcel() {
	}

	// 获取总行数
	public int getTotalRows() {
		return totalRows;
	}

	// 获取总列数
	public int getTotalCells() {
		return totalCells;
	}

	// 获取错误信息-暂时未用到暂时留着
	public String getErrorInfo() {
		return errorMsg;
	}

	public List<Map<String, Object>> getExcelInfo(HttpServletRequest request, MultipartFile Mfile) {
		/**
		 * 上传Excel文件
		 */
		FilesUpload fileupload = new FilesUpload();
		String filepath = fileupload.uploadFiles(request, Mfile);
		/**
		 * 判断filepath和originalFilename是否为空，不为传递数据
		 */
		File file = new File(filepath);
		/**
		 * 读取Excel内容
		 */
		List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();

		FileInputStream is = null;
		try {
			is = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		XSSFWorkbook xssfworkbook = null;
		try {
			xssfworkbook = new XSSFWorkbook(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (xssfworkbook == null) {
			System.out.println("读取失败");
		} else {
			mapList = readExcelValue(xssfworkbook);
		}

		try {
			is.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return mapList;

	}

	/**
	 * 读取Excel里面的值
	 * 
	 * @param wb
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private List<Map<String, Object>> readExcelValue(Workbook wb) {
		// 得到第一个shell
	/*	for(int j = 0 ;j < length ; j++) {
			Sheet sheet1 = wb.getSheetAt(j);
		}*/
		Sheet sheet = wb.getSheetAt(0);
		// 得到Excel的行数
		this.totalRows = sheet.getPhysicalNumberOfRows();

		// 得到Excel的列数(前提是有行数)
		if (totalRows >= 1 && sheet.getRow(0) != null) {// 判断行数大于一，并且第一行必须有标题（这里有bug若文件第一行没值就完了）
			this.totalCells = sheet.getRow(0).getPhysicalNumberOfCells();
		} else {
			return null;
		}

		List<Map<String, Object>> maplist = new ArrayList<Map<String, Object>>();// 声明一个对象集合

		int r = 0;
		List<String> list = new ArrayList<>();
		// 循环Excel行数,从第二行开始。标题不入库
		for (r = 0; r < totalRows; r++) {
			Row row = sheet.getRow(r);
			if (row == null)
				continue;
			@SuppressWarnings("rawtypes")
			Map map = new HashMap<String, Object>();
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
					if (null != cell) {
						map.put(list.get(c), getValue(cell));
					}
				}

				// 添加对象到集合中
				maplist.add(map);
			}
		}
		return maplist;
	}

	/**
	 * 得到Excel表中的值
	 * 
	 * @param cell
	 *            Excel中的每一个格子
	 * @return Excel中每一个格子中的值
	 */
	@SuppressWarnings("static-access")
	private String getValue(Cell cell) {
		if (cell.getCellType() == cell.CELL_TYPE_BOOLEAN) {
			// 返回布尔类型的值
			return String.valueOf(cell.getBooleanCellValue());
		} else if (cell.getCellType() == cell.CELL_TYPE_NUMERIC) {
			// 返回数值类型的值
			return String.valueOf(cell.getNumericCellValue());
		} else {
			// 返回字符串类型的值
			return String.valueOf(cell.getStringCellValue());
		}
	}

}