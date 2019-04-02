package cn.java.utils;

import java.io.UnsupportedEncodingException;

import org.jasypt.util.digest.Digester;
import org.jasypt.util.password.StrongPasswordEncryptor;


public abstract class EncryptUtils {

	/**
	 * 对字符串进行md5加密
	 * 
	 * @param text
	 *            要加密的文本
	 * @return 进行摘要计算后的字符
	 */
	public static String encryptTextInMD5(String text) {
		return encryptTextInMD5(text, "utf8");
	}

	/**
	 * 
	 * @param text
	 *            要加密的文本
	 * @param charset
	 *            字符编码
	 * @return 进行摘要计算后的字符
	 */
	public static String encryptTextInMD5(String text, String charset) {
		Digester digester = new Digester();
		digester.setAlgorithm("MD5");// 此摘要类即便不设置，默认也是使用md5加密
		byte[] digest = null;
		try {
			digest = digester.digest(text.getBytes(charset));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < digest.length; i++) {
			String hex = Integer.toHexString(digest[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			hexString.append(hex);
		}
		return hexString.toString();
	}

	/**
	 * 对密码进行单向加密，使用默认强加密算法，生成的是�?�?64位字符串�?<br>
	 * 注：每次生成的加密字符串并不相同，所以不能使用equals方法判断密码正确性，应使用本类的checkPassword方法�?
	 * 
	 * @param pwd
	 *            要加密的密码
	 * @return 加密之后的字符串
	 */
	public static String encryptPassword(String pwd) {
		StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
		return passwordEncryptor.encryptPassword(pwd);
	}

	/**
	 * 对用户输入的密码进行验证，input是输入的密码原文，encrypted是经过单向加密的密码密文
	 * 
	 * @param input
	 *            用户输入的密码原
	 * @param encrypted
	 *            已经加密过的密文
	 * @return 若判断两个密码一致则返回true，否则返回false
	 */
	public static boolean checkPassword(String input, String encrypted) {
		StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
		return passwordEncryptor.checkPassword(input, encrypted);
	}
	
	public static void main(String[] args) {
		String pwd = "admin";
		String encPwd = EncryptUtils.encryptPassword(pwd);
		
		boolean b = EncryptUtils.checkPassword(pwd, encPwd);
		System.out.println(encPwd);
		System.out.println(pwd+"-"+b);
	}

}
