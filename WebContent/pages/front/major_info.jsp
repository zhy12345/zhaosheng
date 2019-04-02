<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!doctype html>
<html lang="en">
<head>
<title>院系专业--中国石油大学胜利学院招生信息网</title>
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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/resources/static/front/upc/basic/css/college_list.min.css"
	tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/college_list.min.css" />
<script language="javascript">
	function page(pageNo, pageSize) {

		$("#pageNo").val(pageNo);
		$("#pageSize").val(pageSize);
		document.searchform.submit();

	}
</script>
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

		<form id="searchform" name="searchform" class="form-horizontal"
			action="list-ec0f7f91362f47128413d1ef01cc310a.htm-pageNo=1&CSRFToken=9f3e4657-a2c1-4278-8c0b-134fd15abc36.htm"
			tppabs="https://zhaosheng.upc.edu.cn/f/list-ec0f7f91362f47128413d1ef01cc310a.htm?pageNo=1&CSRFToken=9f3e4657-a2c1-4278-8c0b-134fd15abc36"
			method="post">
			<input id="pageNo" name="pageNo" type="hidden" value="1" />
			<div>
				<input type="hidden" name="CSRFToken"
					value="9f3e4657-a2c1-4278-8c0b-134fd15abc36" />
			</div>
		</form>
		<div class="body">
			<!--banner-->
			<div class="banner">
				<img
					src="<%=basePath%>/resources/static/front/upc/basic/images/index/banner_college_list.jpg"
					tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/banner_college_list.jpg" />
			</div>
			<div class="sec_1">
				<div class="l_con">
					<div class="site_addr">
						<div class="tit">专业介绍</div>
						<div class="addr">
							<div>
								<a href="<%=basePath%>/resources/f.htm"
									tppabs="https://zhaosheng.upc.edu.cn/f"><i
									class="icon_home"></i>首页</a> <span class="active icon_line">-</span>
								<a class="active" href="javascript:void(0);">专业介绍</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="news_wrap">
				<div class="l_con">
					<div class="news">
						<div class="tit">专业介绍</div>
						<div class="line"></div>
						<div class="detail">
							<table class="college_list">
								<colgroup>
									<col width="237">
									<col width="962">
								</colgroup>
								<thead>
									<tr>
										<th>等级</th>
										<th>专业</th>
									</tr>
								</thead>
								<tbody>

									<tr class="odd">
										<td><a href="http://geori.upc.edu.cn/" class="college">
												本科 </a>
										</td>
										<td>
										<c:forEach items="${bklist}" var="bk">		
											<a href="majordetail.shtml?id=${bk.id}" class="major"> ${bk.name} </a>
										</c:forEach>
										</td>
									</tr>

									<tr class="even">
										<td><a href="http://pe.upc.edu.cn/" class="college">
												专科 </a></td>
										<td>
										<c:forEach items="${zklist}" var="zk">		
											<a href="majordetail.shtml?id=${zk.id}" class="major"> ${zk.name} </a>
										</c:forEach>
										</td>
									</tr>

									<tr class="odd">
										<td><a href="http://cce.upc.edu.cn/" class="college">
												专升本 </a></td>
										<td>
										<c:forEach items="${zsblist}" var="zsb">		
											<a href="majordetail.shtml?id=${zsb.id}" class="major"> ${zsb.name} </a>
										</c:forEach>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
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