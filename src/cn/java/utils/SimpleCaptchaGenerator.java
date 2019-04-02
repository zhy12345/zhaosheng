package cn.java.utils;

import java.util.HashMap;
import java.util.Map;

import nl.captcha.Captcha;
import nl.captcha.Captcha.CaptchaResultPair;
import nl.captcha.backgrounds.BackgroundProducer;
import nl.captcha.backgrounds.GradiatedBackgroundProducer;
import nl.captcha.text.producer.DefaultTextProducer;
import nl.captcha.text.producer.TextProducer;

/**
 * 此验证码图像显示效果较好
 */
public class SimpleCaptchaGenerator implements CaptchaGenerator {
	protected int width = 170;
	protected int height = 45;
	protected String imgType = "png";
	protected TextProducer textProducer = new DefaultTextProducer();
	protected BackgroundProducer backgroundProducer = new GradiatedBackgroundProducer();
	protected Captcha captcha;

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getImgType() {
		return imgType;
	}

	public void setImgType(String imgType) {
		this.imgType = imgType;
	}

	public TextProducer getTextProducer() {
		return textProducer;
	}

	public void setTextProducer(TextProducer textProducer) {
		this.textProducer = textProducer;
	}

	public BackgroundProducer getBackgroundProducer() {
		return backgroundProducer;
	}

	public void setBackgroundProducer(BackgroundProducer backgroundProducer) {
		this.backgroundProducer = backgroundProducer;
	}

	@Override
	public Map<String, Object> generateCaptchaCode() {
		if (this.captcha == null) {
			captcha = new Captcha.Builder(width, height).addBackground(backgroundProducer).addText(textProducer)
					.addGimp().addNoise().addNoise().build();
		}

		CaptchaResultPair crp = captcha.drawImage();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", crp.getAnswer());
		map.put("image", crp.getImage());
		return map;
	}
}
