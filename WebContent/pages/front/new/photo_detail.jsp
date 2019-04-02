<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
String filepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +"/upload/";
%>
<!doctype html>
<html lang="en">
<head>
<title>新闻详情--中国石油大学（华东）本科招生网</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=1440">
<meta http-equiv="X-UA-Compatible" content="edge" />
<link rel="shortcut icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="<%=basePath %>/resources/static/front/upc/images/logo.ico.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/images/logo.ico" type="image/x-icon">
<link rel="icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="<%=basePath %>/resources/<%=basePath %>/resources/static/front/upc/images/logo.ico.css" tppabs="https://static/front/upc/images/logo.ico" type="image/x-icon">
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/j3.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j3.js"></script>
<!--[if lt IE 9]>
	    <script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/html5shiv.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/html5shiv.js"></script>
	    <script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/j1.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j1.js"></script>
	<![endif]-->
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/util.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/util.js"></script>
<script type="text/javascript"
	src="<%=basePath %>/resources/static/front/upc/basic/js/common.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/common.js"></script>
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
	<meta name="decorator" content="common_default_basic"/>
	
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/sub.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/sub.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/news_detail.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/news_detail.min.css"/>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="l_con">
				<div class="left">
					<a href="<%=basePath %>/resources/f.htm" tppabs="https://zhaosheng.upc.edu.cn/f"><img class="logo" src="<%=basePath %>/resources/static/front/upc/basic/images/index/logo.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/logo.png" /></a>
				</div>
				<div class="right">
					<form id="searchForm" class="search" action="https://zhaosheng.upc.edu.cn/f/searchAll" method="post"><input type="text" placeholder="请输入搜索关键词" id="askText" name="askText" maxlength="6"/>
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
<input type="hidden" name="CSRFToken" value="9f3e4657-a2c1-4278-8c0b-134fd15abc36" />
</div></form><div class="menus">
						<ul>
						    <li><a  href="<%=basePath %>/resources/f.htm" tppabs="http://zhaosheng.upc.edu.cn/">首页<div class="dot"></div>
									</a></li>
								<li><a  target="_blank" href="http://www.upc.edu.cn/xygk/xxjj.htm">石大简介<div class="dot"></div>
									</a></li>
								<li><a  href="list-3148a5449c78447ca7dd10a728994df9.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-3148a5449c78447ca7dd10a728994df9.htm">通知公告<div class="dot"></div>
									</a></li>
								<li><a  href="list-c9d787239b4847c3b2a48b9780bb1772.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c9d787239b4847c3b2a48b9780bb1772.htm">招生政策<div class="dot"></div>
									</a></li>
								<li><a  href="list-e8659322e16240d296178402510b34f2.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-e8659322e16240d296178402510b34f2.htm">招生动态<div class="dot"></div>
									</a></li>
								<li>
									    <a href="javascript:vodi(0);">特殊类型招生<div class="dot"></div>
									    </a>
										<ul class="subs">
										    <li><a  href="list-27da4cb708b443f389f6f7a240ff2726.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-27da4cb708b443f389f6f7a240ff2726.htm">自主招生</a></li>
											<li><a  href="list-3500ec89203e47628ebe7d0370180828.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-3500ec89203e47628ebe7d0370180828.htm">综合评价招生</a></li>
											<li><a  href="list-c37359bdf39d493ea917bfc9eea1f7c1.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c37359bdf39d493ea917bfc9eea1f7c1.htm">高校专项计划</a></li>
											<li><a  href="list-b1cb2abba05f4448ba244bcc5d1d1b48.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-b1cb2abba05f4448ba244bcc5d1d1b48.htm">艺术类</a></li>
											<li><a  href="list-d7afac8e13b5407ab8919cd29f68adf5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-d7afac8e13b5407ab8919cd29f68adf5.htm">高水平运动队</a></li>
											<li><a  href="list-179a2af70ec64f6b973ed6c1a13085a6.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-179a2af70ec64f6b973ed6c1a13085a6.htm">港澳台招生</a></li>
											</ul>
									</li>
							    <li><a  href="list-ec0f7f91362f47128413d1ef01cc310a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-ec0f7f91362f47128413d1ef01cc310a.htm">专业介绍<div class="dot"></div>
									</a></li>
								<li>
									    <a href="javascript:vodi(0);">魅力石大<div class="dot"></div>
									    </a>
										<ul class="subs">
										    <li><a  href="list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm">图说石大</a></li>
											<li><a  href="movielist-c119b36dbbe44fc2b461307428058ab5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/movielist-c119b36dbbe44fc2b461307428058ab5.htm">视听石大</a></li>
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
                <img src="<%=basePath %>/resources/static/front/upc/basic/images/index/banner_news_detail.jpg" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/banner_news_detail.jpg"/>
            </div>
            <div class="sec_1">
                <div class="l_con">
                    <div class="site_addr">
                        <div class="tit">图说石大</div>
                        <div class="addr">
                            <div>
                                <a href="<%=basePath %>/resources/f.htm" tppabs="https://zhaosheng.upc.edu.cn/f"><i class="icon_home"></i>首页</a>
                                <span class="icon_line">-</span>
                                <a href="list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm">图说石大</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="news_wrap">
                <div class="l_con">
                    <div class="news">
                        <div class="tit">军训归来</div>
                        <div class="info">
	                        <span>
	                                                                            供稿单位：
	                                本科招生办
	                        </span>
	                        <span>                                                  
	                                                                            发布日期：
	                                2019-02-21
	                        </span>
	                        <span class="font-set">字体：
	                            <a data-size="14">【小】</a>
	                            <a data-size="16">【中】</a>
	                            <a data-size="18">【大】</a>
	                        </span>
                        </div>
                        <div class="line"></div>
                        <div class="detail">
                            <p><img alt="" src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/332 (11).jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/332%20(11).jpg" style="width: 1200px; height: 800px;" /></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/util.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/util.js"></script>
    <script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/plugs.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/plugs.js"></script>
    <script type="text/javascript">
        $('.font-set a').bind('click',function(){
            var font_size = $(this).data('size');
            $('.news .detail').css('font-size',font_size+'px');
        })
    </script>
<div class="footer">
			<div class="info">
				<div class="l_con">
					<div class="chunk_1">
						<a href="javascript:void(0);"> <img class="logo"
							src="<%=basePath %>/resources/static/front/upc/basic/images/index/logo_1.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/logo_1.png" />
						</a>
					</div>
					<div class="chunk_2">
						<div class="tit">常用链接</div>
						<div class="con">
							<div class="list_1">
							    <a class="item" href="http://www.moe.gov.cn/" target="_blank">中华人民共和国教育部</a><br>
	                            <a class="item" href="http://www.sdzk.cn/" target="_blank">山东省教育招生考试院</a><br>
	                            <a class="item" href="https://gaokao.chsi.com.cn/" target="_blank">阳光高考信息平台</a><br>
	                            <a class="item" href="http://www.upc.edu.cn/" target="_blank">中国石油大学（华东）</a><br>
	                            <a class="item" href="http://career.upc.edu.cn/" target="_blank">中国石油大学（华东）就业信息网</a><br>
	                            </div>
							<div class="list_2">
								</div>
						</div>
					</div>
					<div class="chunk_3">
						<div class="tit">联系我们</div>
						<div class="con">
							电话：0532-86981305</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0532-86983086</br>
							邮箱：zhaosheng@upc.edu.cn</br> 邮编：266580</br> 地址：青岛市黄岛区长江西路66号</br>
						</div>
					</div>
					<div class="chunk_4">
						<div class="code1">
							<img src="<%=basePath %>/resources/static/front/upc/basic/images/index/code_1.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/code_1.png" />
							<div class="txt">本科招生微信</div>
						</div>
						<div class="code2">
							<img src="<%=basePath %>/resources/static/front/upc/basic/images/index/code_2.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/code_2.png" />
							<div class="txt">学校官方微信</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bottom">
				<span class="copyright"> 版权所有：中国石油大学（华东）招生办公室 </span> <span
					class=support> 技术支持：北京云智小橙科技有限公司 </span>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
            $(window).on('scroll',scrollFixed);
            scrollFixed();
            function scrollFixed(){
                var stop = $(window).scrollTop();
                if( stop > 115 ){
                    $('.wrapper .header').addClass('header_fixed');
                }else{
                    $('.wrapper .header').removeClass('header_fixed');
                }
            }
        });
	</script>
</body>
</html>