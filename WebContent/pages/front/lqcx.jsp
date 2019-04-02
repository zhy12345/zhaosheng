<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!doctype html>
<html lang="en">
<head>
<title>录取查询--中国石油大学胜利学院招生信息网</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=1440">
<meta http-equiv="X-UA-Compatible" content="edge" />
<link rel="shortcut icon"
	href="<%=basePath%>/resources/static/front/upc/basic/images/com/logo.ico.png"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico"
	mce_href="<%=basePath%>/resources/static/front/upc/images/logo.ico.css"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/images/logo.ico"
	type="image/x-icon">
<link rel="icon"
	href="<%=basePath%>/resources/static/front/upc/basic/images/com/logo.ico.png"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico"
	mce_href="<%=basePath%>/resources/<%=basePath%>/resources/static/front/upc/images/logo.ico.css"
	tppabs="https://static/front/upc/images/logo.ico" type="image/x-icon">
<script type="text/javascript"
	src="<%=basePath%>/resources/static/front/upc/basic/js/j3.js"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j3.js"></script>
<!--[if lt IE 9]>
	    <script type="text/javascript" src="<%=basePath%>/resources/static/front/upc/basic/js/html5shiv.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/html5shiv.js"></script>
	    <script type="text/javascript" src="<%=basePath%>/resources/static/front/upc/basic/js/j1.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j1.js"></script>
	<![endif]-->
<script type="text/javascript"
	src="<%=basePath%>/resources/static/front/upc/basic/js/util.js"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/util.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/resources/static/front/upc/basic/js/common.js"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/common.js"></script>
<script type="text/javascript">
	function searchAll() {
		var askText = $("#askText").val();
		if ($("#askText").val() == ""
				|| $("#askText").val().replace(/(^\s*)|(\s*$)/g, "") == "") {
			alert("请输入搜索内容");
		} else {

			var pattern = /^[\w\u4e00-\u9fa5]+$/gi;
			if (!pattern.test(askText)) {
				alert("发送内容只能包含中文、数字、字母和下划线");
				return;
			}
			$('#searchForm').submit();
		}

	}
	$(function() {
		$("#askText").keydown(function(e) {
			if (e.keyCode == 13) {
				searchAll();
			}
		});
	});
</script>


<meta charset="UTF-8">

<meta name="decorator" content="common_default_basic" />
<script
	src="<%=basePath%>/resources/static/lte/plugins/jquery-validation/1.11.1/jquery.validate.min.js"
	tppabs="https://zhaosheng.upc.edu.cn/static/lte/plugins/jquery-validation/1.11.1/jquery.validate.min.js"
	type="text/javascript"></script>
<script
	src="<%=basePath%>/resources/static/lte/plugins/jquery-validation/1.11.1/jquery.validate.method.min.js"
	tppabs="https://zhaosheng.upc.edu.cn/static/lte/plugins/jquery-validation/1.11.1/jquery.validate.method.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/resources/static/front/upc/basic/css/admissions.min.css"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/admissions.min.css" />
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="l_con">
				<div class="left">
					<a href="<%=basePath%>/resources/f.htm"
						tppabs="https://zhaosheng.upc.edu.cn/f"><img class="logo"
						src="<%=basePath%>/resources/static/front/upc/basic/images/index/logo.png"
						tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/logo.png" /></a>
				</div>
				<div class="right">
					<form id="searchForm" class="search"
						action="https://zhaosheng.upc.edu.cn/f/searchAll" method="post">
						<input type="text" placeholder="请输入搜索关键词" id="askText"
							name="askText" maxlength="6" />
						<button type="button" class="btn_search" onclick="searchAll();"></button>
						<script>
							$(function() {
								var v = $.IE.getVersion();
								if ($.IE.isIE()) {
									if (Number(v) >= 9) {
										$('.header .search input').on(
												'focus',
												function() {
													$(this).attr('placeholder',
															'');
												});
										$('.header .search input').on(
												'blur',
												function() {
													$(this).attr('placeholder',
															'请输入搜索关键词');
												});
									}
								}
							});
						</script>
						<div>
							<input type="hidden" name="CSRFToken"
								value="9f3e4657-a2c1-4278-8c0b-134fd15abc36" />
						</div>
					</form>
					<div class="menus">
						<ul>
						    <li><a  href="main.shtml" >首页<div class="dot"></div>
									</a></li>
								<li><a  target="_blank" href="http://www.slcupc.edu.cn/xsgk/xsuqjj.htm">胜院简介<div class="dot"></div>
									</a></li>
								<li><a  href="gettzgg.shtml" >通知公告<div class="dot"></div>
									</a></li>
								<li><a  href="getzsjz.shtml" >招生简章<div class="dot"></div>
									</a></li>
								
							    <li><a href="getthreemajor.shtml" >专业介绍<div class="dot"></div>
									</a></li>
								<li>
									    <a href="javascript:void(0);">魅力胜院<div class="dot"></div>
									    </a>
										<ul class="subs">
										    <li><a  href="getXYFGPhoto.shtml">校园风光</a></li>
										    <li><a  href="getYXXCPhoto.shtml">院系宣传</a></li>
											<li><a  href="getVideoList.shtml">视听胜院</a></li>
										</ul>
									</li>
							    </ul>
					</div>
				</div>
			</div>
		</div>

		<div class="body">
			<!--banner-->
			<div class="banner">
				<img
					src="<%=basePath%>/resources/static/front/upc/basic/images/index/banner_img_list.jpg"
					tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/banner_img_list.jpg" />
			</div>
			<!--查询-->
			<div class="query_wrap">
				<img
					src="<%=basePath%>/resources/static/front/upc/basic/images/admit/query_bg.jpg"
					tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/admit/query_bg.jpg" />

				<div class="l_con">
					<div class="site_addr">
						<div class="tit">录取查询</div>
						<div class="addr">
							<div>
								<a href="<%=basePath%>/resources/f.htm"
									tppabs="https://zhaosheng.upc.edu.cn/f"><i
									class="icon_home"></i>首页</a> <span class="icon_line">-</span> <a
									class="active" href="lqcx.htm"
									tppabs="https://zhaosheng.upc.edu.cn/f/lqcx">录取查询</a>
							</div>
						</div>
					</div>
					<div class="loginBlock">
						<div class="loginFunc">中国石油大学胜利学院<br/>录取查询</div>
						<form id="inputForm" class="queryForm" action="<%=basePath%>checkluqu.shtml"
							method="post">

							<script type="text/javascript">
								top.$.jBox.closeTip();
							</script>

							<div class="validate-tip" style="display: none;"></div>
							<div class="account-number input-box">
								<img
									src="<%=basePath%>/resources/static/front/upc/basic/images/admit/login_icon_03.png"
									tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/admit/login_icon_03.png"
									alt="" /> <input id="ksh" name="ksh" placeholder="请输入考生号"
									type="text" class="examNum required" value="" />
								<!-- <label for="" style="font-size:14px;color:red">错误</label> -->
							</div>
							<div class="account-number input-box">
								<img
									src="<%=basePath%>/resources/static/front/upc/basic/images/admit/login_icon_07.png"
									tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/admit/login_icon_07.png"
									alt="" style="top: 14px;" /> <input id="sfzh" name="sfzh"
									style="overflow: hidden;" placeholder="请输入身份证号" type="text"
									class="idNum required" value="" autocomplete="off" />
							</div>
							<%-- <div class="account-number input-box">
							<img src="<%=basePath %>/resources/static/front/upc/basic/images/admit/login_icon_10.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/admit/login_icon_10.png" alt=""
								style="width: 18px; top: 10px;" /> 
							<input id="validateCode" name="validateCode" placeholder="验证码" type="text" value="" maxlength="5"/>
                            <img src="<%=basePath %>/resources/servlet/validateCodeServlet.jpg" tppabs="https://zhaosheng.upc.edu.cn/servlet/validateCodeServlet" onclick="$('.validateCode').attr('src','/servlet/validateCodeServlet?'+new Date().getTime());" class="validateCode ver_code" style="" title="看不清，点我！"/>
						   
						</div> --%>
							<div class="loginBtnBox">
								<button type="button" class="submit">查询</button>
								<button type="reset" class="reset">重置</button>
							</div>
							<script type="text/javascript">
								$(function() {
									var isBeginVal = false;
									$('.queryForm .submit').on('click',
											function() {
												isBeginVal = true;
												vali();
											});
									$(
											'.queryForm .examNum,.queryForm .idNum,.queryForm .idenfyNum')
											.on('blur', function() {
												if (isBeginVal) {
													vali();
												}
											});
									$('.queryForm .reset').on(
											'click',
											function() {
												isBeginVal = false;
												$('.queryForm .validate-tip')
														.html('').hide();
											});
									/**验证*/
									function vali() {
										if (!required_vali()) { //必填项验证如果不通过
											return false;
										}
										$('.queryForm').submit();
									}
									/**必填项验证*/
									function required_vali() {
										var examNum = $('.queryForm .examNum')
												.val();
										var idNum = $('.queryForm .idNum')
												.val();

										var isSucc = true;
										var requiredTxt = '请填写';
										if (examNum.trim().length === 0) {
											isSucc = false;
											requiredTxt += '考生号、';
										}
										if (idNum.trim().length === 0) {
											isSucc = false;
											requiredTxt += '身份证号、';
										}
										if (!isSucc) {
											requiredTxt = requiredTxt
													.substring(
															0,
															requiredTxt.length - 1);
											$('.queryForm .validate-tip').html(
													requiredTxt).show();
										} else {
											$('.queryForm .validate-tip').html(
													'').hide();
										}
										return isSucc;
									}
								});
							</script>
							<div>
								<input type="hidden" name="CSRFToken"
									value="9f3e4657-a2c1-4278-8c0b-134fd15abc36" />
							</div>
						</form>

						<dl class="pass-tip">
							<dt>提示：</dt>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript"
			src="<%=basePath%>/resources/static/front/upc/basic/js/jquery.placeholder.min.js"
			tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/jquery.placeholder.min.js"></script>
		<script>
			$(function() {
				if (!('placeholder' in document.createElement('input'))) {
					$('input[placeholder],textarea[placeholder]').each(
							function() {
								var that = $(this), text = that
										.attr('placeholder');
								if (that.val() === "") {
									that.val(text).addClass('placeholder');
								}
								that.focus(
										function() {
											if (that.val() === text) {
												that.val("").removeClass(
														'placeholder');
											}
										}).blur(function() {
									if (that.val() === "") {
										that.val(text).addClass('placeholder');
									}
								}).closest('form').submit(function() {
									if (that.val() === text) {
										that.val('');
									}
								});
							});
				}
			})
			$(function() {
				$('input[type="text"]').placeholder({
					isUseSpan : true
				});
			});
		</script>
		<div class="footer">
			<div class="info">
				<div class="l_con">
					<div class="chunk_1">
						<a href="javascript:void(0);"> <img class="logo"
							src="<%=basePath%>/resources/static/front/upc/basic/images/index/logo_1.png"
							tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/logo_1.png" />
						</a>
					</div>
						<div class="chunk_2">
						<div class="tit">常用链接</div>
						<div class="con">
							<div class="list_1">
							    <a class="item" href="http://www.moe.gov.cn/" target="_blank">中华人民共和国教育部</a><br>
	                            <a class="item" href="http://www.sdzk.cn/" target="_blank">山东省教育招生考试院</a><br>
	                            <a class="item" href="https://gaokao.chsi.com.cn/" target="_blank">阳光高考信息平台</a><br>
	                             <a class="item" href="http://www.slcupc.edu.cn/" target="_blank">中国石油大学胜利学院</a><br>
	                            <a class="item" href="http://www.upc.edu.cn/" target="_blank">中国石油大学（华东）</a><br>
	                           
	                            </div>
							<div class="list_2">
								</div>
						</div>
					</div>
					<div class="chunk_3">
						<div class="tit">联系我们</div>
						<div class="con">
							邮箱：xxzx@slcupc.edu.cn</br> 邮编：257061 </br> 地址：山东省东营市北二路271号 </br>
						</div>
					</div>
					<div class="chunk_4">
						<div class="code1">
							<img
								src="<%=basePath%>/resources/static/front/upc/basic/images/index/code_1.png"
								tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/code_1.png" />
							<div class="txt">本科招生微信</div>
						</div>
						<div class="code2">
							<img
								src="<%=basePath%>/resources/static/front/upc/basic/images/index/code_2.png"
								tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/code_2.png" />
							<div class="txt">学校官方微信</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bottom">
				<span class="copyright"> 版权所有：中国石油大学胜利学院招生办公室 </span> <span
					class=support>设计制作:基础科学学院软件协会</span>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$(window).on('scroll', scrollFixed);
			scrollFixed();
			function scrollFixed() {
				var stop = $(window).scrollTop();
				if (stop > 115) {
					$('.wrapper .header').addClass('header_fixed');
				} else {
					$('.wrapper .header').removeClass('header_fixed');
				}
			}
		});
	</script>
</body>
</html>