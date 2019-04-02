/**
 * 
 */
package cn.java.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName: FileDwonload.java Description:文件下载 Date：2018年8月18日-下午2:19:22
 * @author zhy
 */
public class FileDownload {
	
	public void download(String fileName, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("控制台输出：走入下载");
		response.setCharacterEncoding("utf-8");
		response.setContentType("multipart/form-data");
		response.setHeader("Content-Disposition", "attachment;fileName=" + fileName);
		String path = request.getServletContext().getRealPath("/upload");
		String basePath = path.split("webapps")[0] + "webapps\\upload\\excel";
//		String basePath ="D:\\TomCat\\upload";
		InputStream inputStream=null;
		try {
			inputStream = new FileInputStream(new File(basePath + File.separator + fileName));
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		OutputStream os=null;
		try {
			os = response.getOutputStream();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		byte[] b = new byte[2048];
		int length;
		try {
			while ((length = inputStream.read(b)) > 0) {
				os.write(b, 0, length);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// 这里主要关闭。
		try {
			os.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			inputStream.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
