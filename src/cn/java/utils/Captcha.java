package cn.java.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;

/**
 * 验证码生成
 * 
 * @author 千堆�?
 *
 */
public class Captcha {
	private static int width = 170;// 定义验证码图片的width
	private static int height = 50;// 定义验证码图片的height
	private static int codeCount = 4;// 定义图片上显示验证码的个�?
	private static int fontHeight = 28;//验证码字符字体的高度
	private static char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
			'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

	public static Map<String, Object> generateCaptcha() {
		// 定义图像buffer
		BufferedImage buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

		Graphics gd = buffImg.getGraphics();
		// 创建�?个随机数生成器类
		Random random = new Random();
		
		// 将图像背景填充为白色
		gd.setColor(Color.WHITE);
		gd.fillRect(0, 0, width, height);

		// 创建字体，字体的大小应该根据图片的高度来�?
		Font font = new Font("Arial", Font.BOLD, fontHeight);
		// 设置字体
		gd.setFont(font);

		// 画边�?
		gd.setColor(Color.BLACK);
		gd.drawRect(0, 0, width - 1, height - 1);

		// 随机产生80条干扰线，使图象中的认证码不易被其它程序探测到�??
		gd.setColor(Color.BLACK);
		for (int i = 0; i < 50; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			gd.drawLine(x, y, x + xl, y + yl);
		}

		// randomCode用于保存随机产生的验证码，以便用户登录后进行验证�?
		StringBuffer randomCode = new StringBuffer();
		int red = 0, green = 0, blue = 0;

		// 随机产生codeCount数字的验证码�?
		for (int i = 0; i < codeCount; i++) {
			// 得到随机产生的验证码数字�?
			String code = String.valueOf(codeSequence[random.nextInt(36)]);
			// 产生随机的颜色分量来构�?�颜色�?�，这样输出的每位数字的颜色值都将不同�??
			red = random.nextInt(255);
			green = random.nextInt(255);
			blue = random.nextInt(255);

			// 用随机产生的颜色将验证码绘制到图像中�?
			gd.setColor(new Color(red, green, blue));
			gd.drawString(code, (i + 1) * 30, 35);

			// 将产生的四个随机数组合在�?起�??
			randomCode.append(code);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		// 存放验证�?
		map.put("code", randomCode);
		// 存放生成的验证码BufferedImage对象
		map.put("image", buffImg);
		return map;
	}

	public static void main(String[] args) {
		File file = new File("d:/catpacha.png");

		Map<String, Object> map = generateCaptcha();

		try {
			ImageIO.write((BufferedImage) map.get("image"), "png", new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
