/**
 * 
 */
package cn.java.controller.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.java.service.ZhaoShenRiLiService;

/**
 * @ClassName: CalendarController.java
 * Description:
 * Date：2018年8月29日-下午4:24:09
 * @author zhy
 */
@Controller
public class CalendarController {
	@Autowired
	ZhaoShenRiLiService zs;

}
