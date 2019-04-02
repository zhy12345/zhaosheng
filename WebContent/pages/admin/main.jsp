<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>

<!DOCTYPE html>
<head>
<base href="<%=basePath %>">
<meta charset="UTF-8">
<title>招生信息网--后台管理</title>
<!-- load css -->
<link rel="stylesheet" type="text/css" href="assets1/lib/common/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="assets1/lib/common/global.css" media="all"> 
<link rel="stylesheet" type="text/css" href="assets1/custom/css/adminstyle.css" media="all">
<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<div class="layui-layout layui-layout-admin" id="layui_layout">
		<!-- 顶部区域 -->
		<div class="layui-header header header-demo">
			<div class="layui-main">
				<!-- logo区域 -->
				<div class="admin-logo-box">
					<a class="logo" href="http://www.kuxuebao.net" title="logo">后台管理系统</a>
					<div class="larry-side-menu">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</div>
				</div>
				<!-- 顶级菜单区域 -->
				<div class="layui-larry-menu">
					<ul class="layui-nav clearfix">
						<li class="layui-nav-item layui-this"><a href="javascirpt:;"><i class="iconfont icon-wangzhanguanli"></i>内容管理</a></li>
						<li class="layui-nav-item"><a href="javascirpt:;"><i class="iconfont icon-ht_expand"></i>扩展模块</a></li>
					</ul>
				</div>
				<!-- 右侧导航 -->
				<ul class="layui-nav larry-header-item">
					<li class="layui-nav-item">用户姓名：${sessionScope.person.truename }</li>
					<li class="layui-nav-item"><a href="javascript:;" id="lock"> <i class="iconfont icon-diannao1"></i> 锁屏
					</a></li>
					<li class="layui-nav-item"><a href=""> <i class="iconfont icon-exit"></i> 退出
					</a></li>
				</ul>
			</div>
		</div>
		<!-- 左侧侧边导航开始 -->
		<div class="layui-side layui-side-bg layui-larry-side" id="larry-side">
			<div class="layui-side-scroll" id="larry-nav-side" lay-filter="side">

				<!-- 左侧菜单 -->
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-this"><a href="javascript:;" data-url="pages/admin/adminhome.jsp"> <i class="iconfont icon-home1" data-icon='icon-home1'></i> <span>后台首页</span>
					</a></li>
					<!-- 个人信息 -->
					<li class="layui-nav-item" id="userManagement"><a href="javascript:;"> <i class="iconfont icon-jiaoseguanli"></i> <span>用户管理</span> <em class="layui-nav-more"></em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="admin/getuserinfo.shtml"> <i class="iconfont icon-geren1" data-icon='icon-geren1'></i> <span>个人信息</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="pages/admin/personinfo/personPassword.jsp"> <i class="iconfont icon-iconfuzhi01" data-icon='icon-iconfuzhi01'></i> <span>修改密码</span>
								</a>
							</dd>
						</dl></li>
						
						<!-- 院系介绍 -->
						<li class="layui-nav-item" id="photoAndvideo"><a href="javascript:;"> <i class="iconfont icon-shengchengbaogao"></i> <span>院系介绍管理</span> <em class="layui-nav-more"></em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="admin/getCollegeList.shtml"> <i class="iconfont icon-quanxian2" data-icon='icon-tags1'></i> <span>学院介绍</span>
								</a>
							</dd>
							
						</dl>
					</li>
						
					<!-- 文章管理 -->
					<li class="layui-nav-item" id="newsManagement"><a href="javascript:;" data-url="admin/adminallnews.shtml"  > <i class="iconfont icon-jiaoseguanli2"></i> <span>文章管理 </span> <em class="layui-nav-more"></em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="admin/adminallnews.shtml" > <i class="iconfont icon-tags1" data-icon='icon-yonghu1'></i> <span>文章列表</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/adminzcgdnews.shtml"> <i class="iconfont icon-yonghu1" data-icon='icon-yonghu1'></i> <span>政策规定管理</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/adminzsjznews.shtml"> <i class="iconfont icon-jiaoseguanli4" data-icon='icon-jiaoseguanli4'></i> <span>招生简章管理</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/adminallmajor.shtml"> <i class="iconfont icon-quanxian2" data-icon='icon-quanxian2'></i> <span>专业介绍管理</span>
								</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item" id="excelManagement"><a href="javascript:;"> <i class="iconfont icon-shengchengbaogao"></i> <span>表格文件管理</span> <em class="layui-nav-more"></em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="admin/exceptquery.shtml"> <i class="iconfont icon-tags1" data-icon='icon-tags1'></i> <span>其他表格文件管理</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/queryexcel.shtml"> <i class="iconfont icon-tags1" data-icon='icon-tags1'></i> <span>学生录取查询表格管理</span>
								</a>
							</dd>
							
							<dd>
								<a href="javascript:;" data-url="admin/getAllPalnExcel.shtml"> <i class="iconfont icon-tags1" data-icon='icon-tags1'></i> <span>招生计划查询表格管理</span>
								</a>
							</dd>
							
						</dl></li>
					<li class="layui-nav-item" id="excelManagement"><a href="javascript:;"> <i class="iconfont icon-shengchengbaogao"></i> <span>招生日历管理</span> <em class="layui-nav-more"></em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="admin/getrililist.shtml"> <i class="iconfont icon-quanxian2" data-icon='icon-tags1'></i> <span>日历表格管理</span>
								</a>
							</dd>
						</dl></li>
						
						
					<li class="layui-nav-item" id="photoAndvideo"><a href="javascript:;"> <i class="iconfont icon-shengchengbaogao"></i> <span>照片、视频管理</span> <em class="layui-nav-more"></em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url="admin/getallvideo.shtml"> <i class="iconfont icon-quanxian2" data-icon='icon-tags1'></i> <span>视频文件列表</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/getviewphoto.shtml"> <i class="iconfont icon-tags1" data-icon='icon-tags1'></i> <span>校园风光照片</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/getxuanchuanphoto.shtml"> <i class="iconfont icon-jiaoseguanli4" data-icon='icon-jiaoseguanli4'></i> <span>各院系宣传照片</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url="admin/getlunbolist.shtml"> <i class="iconfont icon-jiaoseguanli4" data-icon='icon-jiaoseguanli4'></i> <span>轮播照片管理</span>
								</a>
							</dd>
						</dl>
					</li>
					
			

				</ul>
			</div>
		</div>

		<!-- 左侧侧边导航结束 -->
		<!-- 右侧主体内容 -->
		<div class="layui-body" id="larry-body" style="bottom: 0; border-left: solid 2px #2299ee;">
			<div class="layui-tab layui-tab-card larry-tab-box" id="larry-tab" lay-filter="demo" lay-allowclose="true">
				<div class="go-left key-press pressKey" id="titleLeft" title="滚动至最右侧">
					<i class="larry-icon larry-weibiaoti6-copy"></i>
				</div>
				<ul class="layui-tab-title">
					<li class="layui-this" id="admin-home"><i class="iconfont icon-diannao1"></i><em>后台首页</em></li>
				</ul>
				<div class="go-right key-press pressKey" id="titleRight" title="滚动至最左侧">
					<i class="larry-icon larry-right"></i>
				</div>
				<ul class="layui-nav closeBox">
					<li class="layui-nav-item"><a href="javascript:;"><i class="iconfont icon-caozuo"></i> 页面操作</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="refresh refreshThis"><i class="layui-icon">&#x1002;</i> 刷新当前</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageOther"><i class="iconfont icon-prohibit"></i> 关闭其他</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageAll"><i class="iconfont icon-guanbi"></i> 关闭全部</a>
							</dd>
						</dl></li>
				</ul>
				<div class="layui-tab-content" style="min-height: 150px;">
					<div class="layui-tab-item layui-show">
						<iframe class="larry-iframe" data-id='0' id="rightIframe" src="" style="width: 100%; height: 100%"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部区域 -->
		<div class="layui-footer layui-larry-foot" id="larry-footer">
			<div class="layui-mian">
				<p class="p-admin">
					<span>2018 &copy;</span> 基础科学学院软件协会设计制作 
				</p>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- 加载js文件-->
	<script type="text/javascript" src="assets1/lib/common/layui/layui.js"></script>
	 <script type="text/javascript" src="assets1/lib/js/larry.js"></script> 
	<script type="text/javascript" src="assets1/lib/js/index.js"></script>
	<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>

	<script type="text/javascript">
	$("#submit").click(function() {
		$("#deliveryForm").submit();
	});
	
	</script>
<!-- 	<!-- 锁屏 -->
	<div class="lock-screen" style="display: none;">
		<div id="locker" class="lock-wrapper">
			<div id="time"></div>
			<div class="lock-box center">
				<img src="images/userimg.jpg" alt="">
				<h1>admin</h1>
				<duv class="form-group col-lg-12"> <input type="password" placeholder='锁屏状态，请输入密码解锁' id="lock_password" class="form-control lock-input" autofocus name="lock_password">
				<button id="unlock" class="btn btn-lock">解锁</button>
				</duv>
			</div>
		</div>
	</div>
 -->
</body>
</html>