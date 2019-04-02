package cn.java.utils;

import java.util.Map;

/**
 * 生成验证码图�?
 * 
 * @author zangjinyu
 * @since 2013-2-18
 */
public interface CaptchaGenerator {

	/**
	 * 生成验证码算�?
	 * 
	 * @param captchaCode
	 *            验证码文�?
	 * @return
	 */
	public Map<String, Object> generateCaptchaCode();
}
