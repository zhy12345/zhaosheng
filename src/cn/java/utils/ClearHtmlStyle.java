/**
 * 
 */
package cn.java.utils;

/**
 * @ClassName: ClearHtmlStyle.java
 * Description:
 * Date：2018年12月4日-下午5:21:22
 * @author zhy
 */
public class ClearHtmlStyle {
	/**
	 * 
	 * @Function: ClearHtmlStyle.java
	 * @功能描述: 使用正则表达式清除富文本的样式
	 * @param:@param content
	 * @param:@return 
	 * @return：String
	 * @throws：
	 * @author：zhy
	 */
	
	public  String delTagsFContent(String content){

		String patternTag = "</?[a-zA-Z]+[^><]*>";

		String patternBlank = "(^\\s*)|(\\s*$)";

		return content.replaceAll(patternTag, "").replaceAll(patternBlank, "");

		}
	public static void main(String[] args) {
		  String content ="<p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">wo为了保证2018年招生工作的顺利进行，维护学校和考生合法权益，根据《中华人民共和国教育法》《中华人民共和国高等教育法》和教育部等有关文件精神，结合学校招生工作的具体情况，制定本章程。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第一章 总则</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第一条 &nbsp;本章程适用于中国石油大学胜利学院全日制本专科招生工作。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第二条 &nbsp;中国石油大学胜利学院招生工作贯彻“公平竞争、公正选拔、公开程序，德智体美全面考核、综合评价、择优录取”的原则。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第三条 &nbsp;中国石油大学胜利学院招生工作接受纪检监察部门、新闻媒体、考生及其家长以及社会各界的监督。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第二章 学院概况</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第四条 &nbsp;学校全称：中国石油大学胜利学院。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第五条 &nbsp;学校代码：13386</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第六条 &nbsp;学校地址： 山东省东营市。分两个校区，石大校区（主校区）位于山东省东营市北二路271号，师专校区位于山东省东营市济南路1号。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第七条 &nbsp;办学层次及类型：本科，独立学院。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第八条\r\n" + 
				" \r\n" + 
				"&nbsp;基本情况：中国石油大学胜利学院是教育部批准设立的，由中国石油大学（华东）、胜利石油管理局和东营市人民政府三方共建的全日制本科普通高等学校，是在具有24年办学历史的原胜利油田师范专科学校优良办学资源的基础上，按新机制、新模式合作举办的规范化独立学院。学校于2003年3月成立，时称石油大学胜利学院，2005年3月更名为中国石油大学胜利学院。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">学校位于黄河三角洲中心城市，有着石油之城、生态之城美誉的山东省东营市，占地1563亩，建筑面积28万平方米。教学科研仪器设备总值9472万元，建有东营市重点实验室1个，其他各类科研、教学实验室160余个，校内外实践教学基地162个。图书馆藏书78余</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">万册。拥有先进的数字校园平台、多媒体教学环境和校区全覆盖的无线网络，办学条件完备，生活服务设施齐全。</span></p><p style=\"line-height: 3em; text-indent: 32pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">学校设油气工程学院、化学工程学院、机械与控制工程学院、文法与经济管理学院、教育与艺术学院、基础科学学院、护理学院，现有29个本科专业和15个专科专业，专业涵盖理、工、文、法、教育、管理、艺术、医学等8大学科门类。学校面向全国28个省市（自治区）招生，在校本、专科生10620人。</span></p><p style=\"line-height: 3em; text-indent: 32pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">学校建有一支结构合理、素质优良、爱岗敬业的专兼职教师队伍。现有专任教师546人，其中教授26人、副教授162人、讲师232人；具有硕士及以上学位的教师408人。学校还聘请了一批相关行业的技术骨干和学者担任兼职教授。</span></p><p style=\"line-height: 3em; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">学校注重开放办学，选派优秀教师赴澳大利亚、日本学习交流，与林肯大学农商学院、新西兰商学院、英国北安普顿大学、澳大利亚科廷科技大学、伊迪斯科文大学等学校建立了交流合作关系。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第三章 组织机构</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第九条 &nbsp;学校成立了以院长为组长的招生工作领导小组。领导小组负责制定招生政策和招生计划，讨论决定招生工作重大事宜。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十条 &nbsp;学校招生办公室是组织和实施招生及其相关工作的常设机构，具体负责学校招生的日常工作。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十一条 &nbsp;学校纪检审计处对招生工作实施监督。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第四章 计划录取</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十二条 &nbsp;招生计划：</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">依据山东省教育厅下达的招生计划编制学校各专业招生计划。并通过各省（自治区、直辖市）招生主管部门、学校招生简章、学校网站等形式公布。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十三条 &nbsp;录取原则：</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">1</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">、录取批次：以各省级招生主管部门公布的我校各专业录取批次为准。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">2</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">、录取原则：学校招生录取工作在各省（自治区、直辖市）招生委员会统一组织下进行。对实行平行志愿的省份，执行相关省份的投档规定，按“分数优先，遵循志愿”原则接受投档。第一次填报志愿的投档考生不足时，从高分到低分录取征集志愿考生。对未实行平行志愿的省份，按照“志愿优先，从高分到低分录取”的原则录取，先录取第一志愿报考我校的考生，第一志愿投档考生不足时，再录取第二志愿考生，以此类推。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">3</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">、进档考生排序方法：按照投档成绩从高到低排序。对投档分数相同的考生，按照各省（自治区、直辖市）有关规定进行排序。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">4</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">、录取专业确定办法：对于达到录取资格的进档考生，在我校最低录取分数线以上，按照“专业清”原则确定录取专业；无男女比例要求，无专业志愿级差，无单科要求，无加试要求。当某考生所有专业志愿均不能满足时，服从专业调剂的考生将随机调剂到录取计划未满的专业，不服从专业调剂的考生将予以退档；当某考生所有专业志愿均不能满足，且录取额满无法调剂时，将予以退档；对不符合国家及各省级招生主管部门规定录取资格的考生将予以退档。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">5</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">、艺术类专业录取要求：按照省级招生主管部门规定的录取办法，依据文化成绩达到省招生考试院的投档线后按专业成绩排名择优录取。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">6</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">、对享受加分照顾政策的考生，我校认可省级招生主管部门规定的投档成绩，录取原则不变。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十四条 &nbsp;外语语种要求：报考英语专业的考生外语语种仅限英语，其他专业语种不限。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十五条 &nbsp;对考生体检身体健康要求：执行《普通高等学校招生体检工作指导意见》文件规定。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第五章 学历学位</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十六条 &nbsp;学生学完规定的全部课程，考试合格，由中国石油大学胜利学院颁发国家教育部统一印制的中国石油大学胜利学院本、专科毕业证书。符合学位授予条件的本科毕业生授予学士学位。颁发证书的学校名称：中国石油大学胜利学院。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第六章 收费退费</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十七条 &nbsp;按上级部门有关规定，参照同类院校制定教育成本收费（包括专业注册费和学分学费），艺术类本科专业</span><span style=\"font-family: 仿宋_GB2312; font-size: 16pt;\">基本学费总额</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">13000</span><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">元/学年，其他本科专业12000元/学年，专科专业全部为9000元/学年。住宿费600--1000元/学年。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十八条 &nbsp;学生缴纳学费、住宿费后，因故退学或受校纪处分开除学籍的，退费按照山东省教育厅等七部门下发的鲁教财字[2010]27号文件中的有关规定执行。</span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第七章 奖励资助</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第十九条\r\n" + 
				" \r\n" + 
				"&nbsp;学校实行奖学金制度。根据山东省教育厅、财政厅《山东省普通高校国家奖学金管理实施办法》、《山东省普通高校省政府奖学金管理实施办法》《山东省普通高校国家励志奖学金管理暂行办法》、《山东省普通高校省政府励志奖学金管理实施办法》、《山东省普通高校国家助学金管理实施办法》等文件精神，结合我校实际情况，综合考虑学生表现，每学年进行国家奖学金、山东省政府奖学金、国家励志奖学金、省政府励志奖学金、国家助学金的评审及发放工作，获奖学生的比例约为在校生的15%，奖励金额每学年分别为8000元、6000元、5000元、5000元、3000元。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第二十条\r\n" + 
				" \r\n" + 
				"&nbsp;学校采取多种措施帮助学生完成学业。设立校内勤工助学岗位，鼓励家庭经济困难的学生通过劳动获得报酬。对家庭经济困难，在校期间所能获得的收入不足以支付完成学业所需基本费用（包括学费、住宿费）的学生，根据国家相关政策与规定帮助其办理生源地信用助学贷款，每学年最高可贷8000元。<img src=\"upload/image/20180821/1534821566613084856.png\" title=\"1534821566613084856.png\" alt=\"QQ截图20180821105252.png\"/></span></p><p style=\"text-align: center; line-height: 27.75pt;\"><span style=\"color: black; font-family: 黑体; font-size: 16pt;\">第八章 其他</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第二十一条 &nbsp;录取结果的公布渠道：招办咨询电话，学校网站、学校招生信息网等。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第二十二条 &nbsp;学校不委托任何机构和个人办理招生相关事宜。对以中国石油大学胜利学院名义进行非法招生宣传等活动的机构或个人，学校保留依法追究其责任的权利。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第二十三条 &nbsp;本章程若有与上级有关政策不一致之处，以国家和上级有关政策为准。未尽事宜，按上级有关规定执行。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">第二十四条 &nbsp;本章程由中国石油大学胜利学院负责解释。</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">联系方式</span></strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">：0546-7396191 ，7396011</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">传 &nbsp; 真</span></strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">：0546-7396191，7396011</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">联系地址：</span></strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">山东省东营市北二路271号 中国石油大学胜利学院招生办公室</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">邮 &nbsp; 编：</span></strong><span style=\"color: black; font-family: 宋体; font-size: 16pt;\">257061</span></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">学校网站</span></strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">：</span><a href=\"http://www.slcupc.edu.cn/\"><span style=\"color: black; font-family: 宋体; font-size: 16pt;\">http://www.slcupc.edu.cn/</span></a></p><p style=\"line-height: 27.75pt; text-indent: 32.25pt;\"><strong><span style=\"color: black; font-family: 仿宋; font-size: 16pt;\">学校招生网站：</span></strong><span style=\"color: black; font-family: 宋体; font-size: 16pt;\">http://zs.slcupc.edu.cn/</span></p><p><br/></p>";
		
		/*String result = delTagsFContent(content);
		System.out.println(result);*/
	}
}
