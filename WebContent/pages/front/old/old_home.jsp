<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath %>">
	<title>招生信息网</title>
    <script src="<%=basePath %>/resources/js/jquery.min.js"></script>
     <script src="<%=basePath %>/resources/js/city.js"></script>
	<link rel="stylesheet" href="<%=basePath %>/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/bootstrap.css" type="text/css">
	<link rel="stylesheet" href="<%=basePath %>/resources/css/sowingMap.css" type="text/css">
	<link rel="stylesheet" href="<%=basePath %>/resources/css/index.css">
    <style>
        .nav_body_1:hover{
            background-size:270px 145px;
     </style>
</head>
<body>
		<div class="top">
			<div class="logo1"><h1>logo</h1></div>
            <div class="xiaobiao"></div>
			 <div class="logo2"><h1>logo</h1></div>
	    </div>
        <div class="nav"><input type="button" value="收起" id="btn"/>
        </div>
		<div id="header" >
			<ul>
				<li class="active">
					<a href="main.shtml">主页</a>
				</li>
				<li>
					<a href="getallnews.shtml">最新动态</a>
				</li>
				<li class="r_major">
					<a href="getthreemajor.shtml">专业介绍</a>
				</li>
				<li>
					<a href="getzsjhexcel.shtml">招生计划</a>
				</li>
				<li>
					<a href="getzsjz.shtml">招生简章</a>
				</li>
				<li>
					<a href="getzcgd.shtml">政策规定</a>
				</li>
				<li>
					<a href="<%=basePath %>/pages/front/views.jsp">校园风光</a>
				</li>
				<li>
					<a href="http://www.slcupc.edu.cn/">学校主页</a>
				</li>
			</ul>
            <script>
             $(function () {/*两个排他事件，一一对应*/
                $("#header>ul>li").click(function(){
                  $(this).addClass("active").siblings().removeClass("active");
             });
            </script>
		</div>
        <script >
             $("#btn").click(function(){
                 //alert("sssssssss");
                 if($("#btn").val()=="展开"){
                    //alert("sssssssss");
                    $("#header").css("display","block");
                    $("#btn").val("收起");
                 }
                 else{
                     $("#header").css("display","none");
                    $("#btn").val("展开");
                 }

             });
        </script>

	<div id="body">
		<div class="header">
            <div class="all" id='box'>
                <div class="screen"><!--相框-->
                    <ul>
                        <li><img src="<%=basePath %>/resources/img/_pic/slide_1.jpg"></li>
                        <li><img src="<%=basePath %>/resources/img/_pic/slide_2.jpg"></li>
                        <li><img src="<%=basePath %>/resources/img/_pic/slide_3.jpg"></li>
                        <li><img src="<%=basePath %>/resources/img/_pic/slide_4.jpg"></li>
                        <li><img src="<%=basePath %>/resources/img/_pic/slide_5.jpg"></li>
                    </ul>
                    <ol>
                    </ol>
                </div>
                <div id="arr"><span id="left">&lt;</span><span id="right">&gt;</span></div>
            </div>
            <script src="<%=basePath %>/resources/js/sowingMap.js" type="text/javascript" charset="utf-8"></script>
 		</div>
        <div class="nav_body">
            <div class="nav_body_1">
               <a href="getallnews.shtml"><p class="p1">最新动态</p></a>
            </div>
            <div class="nav_body_1 nav_body_2">
             <a href="#video" ><p class="p1"> 青春风采</p></a>
            </div>
            <div class="nav_body_1 nav_body_3">
                <a href="<%=basePath %>/pages/front/check.jsp" ><p class="p1">录取查询</p></a>
            </div>
            <div class="nav_body_1 nav_body_4 ">
                 <a href="#tzgg" ><p class="p1"> 招生日历</p></a>
            </div>
        </div>
        <script>

        </script>

		<div class="body">
            <div class="body_left">
                <!-- 最新动态 -->

                <div class="article">
                    <h2 class="video_text">
                        <a href="<%=basePath %>/news.jsp"  name="article"><span>最新动态 </a><a class="more" href="getallnews.shtml">查看更多...</a></span>
                    </h2>
                    <div class="xsxx-con fl">
                        <ul class="new_ul">
                        
                        	<c:forEach items="${fournews }" var="news">
                            <li class="new_li">
                                <div class="date fl">
                                <c:choose >
                                	<c:when test="${news.time eq '' } ">
                                	 </c:when>
                                	 <c:otherwise>
                                   <i>${fn:substring(news.time,8 , 10)}  </i>
                                    <em>${fn:substring(news.time,0 , 7)}   </em> 
                                    </c:otherwise>
                                   
                                  </c:choose>
                                </div>
                                <div class="txt fl">
                                    <p style="width:420px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;">
                                    <a href="newsdetail.shtml?id=${news.id }&type=${news.type}">${news.subject }</a></p>
                                    <i>发布者：${news.author }</i>
                                    <span></span>
                                </div>
                            </li>
                           </c:forEach>
                        </ul>
                    </div>
                </div>

                <!-- 青春风采 -->

                <div class="video">
                    <a href="#"  name="video"><h3 class="margin-bottom-md video_text"><span style="color:#25499D;cursor:pointer;" > 青春风采</span></h3></a>
                    <h4 class=" video_sign"><span style="color:#25499D;cursor:pointer;" > 官方视频</span></h4>
                    <div class="video_div"><a href="#"><img src="<%=basePath %>/resources/images/video.png" class="video_img"></a></div>
                    <div class="video_div"><a href="#"><img src="<%=basePath %>/resources/images/video.png" class="video_img"></a></div>
                    <h4 class=" video_sign"><span style="color:#25499D;cursor:pointer;">学生天地 </span></h4>
                    <div class="video_div"><a href="#"><img src="<%=basePath %>/resources/images/video.png" class="video_img"></a></div>
                    <div class="video_div"><a href="#"><img src="<%=basePath %>/resources/images/video.png" class="video_img"></a></div>
                </div>

            </div>
            <div class="body_right">
                <!-- 录取查询 -->

                <div class="theform ">
                    <a href="#" name="theform"></a>
                    <div class="search-form margin-top-md" id="sty_login" style="margin-bottom:5px;" >
                            <h4 class="margin-bottom-md active" style="display:inline-block; margin-left:30px; margin-right:60px;   font-size:20px;"><span id="cx_qh" style="color:#25499D;cursor:pointer; " > 录取查询</span></h4>
                            <h4 class="margin-bottom-md" style="display:inline-block; font-size:20px; "><span id="cx_qh" style="color:#25499D;cursor:pointer;" > 录取预测</span></h4>
                            <form  action="checkluqu.shtml" method="post" role="form" >
                            <div id="inquiry" class="select1">
                                <div class="form-group">
                                    <div id="sty_login_jj">考生号：</div><input type="text" class="form-control" id="name_ksh" name="ksh" placeholder="考生号">
                                </div>
                                <div class="form-group">
                                    <div id="sty_login_jj">姓名：</div><input type="text" class="form-control" id="name_xm" name="xm" placeholder="姓名">
                                </div> 
                                <div class="form-group">
                                    <div id="sty_login_jj">身份证：</div><input type="text" class="form-control" id="name_sfzh" name="sfzh" placeholder="身份证号">
                                </div>
                                <button type="submit" class="btn btn-block btn-blue" id="sty_login_btn">查询</button>
                            </div>
                            <div id="forecast" class="select1">
                                <div class="form-group">
                                    <select class="form-control" id="city" runat="server"></select>
                                    <select class="form-control" id="province" runat="server" onchange="selectprovince(this);">
                                        <option selected="">请选择您参加高考的地区</option>
                                   </select>
                                </div>
                                <div class="form-group">
                                        <select class="form-control">
                                            <option selected="">选择文理科目</option>
                                            <option>文科</option>
                                            <option>理科</option>
                                        </select>
                                </div>
                                <div class="form-group">
                                    <div id="sty_login_jj">分数：</div><input type="text" class="form-control" id="name_xm" name="stu_xm" placeholder="高考分数">
                                </div>
                                <button type="submit" class="btn btn-block btn-blue" id="sty_login_btn">提交</button>
                            </div>
                            </form>
                    </div>
                    <script>
                        $(function () {/*两个排他事件，一一对应*/
                            $(".margin-bottom-md").click(function(){
                              $(this).addClass("active").siblings().removeClass("active");
                              var idx=$(this).index();
                              $(".select1").eq(idx).css("display","block").siblings().css("display","none");
                            });
                        });
                    </script>
                </div>
                <!-- 招生日历 -->

				<div class="tzgg fl">
			        <a href="#" name="tzgg"><div class="title fl video_text"><h3>招生日历</h3><!-- <a class="more" href="#">查看更多..</a> --></div></a>
				    <div class="tzgg-con fl">
					    <ul>
					    <c:forEach items="${RLlist}" end="7" var="list">
					    
				            <li><i style="max-width: 39px; overflow:hidden; white-space:nowrap;"><fmt:formatDate pattern="MM-dd-yyyy" value="${list.addtime }" type="both"/></i><span style="width:220px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;">${list.subject }</span></li>
				        </c:forEach>
				        </ul>
			        </div>
		        </div>
                <!-- 联系电话 -->
                <div class="tel">
                    <p>欢迎报考</p>
                    <h3>中国石油大学胜利学院</h3>
                    <span>招生热线:0546-7396601 7396602<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7396603 7396191</span>
                </div>

            </div>
		</div>
    </div>

	<div id="foot">
        <div class="footer_1">
            <span>友情链接</span>&nbsp;&nbsp;&nbsp;
            <a href="http://www.moe.gov.cn/" )">教育部</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.jyb.cn/" >中国教育新闻网</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.xinhuanet.com/" )">新华网</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.shandong.gov.cn/" )">山东省人民政府</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.sdedu.gov.cn/" )">山东省教育厅</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.upc.edu.cn" )" target="_blank">中国石油大学（华东）</a>&nbsp;&nbsp;&nbsp;
            <a href="http://slof.sinopec.com/slof/")">胜利石油管理局</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.dongying.gov.cn")">东营市人民政府</a>&nbsp;&nbsp;&nbsp;
            <a href="http://www.univs.cn">中国大学生在线</a>
    </div>
	   <div class="footer_2">
			<p>
				Copyright &copy;版权所有：中国石油大学胜利学院  &nbsp电话：0546-7396331 地址：山东省东营市北二路271号
				 &nbsp设计制作：基础科学学院软件协会
			</p>
		</div>
	</div>



<script type="text/javascript">
    var list1 = new Array;
    var list2 = new Array;
    list1[list1.length] = "北京市";
    list1[list1.length] = "天津市";
    list1[list1.length] = "河北省";
    list1[list1.length] = "山西省";
    list1[list1.length] = "内蒙古";
    list1[list1.length] = "辽宁省";
    list1[list1.length] = "吉林省";
    list1[list1.length] = "黑龙江省";
    list1[list1.length] = "上海市";
    list1[list1.length] = "江苏省";
    list1[list1.length] = "浙江省";
    list1[list1.length] = "安徽省";
    list1[list1.length] = "福建省";
    list1[list1.length] = "江西省";
    list1[list1.length] = "山东省";
    list1[list1.length] = "河南省";
    list1[list1.length] = "湖北省";
    list1[list1.length] = "湖南省";
    list1[list1.length] = "广东省";
    list1[list1.length] = "广西自治区";
    list1[list1.length] = "海南省";
    list1[list1.length] = "重庆市";
    list1[list1.length] = "四川省";
    list1[list1.length] = "贵州省";
    list1[list1.length] = "云南省";
    list1[list1.length] = "西藏自治区";
    list1[list1.length] = "陕西省";
    list1[list1.length] = "甘肃省";
    list1[list1.length] = "青海省";
    list1[list1.length] = "宁夏回族自治区";
    list1[list1.length] = "新疆维吾尔自治区";
    list1[list1.length] = "香港特别行政区";
    list1[list1.length] = "澳门特别行政区";
    list1[list1.length] = "台湾省";
    list1[list1.length] = "其它";

    list2[list2.length] = new Array("北京", "东城区", "西城区", "崇文区", "宣武区", "朝阳区", "丰台区", "石景山区", " 海淀区（中关村）", "门头沟区", "房山区", "通州区", "顺义区", "昌平区", "大兴区", "怀柔区", "平谷区", "密云县", "延庆县", " 其他");
    list2[list2.length] = new Array("和平区", "河东区", "河西区", "南开区", "红桥区", "塘沽区", "汉沽区", "大港区",
                "西青区", "津南区", "武清区", "蓟县", "宁河县", "静海县", "其他");
    list2[list2.length] = new Array("石家庄市", "张家口市", "承德市", "秦皇岛市", "唐山市", "廊坊市", "衡水市",
                "沧州市", "邢台市", "邯郸市", "保定市", "其他");
    list2[list2.length] = new Array("太原市", "朔州市", "大同市", "长治市", "晋城市", "忻州市", "晋中市", "临汾市",
                "吕梁市", "运城市", "其他");
    list2[list2.length] = new Array("呼和浩特市", "包头市", "赤峰市", "呼伦贝尔市", "鄂尔多斯市", "乌兰察布市",
                "巴彦淖尔市", "兴安盟", "阿拉善盟", "锡林郭勒盟", "其他");
    list2[list2.length] = new Array("沈阳市", "朝阳市", "阜新市", "铁岭市", "抚顺市", "丹东市", "本溪市", "辽阳市",
                "鞍山市", "大连市", "营口市", "盘锦市", "锦州市", "葫芦岛市", "其他");
    list2[list2.length] = new Array("长春市", "白城市", "吉林市", "四平市", "辽源市", "通化市", "白山市", "延边朝鲜族自治州", "其他");
    list2[list2.length] = new Array("哈尔滨市", "七台河市", "黑河市", "大庆市", "齐齐哈尔市", "伊春市", "佳木斯市",
                "双鸭山市", "鸡西市", "大兴安岭地区(加格达奇)", "牡丹江", "鹤岗市", "绥化市　", "其他");
    list2[list2.length] = new Array("黄浦区", "卢湾区", "徐汇区", "长宁区", "静安区", "普陀区", "闸北区", "虹口区",
                "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "南汇区", "奉贤区", "崇明县", "其他");
    list2[list2.length] = new Array("南京市", "徐州市", "连云港市", "宿迁市", "淮安市", "盐城市", "扬州市", "泰州市",
                "南通市", "镇江市", "常州市", "无锡市", "苏州市", "其他");
    list2[list2.length] = new Array("杭州市", "湖州市", "嘉兴市", "舟山市", "宁波市", "绍兴市", "衢州市", "金华市",
                "台州市", "温州市", "丽水市", "其他");
    list2[list2.length] = new Array("合肥市", "宿州市", "淮北市", "亳州市", "阜阳市", "蚌埠市", "淮南市", "滁州市",
                "马鞍山市", "芜湖市", "铜陵市", "安庆市", "黄山市", "六安市", "巢湖市", "池州市", "宣城市", "其他");
    list2[list2.length] = new Array("福州市", "南平市", "莆田市", "三明市", "泉州市", "厦门市", "漳州市", "龙岩市", "宁德市", "其他");
    list2[list2.length] = new Array("南昌市", "九江市", "景德镇市", "鹰潭市", "新余市", "萍乡市", "赣州市", "上饶市",
                "抚州市", "宜春市", "吉安市", "其他");
    list2[list2.length] = new Array("济南市", "聊城市", "德州市", "东营市", "淄博市", "潍坊市", "烟台市", "威海市",
                "青岛市", "日照市", "临沂市", "枣庄市", "济宁市", "泰安市", "莱芜市", "滨州市", "菏泽市", "其他");
    list2[list2.length] = new Array("郑州市", "三门峡市", "洛阳市", "焦作市", "新乡市", "鹤壁市", "安阳市", "濮阳市",
                "开封市", "商丘市", "许昌市", "漯河市", "平顶山市", "南阳市", "信阳市", "周口市", "驻马店市", "其他");
    list2[list2.length] = new Array("武汉市", "十堰市", "襄樊市", "荆门市", "孝感市", "黄冈市", "鄂州市", "黄石市",
                "咸宁市", "荆州市", "宜昌市", "随州市", "恩施土家族苗族自治州", "仙桃市", "天门市", "潜江市", "神农架林区", "其他");
    list2[list2.length] = new Array("长沙市", "张家界市", "常德市", "益阳市", "岳阳市", "株洲市", "湘潭市", "衡阳市",
                "郴州市", "永州市", "邵阳市", "怀化市", "娄底市", "湘西土家族苗族自治州", "其他");
    list2[list2.length] = new Array("广州市", "清远市市", "韶关市", "河源市", "梅州市", "潮州市", "汕头市", "揭阳市",
                "汕尾市", " 惠州市", "东莞市", "深圳市", "珠海市", "中山市", "江门市", "佛山市", "肇庆市", "云浮市",
                "阳江市", "茂名市", "湛江市", " 其他");
    list2[list2.length] = new Array("南宁市", "桂林市", "柳州市", "梧州市", "贵港市", "玉林市", "钦州市", "北海市",
                "防城港市", "崇左市", "百色市", "河池市", "来宾市", "贺州市", "其他");
    list2[list2.length] = new Array("海口市", "三亚市", "其他");
    list2[list2.length] = new Array("渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区",
                "万盛区", "双桥区", "渝北区", "巴南区", "万州区", "涪陵区", "黔江区", "长寿区", "合川市", "永川市",
                "江津市", "南川市", "綦江县", "潼南县", "铜梁县", "大足县", "璧山县", "垫江县", "武隆县", "丰都县",
                "城口县", "开县", "巫溪县", "巫山县", "奉节县", "云阳县", "忠县", "石柱土家族自治县", "彭水苗族土家族自治县",
                "酉阳土家族苗族自治县", "秀山土家族苗族自治县", "其他");
    list2[list2.length] = new Array("成都市", "广元市", "绵阳市", "德阳市", "南充市", "广安市", "遂宁市",
                "内江市", "乐山市", "自贡市", "泸州市", "宜宾市", "攀枝花市", "巴中市", "资阳市", "眉山市", "雅安",
                "阿坝藏族羌族自治州", "甘孜藏族自治州", "凉山彝族自治州县", "其他");
    list2[list2.length] = new Array("贵阳市", "六盘水市", "遵义市", "安顺市", "毕节地区", "铜仁地区",
                "黔东南苗族侗族自治州", "黔南布依族苗族自治州", "黔西南布依族苗族自治州", "其他");
    list2[list2.length] = new Array("昆明市", "曲靖市", "玉溪市", "保山市", "昭通市", "丽江市", "普洱市",
                "临沧市", "宁德市", "德宏傣族景颇族自治州", "怒江傈僳族自治州", "楚雄彝族自治州", "红河哈尼族彝族自治州",
                "文山壮族苗族自治州", "大理白族自治州", "迪庆藏族自治州", "西双版纳傣族自治州", "其他");
    list2[list2.length] = new Array("拉萨市", "那曲地区", "昌都地区", "林芝地区", "山南地区", "日喀则地区", "阿里地区", "其他");
    list2[list2.length] = new Array("西安市", "延安市", "铜川市", "渭南市", "咸阳市", "宝鸡市", "汉中市", "安康市", "商洛市", "其他");
    list2[list2.length] = new Array("兰州市 ", "嘉峪关市", "金昌市", "白银市", "天水市", "武威市", "酒泉市",
                "张掖市", "庆阳市", "平凉市", "定西市", "陇南市", "临夏回族自治州", "甘南藏族自治州", "其他");
    list2[list2.length] = new Array("西宁市", "海东地区", "海北藏族自治州", "黄南藏族自治州", "玉树藏族自治州",
                "海南藏族自治州", "果洛藏族自治州", "海西蒙古族藏族自治州", "其他");
    list2[list2.length] = new Array("银川市", "石嘴山市", "吴忠市", "固原市", "中卫市", "其他");
    list2[list2.length] = new Array("乌鲁木齐市", "克拉玛依市", "喀什地区", "阿克苏地区", "和田地区", "吐鲁番地区",
                "哈密地区", "塔城地区", "阿勒泰地区", "克孜勒苏柯尔克孜自治州", "博尔塔拉蒙古自治州",
                "昌吉回族自治州伊犁哈萨克自治州", "巴音郭楞蒙古自治州", "河子市", "阿拉尔市", "五家渠市", "图木舒克市", "其他");
    list2[list2.length] = new Array("香港", "其他");
    list2[list2.length] = new Array("澳门", "其他");
    list2[list2.length] = new Array("台湾", "其他");

    var ddlProvince = document.getElementById("province");
    var ddlCity = document.getElementById("city");
    for(var i =0;i<list1.length; i++)
    {
        var option = document.createElement("option");
        option.appendChild(document.createTextNode(list1[i]));
        option.value = list1[i];
        ddlProvince.appendChild(option);
        //city initialize
        var firstprovince = list2[0];
        for (var j = 0; j < firstprovince.length; j++) {
            var optioncity = document.createElement("option");
            optioncity.appendChild(document.createTextNode(firstprovince[j]));
            optioncity.value = firstprovince[j];
            ddlCity.appendChild(optioncity);
        }
    }
    function indexof(obj,value)
    {
        var k=0;
        for(;k<obj.length;k++)
        {
            if(obj[k] == value)
            return k;
        }
        return k;
    }
    function selectprovince(obj) {
        ddlCity.options.length = 0;//clear
        var index = indexof(list1,obj.value);
        var list2element = list2[index];
        for(var i =0;i<list2element.length; i++)
        {
            var option = document.createElement("option");
            option.appendChild(document.createTextNode(list2element[i]));
            option.value = list2element[i];
            ddlCity.appendChild(option);
        }
    }
</script>



<!-- 友情提示 -->
<div class="actGotop">
    <p>友情提示</p>
    <span>微信公众号</span>
    <img src="<%=basePath %>/resources/images/index.jpg" alt="" class="img1" id="im1">
    <span>QQ二维码</span>
    <img src="<%=basePath %>/resources/images/index.jpg" alt="" class="img1" id="im2">
    <input type="button" name="" value="返回顶部" class="btn ">
    <!-- <img src="<%=basePath %>/resources/image/cloud.gif" alt="" class="img2"> -->
</div>
<div id="weixin">
     <img src="<%=basePath %>/resources/images/index.jpg" alt="" class="img2" ">
</div>
<div id="qq">
 <img src="<%=basePath %>/resources/images/index.jpg" alt="" class="img3" >
</div>
<script src="<%=basePath %>/resources/js/jquery-1.12.4.js"></script>
<script>
  $(function () {

    //当页面超出去1000px的时候，让小火箭显示出来,如果小于1000，就让小火箭隐藏
    $(window).scroll(function () {
      if($(window).scrollTop() >= 200 ){
        $(".actGotop").stop().fadeIn(200);
      }else {
        $(".actGotop").stop().fadeOut(200);
      }
    });
    //在外面注册
    $(".btn").click(function () {
        //window 没有scrollTop这个属性，而pageXOffset是个只读属性，即不能设置值，所以用body，html ，解决兼容性的问题
      //$("html,body").stop().animate({scrollTop:0},1000);
      //scrollTop为0，瞬间上去
      $(window).scrollTop(0);
    });

  //   $("#im1").mouseenter(function(){
  //       // alert("dd");
  //       $("#weixin").css("display","block");
  //   });
  //   $("#im1").mouseleave(function(){
  //       // alert("dd");
  //       $("#weixin").css("display","none");
  //   });
  //    $("#im2").mouseenter(function(){
  //       // alert("dd");
  //       $("#qq").css("display","block");
  //   });
  //   $("#im2").mouseleave(function(){
  //       // alert("dd");
  //       $("#qq").css("display","none");
  //   });
      });
</script>
<script></script>
</body>
</html>