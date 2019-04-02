
package cn.java.controller.exception;

import java.io.FileOutputStream;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;


import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * 
 * 
 * 
 * Description:
 * 
 * Date：2018年8月18日-上午10:24:31
 * 
 * @author zhy
 */
@ControllerAdvice
public class GlobalExceptHandler {
	private static Logger logger = Logger.getLogger(GlobalExceptHandler.class);

	@ExceptionHandler(Exception.class)
	public String handException(Exception ex) {
		// ex.printStackTrace();// 将错误信息单独保存到一个文件中(dt48_ssm.log)--->log4j
		String errorMessage = ex.getMessage();
		// System.out.println(errorMessage);
		logger.debug(errorMessage);

		try {
//			String path = request.getServletContext().getRealPath("/upload");
//			String basePath = path.split("webapps")[0] + "webapps\\upload\\excel";
			FileOutputStream fos = new FileOutputStream("D:\\zhaosheng.log", true);
			PrintStream ps = new PrintStream(fos);
			// 1、获取系统当前时间，然后将时间记录到日志文件中

			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
			String time = sdf.format(date);
			ps.write(time.getBytes("utf-8"));
			// 换行
			ps.write("\r\n".getBytes("utf-8"));
			// 2、 将错误信息记录到指定的文件中去
			ex.printStackTrace(ps);
			// 关闭流
			ps.close();
			fos.close();
		} catch (Exception e) {
			// e.printStackTrace();
		}

		return "error/404.jsp";
	}
}
