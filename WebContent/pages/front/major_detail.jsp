<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!doctype html>
<html lang="en">
<head>
<title>新闻详情--中国石油大学胜利学院招生信息网</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=1440">
<meta http-equiv="X-UA-Compatible" content="edge" />
<link rel="shortcut icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="../static/front/upc/images/logo.ico.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/images/logo.ico" type="image/x-icon">
<link rel="icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="../../static/front/upc/images/logo.ico.css" tppabs="https://static/front/upc/images/logo.ico" type="image/x-icon">
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/j3.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j3.js"></script>
<!--[if lt IE 9]>
	    <script type="text/javascript" src="../static/front/upc/basic/js/html5shiv.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/html5shiv.js"></script>
	    <script type="text/javascript" src="../static/front/upc/basic/js/j1.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j1.js"></script>
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
					<a href="../f.htm" tppabs="https://zhaosheng.upc.edu.cn/f"><img class="logo" src="<%=basePath %>/resources/static/front/upc/basic/images/index/logo.png" /></a>
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
<input type="hidden" name="CSRFToken" value="" />
</div></form><div class="menus">
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
                <img src="<%=basePath %>/resources/static/front/upc/basic/images/index/banner_news_detail.jpg" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/banner_news_detail.jpg"/>
            </div>
            <div class="sec_1">
                <div class="l_con">
                    <div class="site_addr">
                        <div class="tit">专业介绍</div>
                        <div class="addr">
                            <div>
                                <a href="main.shtml"><i class="icon_home"></i>首页</a>
                                <span class="icon_line">-</span>
                                <a href="getthreemajor.shtml">${major.majortype}</a>
                                <span class="icon_line">-</span>
                                 <span class="active icon_arrow_right">${major.name}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="news_wrap">
                <div class="l_con">
                    <div class="news">
                        <div class="tit">${major.name}</div>
                        <div class="info">
	                        <span>
	                                                                            供稿单位：
	                               ${major.author }
	                        </span>
	                        <span>                                                  
	                                                                            发布日期：
	                               ${major.addtime }
	                        </span>
	                        <span>                                                  
	                                                                            点击量：
	                               ${major.clicknum}
	                        </span>
	                        <span class="font-set">字体：
	                            <a data-size="14">【小】</a>
	                            <a data-size="16">【中】</a>
	                            <a data-size="18">【大】</a>
	                        </span>
                        </div>
                        <div class="line"></div>
                        <div class="detail">
                        	${major.content}
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
				<span class="copyright"> 版权所有：中国石油大学胜利学院招生办公室 </span> <span
					class=support>设计制作:基础科学学院软件协会</span>
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