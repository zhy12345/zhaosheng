
package cn.java.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class FilesUpload {
	/**
	 * 
	 * Description: 多文件上传<br/>
	 *
	 * @author zhy
	 * @param request：类型为HttpServletRequest
	 * @param files：类型为MultipartFile
	 */
	public String uploadFiles(HttpServletRequest request, MultipartFile files) {
		// 把spring文件上传的MultipartFile转换成CommonsMultipartFile类型
		CommonsMultipartFile cf = (CommonsMultipartFile) files;
		String originalFilename = cf.getOriginalFilename();
		String path = request.getServletContext().getRealPath("/upload");
		String basePath = path.split("webapps")[0] + "webapps\\upload\\excel";
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmm");
		String dt = df.format(date);
		// 获取本地存储路径
		File fileUpload = new File(basePath);
		// 创建一个目录 （它的路径名由当前 File 对象指定，包括任一必须的父路径。）
		if (!fileUpload.exists())
			fileUpload.mkdirs();
		// 新建一个文件
		String filePath = basePath + "\\" + dt + originalFilename;
		File file1 = new File(filePath);
		try {
			cf.transferTo(file1);
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String excelPath = dt + originalFilename;
		return excelPath;
	}

	public String UploadFile(MultipartFile files) {
		// 把spring文件上传的MultipartFile转换成CommonsMultipartFile类型
		CommonsMultipartFile cf = (CommonsMultipartFile) files;
		String originalFilename = cf.getOriginalFilename();
		String basePath = "D:\\TomCat\\upload";
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyymmddHHmm");
		String dt = df.format(date);
		// 获取本地存储路径
		File fileUpload = new File(basePath);
		if (!fileUpload.exists())
			fileUpload.mkdirs();
		String filePath = basePath + "\\" + dt + originalFilename;
		File file1 = new File(filePath);
		try {
			cf.transferTo(file1);
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		String path = dt + originalFilename;
		return path;
	}

	public List<String> AddPhotoFile(HttpServletRequest request, MultipartRequest files) throws IllegalStateException, IOException {
		List<String> photopath = new ArrayList<String>();
		List<MultipartFile> photolist = files.getFiles("photofile");
		for (MultipartFile photo : photolist) {
			String originalFilename = photo.getOriginalFilename();
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmm");
			String dt = df.format(date);
			String path = request.getServletContext().getRealPath("/upload");
			String basePath = path.split("webapps")[0] + "webapps\\upload";
//			String basePath = "D:\\TomCat\\upload";
			File fileUpload = new File(basePath);
			if (!fileUpload.exists()) {// 经过此方法后,upload文件夹一定是存在的
				fileUpload.mkdir();
			}
			
			String fileName = dt + originalFilename;
			String filePath = basePath + "\\" + fileName;
			photo.transferTo(new File(filePath));
			photopath.add(fileName);
		}
		return photopath;
	}

	
	public List<String> addCollegeInfo(HttpServletRequest request, MultipartRequest files) throws IllegalStateException, IOException {
		List<String> photopath = new ArrayList<String>();
		List<MultipartFile> photolist = files.getFiles("collegefile");
		for (MultipartFile photo : photolist) {
			String originalFilename = photo.getOriginalFilename();
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmm");
			String dt = df.format(date);
			String path = request.getServletContext().getRealPath("/upload");
			String basePath = path.split("webapps")[0] + "webapps\\upload";
//			String basePath = "D:\\TomCat\\upload";
			File fileUpload = new File(basePath);
			if (!fileUpload.exists()) {// 经过此方法后,upload文件夹一定是存在的
				fileUpload.mkdir();
			}
			
			String fileName = dt + originalFilename;
			String filePath = basePath + "\\" + fileName;
			photo.transferTo(new File(filePath));
			photopath.add(fileName);
		}
		return photopath;
	}
	
	
	
	
	/*
	 * 视频文件上传
	 */
	public Map<String, String> SomeFiles(HttpServletRequest request, MultipartRequest files) {
		Map<String, String> pathmap = new HashMap<String, String>();
		try {
			Map<String, MultipartFile> filesMap = files.getFileMap();
			Set<String> keySet = filesMap.keySet();
			for (String key : keySet) {
				MultipartFile file = filesMap.get(key);
				String originalFilename = file.getOriginalFilename();
				String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
				Date date = new Date();
				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmm");
				String dt = df.format(date);
				String path = request.getServletContext().getRealPath("/video");
				String basePath = path.split("webapps")[0] + "webapps\\upload\\video";
				// String basePath = "D:\\TomCat\\upload\\video";
				File fileUpload = new File(basePath);
				if (!fileUpload.exists()) {// 经过此方法后,video文件夹一定是存在的
					fileUpload.mkdir();
				}
				// 保存文件
				if ((key.equals("video") && suffix.equals(".mp4")) || key.equals("photo")) {
					String fileName = dt + originalFilename;
					String filePath = basePath + "\\" + fileName;
					file.transferTo(new File(filePath));
					pathmap.put(key, fileName);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pathmap;
	}
}