<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!doctype html>
<html lang="en">
<head>
<title>首页--中国石油大学（华东）本科招生网</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=1440">
<meta http-equiv="X-UA-Compatible" content="edge" />
<link rel="shortcut icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="static/front/upc/images/logo.ico.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/images/logo.ico" type="image/x-icon">
<link rel="icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="../static/front/upc/images/logo.ico.css" tppabs="https://static/front/upc/images/logo.ico" type="image/x-icon">
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/j3.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j3.js"></script>
<!--[if lt IE 9]>
	    <script type="text/javascript" src="static/front/upc/basic/js/html5shiv.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/html5shiv.js"></script>
	    <script type="text/javascript" src="static/front/upc/basic/js/j1.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j1.js"></script>
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
<meta name="decorator" content="common_default_basic" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/plugs/swiper.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/plugs/swiper.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/index.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/index.min.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/plugins/Swiper-3.4.2/css/swiper.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/plugins/Swiper-3.4.2/css/swiper.min.css"/>
<script src="../cdn.bootcss.com/html5media/1.1.4/html5media.min.js" tppabs="https://cdn.bootcss.com/html5media/1.1.4/html5media.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/plugins/Swiper-3.4.2/js/swiper.min.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/plugins/Swiper-3.4.2/js/swiper.min.js"></script>
    <!--[if lt IE 10]>
        <link rel="stylesheet" type="text/css" href="static/front/upc/basic/plugins/Swiper-2.7.6/css/swiper.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/plugins/Swiper-2.7.6/css/swiper.min.css"/>
        <script type="text/javascript" src="static/front/upc/basic/plugins/Swiper-2.7.6/js/swiper.min.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/plugins/Swiper-2.7.6/js/swiper.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="l_con">
				<div class="left">
					<a href="f.htm" tppabs="https://zhaosheng.upc.edu.cn/f"><img class="logo" src="static/front/upc/basic/images/index/logo.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/logo.png" /></a>
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
						    <li><a  href="f.htm" tppabs="http://zhaosheng.upc.edu.cn/">首页<div class="dot"></div>
									</a></li>
								<li><a  target="_blank" href="http://www.upc.edu.cn/xygk/xxjj.htm">石大简介<div class="dot"></div>
									</a></li>
								<li><a  href="f/list-3148a5449c78447ca7dd10a728994df9.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-3148a5449c78447ca7dd10a728994df9.htm">通知公告<div class="dot"></div>
									</a></li>
								<li><a  href="f/list-c9d787239b4847c3b2a48b9780bb1772.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c9d787239b4847c3b2a48b9780bb1772.htm">招生政策<div class="dot"></div>
									</a></li>
								<li><a  href="f/list-e8659322e16240d296178402510b34f2.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-e8659322e16240d296178402510b34f2.htm">招生动态<div class="dot"></div>
									</a></li>
								<li>
									    <a href="javascript:vodi(0);">特殊类型招生<div class="dot"></div>
									    </a>
										<ul class="subs">
										    <li><a  href="f/list-27da4cb708b443f389f6f7a240ff2726.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-27da4cb708b443f389f6f7a240ff2726.htm">自主招生</a></li>
											<li><a  href="f/list-3500ec89203e47628ebe7d0370180828.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-3500ec89203e47628ebe7d0370180828.htm">综合评价招生</a></li>
											<li><a  href="f/list-c37359bdf39d493ea917bfc9eea1f7c1.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c37359bdf39d493ea917bfc9eea1f7c1.htm">高校专项计划</a></li>
											<li><a  href="f/list-b1cb2abba05f4448ba244bcc5d1d1b48.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-b1cb2abba05f4448ba244bcc5d1d1b48.htm">艺术类</a></li>
											<li><a  href="f/list-d7afac8e13b5407ab8919cd29f68adf5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-d7afac8e13b5407ab8919cd29f68adf5.htm">高水平运动队</a></li>
											<li><a  href="f/list-179a2af70ec64f6b973ed6c1a13085a6.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-179a2af70ec64f6b973ed6c1a13085a6.htm">港澳台招生</a></li>
											</ul>
									</li>
							    <li><a  href="getthreemajor.shtml" >专业介绍<div class="dot"></div>
									</a></li>
								<li>
									    <a href="javascript:vodi(0);">魅力石大<div class="dot"></div>
									    </a>
										<ul class="subs">
										    <li><a  href="f/list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm">图说石大</a></li>
											<li><a  href="f/movielist-c119b36dbbe44fc2b461307428058ab5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/movielist-c119b36dbbe44fc2b461307428058ab5.htm">视听石大</a></li>
											</ul>
									</li>
							    </ul>
					</div>
				</div>
			</div>
		</div>
		
	<div class="body">
		<div class="sec_1">
			<div class="swiper-container banner">
				<ul class="swiper-wrapper">
				    
						<li class="swiper-slide"><a href="javascript:void(0);" class="img"> <img
								src="<%=basePath %>/resources/userfiles/1/images/cms/images/2019/01/banner_1.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/images/2019/01/banner_1.jpg">
								<div class="cover"></div>
						</a></li>
				    
						<li class="swiper-slide"><a href="javascript:void(0);" class="img"> <img
								src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/120111111759883_副本.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/120111111759883_%E5%89%AF%E6%9C%AC.jpg">
								<div class="cover"></div>
						</a></li>
				    
						<li class="swiper-slide"><a href="javascript:void(0);" class="img"> <img
								src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/lbt3.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/lbt3.jpg">
								<div class="cover"></div>
						</a></li>
				    
						<li class="swiper-slide"><a href="javascript:void(0);" class="img"> <img
								src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/130228024837775_副本.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/130228024837775_%E5%89%AF%E6%9C%AC.jpg">
								<div class="cover"></div>
						</a></li>
				    
						<li class="swiper-slide"><a href="javascript:void(0);" class="img"> <img
								src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/lbt1.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/images/2019/02/lbt1.jpg">
								<div class="cover"></div>
						</a></li>
				    
				</ul>
				<div class="swiper_arrow_left"></div>
				<div class="swiper_arrow_right"></div>
			</div>
			<script>
				$(function() {
					var bannerSwiper = new Swiper('.banner.swiper-container', {
						loop : true,
						autoplay : 8000
					});
					$('.banner .swiper_arrow_right').on('click', function() {
						if (bannerSwiper.slideNext) {
							bannerSwiper.slideNext();
						}
						if (bannerSwiper.swipeNext) {
							bannerSwiper.swipeNext();
						}
					});
					$('.banner .swiper_arrow_left').on('click', function() {
						if (bannerSwiper.slideNext) {
							bannerSwiper.slidePrev();
						}
						if (bannerSwiper.swipeNext) {
							bannerSwiper.swipePrev();
						}
					});
				});
			</script>
		</div>

		<div class="sec_3">
			<div class="l_con">
				<ul>
					<li><a href="f/zsjh.htm" tppabs="https://zhaosheng.upc.edu.cn/f/zsjh">
							<div class="link_ico l1"></div>
							<div class="txt">招生计划</div>
					</a></li>
					<li><a href="f/cjcx.htm" tppabs="https://zhaosheng.upc.edu.cn/f/cjcx">
							<div class="link_ico l2"></div>
							<div class="txt">历年分数</div>
					</a></li>
					<li><a href="f/qa/question.htm" tppabs="https://zhaosheng.upc.edu.cn/f/qa/question">
							<div class="link_ico l3"></div>
							<div class="txt">智能咨询</div>
					</a></li>
					<li><a href="f/common/zsCj/forwardScore.htm" tppabs="https://zhaosheng.upc.edu.cn/f/common/zsCj/forwardScore">
							<div class="link_ico l4"></div>
							<div class="txt">填报助手</div>
					</a></li>
					<li><a href="http://zsbm.upc.edu.cn/" target="_blank">
							<div class="link_ico l5"></div>
							<div class="txt">网上报名</div>
					</a></li>
					<li><a href="f/lqcx.htm" tppabs="https://zhaosheng.upc.edu.cn/f/lqcx">
							<div class="link_ico l6"></div>
							<div class="txt">录取查询</div>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="sec_4">
			<div class="l_con">
				<ul class="tabs">
					<li class="active">通知公告
						<div class="dot"></div>
					</li>
					<li>招生政策
						<div class="dot"></div>
					</li>
					<li>招生动态</li>
					<script type="text/javascript">
						$(function(){
	                        var newsSwipers = [];
	                        $('.sec_4 .tabs_con>li .swiper-container').each(function(){
	                            var swiper = new Swiper(this, {
	                                slidesPerView: 1,
	                                loop: true,
	                                autoplay: 5000
	                            });
	                            $(this).find('.swiper_arrow_right').on('click',function(){
	                                if(swiper.slideNext){
	                                    swiper.slideNext();
	                                }
	                                if(swiper.swipeNext){
	                                    swiper.swipeNext();
	                                }
	                            });
	                            $(this).find('.swiper_arrow_left').on('click',function(){
	                                if(swiper.slideNext){
	                                    swiper.slidePrev();
	                                }
	                                if(swiper.swipeNext){
	                                    swiper.swipePrev();
	                                }
	                            });
	                            newsSwipers.push(swiper);
	                        });
	                        $('.tabs>li').on('click',function(){
	                            if($(this).hasClass('active')){
	                                return ;
	                            }else{
	                                var lind = $(this).parents('.tabs').eq(0).find('.active').removeClass('active').index();
	                                var ind = $(this).addClass('active').index();
	                                $('.tabs_con').children('li').eq(lind).hide();
	                                $('.tabs_con').children('li').eq(ind).fadeIn();
	                                $.each(newsSwipers,function(key,swiper){
	                                    if(swiper.resizeFix){
	                                        swiper.resizeFix();
	                                    }
	                                    if(swiper.onResize){
	                                        swiper.onResize();
	                                    }
	                                })
	                            }
	                        });
	                    });
					</script>
				</ul>
				<ul class="tabs_con">
				    
					<li class="news_notice" style="display: block;">
						<div class="see_more">
							<a href="f/list-3148a5449c78447ca7dd10a728994df9.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-3148a5449c78447ca7dd10a728994df9.htm">更多</a>
						</div>
						<div class="con">
						    
						    <div class="img">
                                <img src="<%=basePath %>/resources/userfiles/1/images/cms/images/微信图片_20190111191129.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/images/2019/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190111191129.jpg"/>
                            </div>
							<ul class="news_list fr">
							    
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>/resources/f/view-3148a5449c78447ca7dd10a728994df9-dd849dff64654b77a5b9708e2424e79d.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-3148a5449c78447ca7dd10a728994df9-dd849dff64654b77a5b9708e2424e79d.htm">关于中国石油大学（华东）本科招生网访问的温馨提示
										</a>
									</div>
									<div class="date">03/03</div>
								</li>
								
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>/resources/f/view-3148a5449c78447ca7dd10a728994df9-28723e62b82b41d5bff87df51363e4f7.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-3148a5449c78447ca7dd10a728994df9-28723e62b82b41d5bff87df51363e4f7.htm">关于公布中国石油大学（华东）2019年高水平运动队文化课测试合格名单的通知
										</a>
									</div>
									<div class="date">03/09</div>
								</li>
								
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>/resources/f/view-3148a5449c78447ca7dd10a728994df9-41d0aab08c3f47fa9c9a552c81dee750.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-3148a5449c78447ca7dd10a728994df9-41d0aab08c3f47fa9c9a552c81dee750.htm">关于公示中国石油大学（华东）2019年音乐学专业招生合格考生名单的通知
										</a>
									</div>
									<div class="date">03/04</div>
								</li>
								
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>/resources/f/view-3148a5449c78447ca7dd10a728994df9-73856972ae26481ab19ff4ee7293ffa6.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-3148a5449c78447ca7dd10a728994df9-73856972ae26481ab19ff4ee7293ffa6.htm">关于中国石油大学（华东）2019年高水平运动队复试安排的通知
										</a>
									</div>
									<div class="date">03/04</div>
								</li>
								
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>/resources/f/view-3148a5449c78447ca7dd10a728994df9-51cc50621d2e46149bf798f2ee425816.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-3148a5449c78447ca7dd10a728994df9-51cc50621d2e46149bf798f2ee425816.htm">关于公示中国石油大学（华东）2019年高水平运动队初审合格名单的通知
										</a>
									</div>
									<div class="date">03/04</div>
								</li>
								
							</ul>
						</div>
					</li>
                    
					<li class="news_policy">
						<div class="see_more">
							<a href="f/list-c9d787239b4847c3b2a48b9780bb1772.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c9d787239b4847c3b2a48b9780bb1772.htm">更多</a>
						</div>
						<div class="con">
						    
						    <div class="img">
                                <img src="userfiles/1/images/cms/images/微信图片_20190111191134.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/images/2019/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190111191134.jpg"/>
                            </div>
							<ul class="news_list fr">
								
	                                <li>
	                                    <div class="tit">
	                                        <a class="plug_center" href="f/view-c9d787239b4847c3b2a48b9780bb1772-18ab1ca09f01442c9871d6ec1b91c061.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c9d787239b4847c3b2a48b9780bb1772-18ab1ca09f01442c9871d6ec1b91c061.htm">中国石油大学（华东）2018年招生章程
	                                        </a>
	                                    </div>
	                                    <div class="date">06/12</div>
	                                </li>
                                
	                                <li>
	                                    <div class="tit">
	                                        <a class="plug_center" href="f/view-c9d787239b4847c3b2a48b9780bb1772-828b542e35b54927b495429a8dfdd282.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c9d787239b4847c3b2a48b9780bb1772-828b542e35b54927b495429a8dfdd282.htm">普通高等学校招生体检工作指导意见
	                                        </a>
	                                    </div>
	                                    <div class="date">06/25</div>
	                                </li>
                                
	                                <li>
	                                    <div class="tit">
	                                        <a class="plug_center" href="f/view-c9d787239b4847c3b2a48b9780bb1772-20219d01cd99447e9ab313f44335b7d9.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c9d787239b4847c3b2a48b9780bb1772-20219d01cd99447e9ab313f44335b7d9.htm">中国石油大学（华东）2017年招生章程
	                                        </a>
	                                    </div>
	                                    <div class="date">06/13</div>
	                                </li>
                                
	                                <li>
	                                    <div class="tit">
	                                        <a class="plug_center" href="f/view-c9d787239b4847c3b2a48b9780bb1772-8c807e98267e436893d89feab0fe1b0d.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c9d787239b4847c3b2a48b9780bb1772-8c807e98267e436893d89feab0fe1b0d.htm">中国石油大学（华东）2016年招生章程
	                                        </a>
	                                    </div>
	                                    <div class="date">05/17</div>
	                                </li>
                                
	                                <li>
	                                    <div class="tit">
	                                        <a class="plug_center" href="f/view-c9d787239b4847c3b2a48b9780bb1772-942ed661fb4d4e3e9c05c561dbe97a98.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c9d787239b4847c3b2a48b9780bb1772-942ed661fb4d4e3e9c05c561dbe97a98.htm">中国石油大学（华东）2015年招生章程
	                                        </a>
	                                    </div>
	                                    <div class="date">07/01</div>
	                                </li>
                                
							</ul>
						</div>
					</li>
                    
					<li class="news_dyni">
						<div class="see_more">
							<a href="f/list-e8659322e16240d296178402510b34f2.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-e8659322e16240d296178402510b34f2.htm">更多</a>
						</div>
						<div class="con">
						    
							<div class="swiper-container news_swiper fl">
                                <ul class="swiper-wrapper">
                                    
                                        <li class="swiper-slide"><img
                                            src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/等待进入考场 王大勇摄影_800x533.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/%E7%AD%89%E5%BE%85%E8%BF%9B%E5%85%A5%E8%80%83%E5%9C%BA%20%E7%8E%8B%E5%A4%A7%E5%8B%87%E6%91%84%E5%BD%B1_800x533.jpg"
                                            >
                                            <div class="cover">
                                                <div class="tit">
                                                    <a href="f/view-e8659322e16240d296178402510b34f2-8178e0743e7f48c196dd5a9bd84a8c92.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-8178e0743e7f48c196dd5a9bd84a8c92.htm">2019年音乐学专业招生考试顺利完成</a>
                                                </div>
                                                <div class="date">2019-02-23</div>
                                            </div>
                                        </li>
                                    
                                        <li class="swiper-slide"><img
                                            src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/高密市招办来我校交流调研.png.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/%E9%AB%98%E5%AF%86%E5%B8%82%E6%8B%9B%E5%8A%9E%E6%9D%A5%E6%88%91%E6%A0%A1%E4%BA%A4%E6%B5%81%E8%B0%83%E7%A0%94.png"
                                            >
                                            <div class="cover">
                                                <div class="tit">
                                                    <a href="f/view-e8659322e16240d296178402510b34f2-529dd0f55f6f414283f106638a300b77.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-529dd0f55f6f414283f106638a300b77.htm">高密市招办来我校交流调研</a>
                                                </div>
                                                <div class="date">2018-12-19</div>
                                            </div>
                                        </li>
                                    
                                        <li class="swiper-slide"><img
                                            src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/夏令营开营仪式现场 杨安摄影.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/%E5%A4%8F%E4%BB%A4%E8%90%A5%E5%BC%80%E8%90%A5%E4%BB%AA%E5%BC%8F%E7%8E%B0%E5%9C%BA%20%E6%9D%A8%E5%AE%89%E6%91%84%E5%BD%B1.jpg"
                                            >
                                            <div class="cover">
                                                <div class="tit">
                                                    <a href="f/view-e8659322e16240d296178402510b34f2-a551d63549fb47ea8948ccb913efac46.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-a551d63549fb47ea8948ccb913efac46.htm">2018年&ldquo;魅力之夏，走进石大&rdquo;夏令营举行</a>
                                                </div>
                                                <div class="date">2018-07-19</div>
                                            </div>
                                        </li>
                                    
                                </ul>
                                <div class="swiper_arrow_left"></div>
                                <div class="swiper_arrow_right"></div>
                            </div>
                            
							<ul class="news_list fr">
								
                                    <li>
                                        <div class="tit">
                                            <a class="plug_center" href="f/view-e8659322e16240d296178402510b34f2-8178e0743e7f48c196dd5a9bd84a8c92.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-8178e0743e7f48c196dd5a9bd84a8c92.htm">2019年音乐学专业招生考试顺利完成
                                            </a>
                                        </div>
                                        <div class="date">02/23</div>
                                    </li>
                                
                                    <li>
                                        <div class="tit">
                                            <a class="plug_center" href="f/view-e8659322e16240d296178402510b34f2-529dd0f55f6f414283f106638a300b77.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-529dd0f55f6f414283f106638a300b77.htm">高密市招办来我校交流调研
                                            </a>
                                        </div>
                                        <div class="date">12/19</div>
                                    </li>
                                
                                    <li>
                                        <div class="tit">
                                            <a class="plug_center" href="f/view-e8659322e16240d296178402510b34f2-a551d63549fb47ea8948ccb913efac46.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-a551d63549fb47ea8948ccb913efac46.htm">2018年&ldquo;魅力之夏，走进石大&rdquo;夏令营举行
                                            </a>
                                        </div>
                                        <div class="date">07/19</div>
                                    </li>
                                
                                    <li>
                                        <div class="tit">
                                            <a class="plug_center" href="f/view-e8659322e16240d296178402510b34f2-93a9e9cc2cd14df5a91fa028f7f96318.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-e8659322e16240d296178402510b34f2-93a9e9cc2cd14df5a91fa028f7f96318.htm">2018年青岛地区高校招生工作研讨会在我校召开
                                            </a>
                                        </div>
                                        <div class="date">03/16</div>
                                    </li>
                                
							</ul>
						</div>
					</li>

				</ul>
			</div>
		</div>

		<div class="sec_5">
			
			<div class="tit">
				<div class="ca">
					<a href="f/list-27da4cb708b443f389f6f7a240ff2726.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-27da4cb708b443f389f6f7a240ff2726.htm">特殊类型招生</a>
				</div>
				<div class="en">
					<a href="javascript:void(0);">SPECIAL TYPE</a>
				</div>
			</div>
			<div class="con">
				<ul>
					<li class="in_1"><a href="javascript:void(0);"> <img
							src="<%=basePath %>/resources/static/front/upc/basic/images/index/img_1.jpg" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/img_1.jpg" />
					</a></li>
					
					<li class="in_2">
						<div>
							<div class="link_ico l1"></div>
							<div class="line"></div>
							<div class="txt">自主招生</div>
						</div>
						<div class="cover noData">
							<div class="tit">自主招生</div>
							<div class="desc"></div>
							<a href="f/list-27da4cb708b443f389f6f7a240ff2726.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-27da4cb708b443f389f6f7a240ff2726.htm" class="btn_see_more">查看详情</a>
						</div>
					</li>
					
					<li class="in_3">
						<div>
							<div class="link_ico l6"></div>
							<div class="line"></div>
							<div class="txt">综合评价招生</div>
						</div>
						<div class="cover noData">
							<div class="tit">综合评价招生</div>
							<div class="desc"></div>
							<a href="f/list-3500ec89203e47628ebe7d0370180828.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-3500ec89203e47628ebe7d0370180828.htm" class="btn_see_more">查看详情</a>
						</div>
					</li>
					
					<li class="in_2">
						<div>
							<div class="link_ico l2"></div>
							<div class="line"></div>
							<div class="txt">高校专项计划</div>
						</div>
						<div class="cover noData">
							<div class="tit">高校专项计划</div>
							<div class="desc"></div>
							<a href="f/list-c37359bdf39d493ea917bfc9eea1f7c1.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c37359bdf39d493ea917bfc9eea1f7c1.htm" class="btn_see_more">查看详情</a>
						</div>
					</li>
					
					<li class="in_2">
						<div>
							<div class="link_ico l3"></div>
							<div class="line"></div>
							<div class="txt">艺术类</div>
						</div>
						<div class="cover noData">
							<div class="tit">艺术类</div>
							<div class="desc"></div>
							<a href="f/list-b1cb2abba05f4448ba244bcc5d1d1b48.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-b1cb2abba05f4448ba244bcc5d1d1b48.htm" class="btn_see_more">查看详情</a>
						</div>
					</li>
					
					<li class="in_3">
						<div>
							<div class="link_ico l4"></div>
							<div class="line"></div>
							<div class="txt">高水平运动队</div>
						</div>
						<div class="cover noData">
							<div class="tit">高水平运动队</div>
							<div class="desc"></div>
							<a href="f/list-d7afac8e13b5407ab8919cd29f68adf5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-d7afac8e13b5407ab8919cd29f68adf5.htm" class="btn_see_more">查看详情</a>
						</div>
					</li>
					
					<li class="in_2">
						<div>
							<div class="link_ico l5"></div>
							<div class="line"></div>
							<div class="txt">港澳台招生</div>
						</div>
						<div class="cover noData">
							<div class="tit">港澳台招生</div>
							<div class="desc"></div>
							<a href="f/list-179a2af70ec64f6b973ed6c1a13085a6.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-179a2af70ec64f6b973ed6c1a13085a6.htm" class="btn_see_more">查看详情</a>
						</div>
					</li>
					<li class="in_5"><img src="static/front/upc/basic/images/index/img_2.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/img_2.png" /> <a
						href="http://zsbm.upc.edu.cn/" target="_blank" class="btn_enroll">
					</a></li>
				</ul>
			</div>
		</div>

		<div class="sec_6">
			<div class="l_con">
				<div class="tit">
					<div class="ca">
						<a href="f/list-ec0f7f91362f47128413d1ef01cc310a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-ec0f7f91362f47128413d1ef01cc310a.htm">院部专业</a>
					</div>
					<div class="en">
						<a href="javascript:void(0);">departments</a>
					</div>
				</div>
				<div class="fa_swiper">
					<div class="swiper-container">
						<ul class="swiper-wrapper">
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('userfiles/1/images/cms/category/2019/01/dqkxyjs.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/category/2019/01/dqkxyjs.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">地球科学与技术学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-ec0f7f91362f47128413d1ef01cc310a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-ec0f7f91362f47128413d1ef01cc310a.htm"> 地球科学与技术学院 </a><!--list-ec0f7f91362f47128413d1ef01cc310a.htm -->
											</div>
											<div class="fa_desc">
												地球科学与技术学院是中国石油大学（华东）&ldquo;龙头&rdquo;学院，聚集了院士、长江学者、国家杰青、国家百千万人才工程入选者等一大批在国内外具有影响力的高层次人才，拥有地质资源与地质工程、地质学和地球物理学三个博士学位授权一级学科和4个硕士学位授权一级学科，地质资源与地质工程学科入选国家&ldquo;双一流&rdquo;建设学科名单，已成为国内一流、国际知名的油气地学领域高级专门人才培养摇篮和科学技术的研发基地。
												<a class="see_more" href="f/list-ec0f7f91362f47128413d1ef01cc310a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-ec0f7f91362f47128413d1ef01cc310a.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/Cg-4WVK4E5iIKZGxAAXkDLfRCK4AAPFmADs2CsABeQk619.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/Cg-4WVK4E5iIKZGxAAXkDLfRCK4AAPFmADs2CsABeQk619.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">石油工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-d04a56ec10024e33ac0027a9e6f9b1c0.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-d04a56ec10024e33ac0027a9e6f9b1c0.htm"> 石油工程学院 </a><!--list-d04a56ec10024e33ac0027a9e6f9b1c0.htm -->
											</div>
											<div class="fa_desc">
												石油工程学院作为全国教育系统先进集体、全国三全育人综合改革试点单位，以&ldquo;育一流人才、创一流成果、建一流学院&rdquo;为宗旨，依托国家&ldquo;双一流&rdquo;建设学科、国家级特色专业和教学团队、国家实验教学示范中心等，已为国家培养了2万余名技术和管理人才，成为我国石油工程人才培养和科学研究的重要基地。
												<a class="see_more" href="f/list-d04a56ec10024e33ac0027a9e6f9b1c0.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-d04a56ec10024e33ac0027a9e6f9b1c0.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/1/images/cms/category/2019/01/hxgcxy.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/category/2019/01/hxgcxy.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">化学工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-1d2cfd3208f54923b28bb7e9520d6fea.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-1d2cfd3208f54923b28bb7e9520d6fea.htm"> 化学工程学院 </a><!--list-1d2cfd3208f54923b28bb7e9520d6fea.htm -->
											</div>
											<div class="fa_desc">
												化学工程学院是中国石油大学（华东）主干院部之一。学院立足国际科学前沿，满足国家战略需求和区域经济建设需要，依托国家级特色专业和国家级重点学科等，建有一级学科博士学位授权点、硕士学位授权点和博士后流动站，近5年学院已取得国家科技进步奖3项。
												<a class="see_more" href="f/list-1d2cfd3208f54923b28bb7e9520d6fea.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-1d2cfd3208f54923b28bb7e9520d6fea.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/2222.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/2222.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">机电工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-17db7ff787bf48bba86a735b8ec747f9.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-17db7ff787bf48bba86a735b8ec747f9.htm"> 机电工程学院 </a><!--list-17db7ff787bf48bba86a735b8ec747f9.htm -->
											</div>
											<div class="fa_desc">
												机电工程学院立足国际科学前沿，满足国家战略需求和区域经济建设需要，拥有两个一级博士点学科、博士后科研流动站，三个二级学科为山东省重点学科，机械电子工程学科为山东省泰山学者设岗学科。建有国家级石油工业训练中心、海洋物探及勘探设备国家工程实验室、教育部石油石化装备新技术工程研究中心等12个国家和省部级教学科研平台和14个校外实习实践教学基地。
												<a class="see_more" href="f/list-17db7ff787bf48bba86a735b8ec747f9.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-17db7ff787bf48bba86a735b8ec747f9.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/20180714-1241602307.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/20180714-1241602307.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">材料科学与工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-f71f6bcc25594333a2ccdc298d98da7c.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-f71f6bcc25594333a2ccdc298d98da7c.htm"> 材料科学与工程学院 </a><!--list-f71f6bcc25594333a2ccdc298d98da7c.htm -->
											</div>
											<div class="fa_desc">
												材料科学与工程学院立足国际科学前沿，满足国家战略需求和区域经济建设需要，依托教育部卓越工程师教育培养试点专业、山东省特色专业及山东省工程实验室等5个省部级科研平台，建有材料科学与工程一级学科博士学位授权点、硕士学位授权点和博士后流动站，所属材料科学和工程领域均进入ESI全球学科排名前1%。
												<a class="see_more" href="f/list-f71f6bcc25594333a2ccdc298d98da7c.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-f71f6bcc25594333a2ccdc298d98da7c.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/v2-f5e06a81f9bfe48ba3a027dc5be1f147_1200x500_副本.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/v2-f5e06a81f9bfe48ba3a027dc5be1f147_1200x500_%E5%89%AF%E6%9C%AC.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">信息与控制工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-33fabd749fc74c7fb4bd234233361edd.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-33fabd749fc74c7fb4bd234233361edd.htm"> 信息与控制工程学院 </a><!--list-33fabd749fc74c7fb4bd234233361edd.htm -->
											</div>
											<div class="fa_desc">
												学院设有自动化、电子信息工程、电气工程、测控技术与仪器四个本科专业，拥有本硕博完整的人才培养体系。依托国家级特色专业、教学团队、资源共享课与精品课等优质教学资源，助力学生成长成才。
												<a class="see_more" href="f/list-33fabd749fc74c7fb4bd234233361edd.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-33fabd749fc74c7fb4bd234233361edd.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/中国石油大学（华东）  城市燃气模型副本2.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/%E4%B8%AD%E5%9B%BD%E7%9F%B3%E6%B2%B9%E5%A4%A7%E5%AD%A6%EF%BC%88%E5%8D%8E%E4%B8%9C%EF%BC%89%20%20%E5%9F%8E%E5%B8%82%E7%87%83%E6%B0%94%E6%A8%A1%E5%9E%8B%E5%89%AF%E6%9C%AC2.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">储运与建筑工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-a68ce1736a694480a982ee2cb2d446fc.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-a68ce1736a694480a982ee2cb2d446fc.htm"> 储运与建筑工程学院 </a><!--list-a68ce1736a694480a982ee2cb2d446fc.htm -->
											</div>
											<div class="fa_desc">
												储运与建筑工程学院是中国石油大学（华东）的特色学院，是在国内第一个油气储运教学实验室&mdash;北京石油学院油气储运教学实验室的基础上发展建立的。学院立足国家战略和区域经济建设发展需求，依托国家&ldquo;双一流&rdquo;建设学科、国家重点学科和国家级特色专业等，建有油气储运工程、动力工程和工程热物理、工程力学博士学位授予权点，具有本硕博完整的教育体系，形成了鲜明的办学特色，办学实力和办学水平不断提高。
												<a class="see_more" href="f/list-a68ce1736a694480a982ee2cb2d446fc.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-a68ce1736a694480a982ee2cb2d446fc.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/20171030012202549.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/20171030012202549.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">计算机与通信工程学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-cfb3f8b048fa4b179b525811e88a4f08.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-cfb3f8b048fa4b179b525811e88a4f08.htm"> 计算机与通信工程学院 </a><!--list-cfb3f8b048fa4b179b525811e88a4f08.htm -->
											</div>
											<div class="fa_desc">
												计算机与通信工程学院已发展成为石油石化行业领先、国内具有一定知名度的信息科技创新和人才培养基地，学院依托省级特色专业和省级卓越工程师专业等，建有信息技术本、硕、博完整的人才培养体系，毕业生综合素质高，升学深造和就业率连年位居学校各专业前列。
												<a class="see_more" href="f/list-cfb3f8b048fa4b179b525811e88a4f08.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-cfb3f8b048fa4b179b525811e88a4f08.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/经济管理学院院徽_副本.jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/%E7%BB%8F%E6%B5%8E%E7%AE%A1%E7%90%86%E5%AD%A6%E9%99%A2%E9%99%A2%E5%BE%BD_%E5%89%AF%E6%9C%AC.jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">经济管理学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-0e4e09a2392941cfaa498fd2a09ae7f4.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-0e4e09a2392941cfaa498fd2a09ae7f4.htm"> 经济管理学院 </a><!--list-0e4e09a2392941cfaa498fd2a09ae7f4.htm -->
											</div>
											<div class="fa_desc">
												经济管理学院建有管理科学与工程一级学科博士学位授权点和博士后科研流动站，建有管理科学与工程、应用经济学、工商管理等一级学科硕士学位授权点。致力于培养具有&ldquo;全球视野、家国情怀、创新精神、专业素养&rdquo;的高端人才，60多年来培养了一大批活跃在国家各行业尤其是能源行业的高素质人才。
												<a class="see_more" href="f/list-0e4e09a2392941cfaa498fd2a09ae7f4.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-0e4e09a2392941cfaa498fd2a09ae7f4.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/timg (1).jpg')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/timg%20(1).jpg*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">理学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-a1a437d0c84941ec991238df4fe3087a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-a1a437d0c84941ec991238df4fe3087a.htm"> 理学院 </a><!--list-a1a437d0c84941ec991238df4fe3087a.htm -->
											</div>
											<div class="fa_desc">
												理学院立足保障一流学科发展，培养一流人才的需要，聚合优势老牌学院及专业，设有化学博士后流动站和化学博士学位授权一级学科，有数学、物理学、化学、光学工程、统计学5个硕士学位授权一级学科和1个应用统计学专业学位授权领域。设有数学与应用数学、信息与计算科学、应用物理学、光电信息科学与工程、化学5个本科专业，其中应用物理学专业为国家级特色专业。2018年新增数据科学与大数据技术专业。
												<a class="see_more" href="f/list-a1a437d0c84941ec991238df4fe3087a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-a1a437d0c84941ec991238df4fe3087a.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/4.JPG')/*tpa=https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/category/2019/02/4.JPG*/;"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">文学院</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="f/list-1ae3a41239cd4f5594cd1c66342da578.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-1ae3a41239cd4f5594cd1c66342da578.htm"> 文学院 </a><!--list-1ae3a41239cd4f5594cd1c66342da578.htm -->
											</div>
											<div class="fa_desc">
												文学院涵盖文学、法学和艺术三大学科门类，现设有外国语言文学、法学2个硕士学位授权一级学科，翻译硕士、汉语国际教育硕士、法律硕士等3个专业硕士学位授权领域，主要承担面向全校的公共外语教学、人文素养教育和相关文科专业的人才培养、科学研究、社会服务、文化传承创新与国际交流合作等任务，在大学外语教学与改革、英语与俄语人才培养、能源法律与政策、区域文化研究、艺术设计等领域形成了鲜明的特色和优势。
												<a class="see_more" href="f/list-1ae3a41239cd4f5594cd1c66342da578.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-1ae3a41239cd4f5594cd1c66342da578.htm">查看详情</a>
											</div>
										</div>
									</div>
								</li>
						    
						</ul>
					</div>
					<div class="swiper_arrow_left"></div>
					<div class="swiper_arrow_right"></div>
				</div>
			</div>
			<div class="fa_info">
				<div class="l_con">
					<div class="fa_tit">
						<a href="#"></a>
					</div>
					<div class="fa_desc"></div>
				</div>
			</div>
			<script type="text/javascript">
				$(function() {
					var fa = new Swiper(
							'.fa_swiper .swiper-container',
							{
								slidesPerView : 4,
								onSlideChangeEnd : function() {
									if ($('.fa_swiper .item.active').length === 0) {
										changeActive($('.fa_swiper .swiper-slide-active .item'));
									} else {
										var ind = $(
												'.fa_swiper .swiper-slide-active .item')
												.parents('.swiper-slide').eq(0)
												.index();
										var acInd = $('.fa_swiper .item.active')
												.parents('.swiper-slide').eq(0)
												.index() || 0;
										if (acInd < ind) {
											changeActive($('.fa_swiper .swiper-slide-active .item'));
										}
										if ((ind + 3) < acInd) {
											changeActive($(
													'.fa_swiper .swiper-slide-active')
													.nextAll().eq(3 - 1).find(
															'.item'));
										}
									}
								}
							});
					$('.fa_swiper .swiper_arrow_right').on('click', function() {
						if (fa.slideNext) {
							fa.slideNext();
						}
						if (fa.swipeNext) {
							fa.swipeNext();
						}
					});
					$('.fa_swiper .swiper_arrow_left').on('click', function() {
						if (fa.slideNext) {
							fa.slidePrev();
						}
						if (fa.swipePrev) {
							fa.swipePrev();
						}
					});
					if ($('.fa_swiper .swiper-container .item.active').length === 0) {
						changeActive($('.fa_swiper .swiper-slide-active .item'));
					}
					$('.fa_swiper .swiper-container').on('click', '.item',
							function() {
								changeActive($(this));
							});
					function changeActive($item) {
						if ($item.hasClass('active')) {
							return false;
						}
						$('.fa_swiper .item.active').removeClass('active');
						$('.fa_info *').remove();
						$item.addClass('active');
						var $c = $item.find('.l_con').clone().hide();
						$('.fa_info').append($c);
						$c.fadeIn();
					}
				});
			</script>
		</div>

		<div class="sec_7">
			<div class="l_con">
			    
				<div class="module_1">
					<div class="tit">
						<div class="ca">
							<a href="f/list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm">图说石大</a>
						</div>
						<div class="en">
							<a href="javascript:void(0);">THE DRAWINGS</a>
						</div>
						<a href="f/list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm" class="see_more"> 更多 </a>
					</div>
					<div class="con">
						<div class="left">
						    
								<a href="f/view-c1009811e234444598ee3573956c0519-bc1d4038aba5476ca539de0844dd6585.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c1009811e234444598ee3573956c0519-bc1d4038aba5476ca539de0844dd6585.htm" class="img">
									<img data-src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/335 (3).jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/335%20(3).jpg" />
								</a>
							
						</div>
						<div class="right">
						    
								<a href="f/view-c1009811e234444598ee3573956c0519-a57442383ffb4ff5acd9c80532de5d2f.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c1009811e234444598ee3573956c0519-a57442383ffb4ff5acd9c80532de5d2f.htm" class="img">
                                    <img data-src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/326.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/326.jpg" />
                                </a>
							
								<a href="f/view-c1009811e234444598ee3573956c0519-13be124e86684cf28a7ed3588813714e.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-c1009811e234444598ee3573956c0519-13be124e86684cf28a7ed3588813714e.htm" class="img">
                                    <img data-src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/329.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/images/cms/article/2019/02/329.jpg" />
                                </a>
							
						</div>
					</div>
				</div>

				
				<div class="module_2">
					<div class="tit">
						<div class="ca">
							<a href="f/movielist-c119b36dbbe44fc2b461307428058ab5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/movielist-c119b36dbbe44fc2b461307428058ab5.htm">视听石大</a>
						</div>
						<div class="en">
							<a href="javascript:void(0);">Video Online</a>
						</div>
						<a href="f/movielist-c119b36dbbe44fc2b461307428058ab5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/movielist-c119b36dbbe44fc2b461307428058ab5.htm" class="see_more"> 更多 </a>
					</div>
					<div class="con">
					    
							<a class="video" href="f/movieview-c119b36dbbe44fc2b461307428058ab5-dfbd4fcd075441c5b3707666044a9afb.htm" tppabs="https://zhaosheng.upc.edu.cn/f/movieview-c119b36dbbe44fc2b461307428058ab5-dfbd4fcd075441c5b3707666044a9afb.htm"> <img
								data-src="<%=basePath %>/resources/userfiles/0d2799b8f37a43caae678e980659842e/_thumbs/images/cms/movie/2019/02/327 (6).jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/0d2799b8f37a43caae678e980659842e/_thumbs/images/cms/movie/2019/02/327%20(6).jpg" />
								<div class="cover"></div> <i class="icon_play"></i>
							</a>
						
					</div>
				</div>
				<script>
                    $(function(){
                        var $img = $('.sec_7 .module_1 .con .img img,.sec_7 .module_2 .con .video img');
                        $img.each(function(){
                            console.log($(this));
                            $(this).on('load',function(){
                                var w = $(this).actual('width');
                                var h = $(this).actual('height');
                                var imgP = w/h;
                                var pW = $(this).parent().width();
                                var pH = $(this).parent().height();
                                var pImgP = pW/pH;
                                if( imgP > pImgP ){
                                    var aH = '100%';
                                    var aW = imgP*pH;
                                    $(this).css({
                                        'height': aH,
                                        'width': aW + 'px',
                                        'left': '50%',
                                        'margin-left': -aW/2 + 'px'
                                    });
                                }else{
                                    var aW = '100%';
                                    var aH = pW/imgP;
                                    $(this).css({
                                        'width': aW,
                                        'top': '50%',
                                        'height': aH,
                                        'margin-top': -aH/2 + 'px'
                                    });
                                }
                            }).attr('src',$(this).attr('data-src'));
                        });
                    });
                </script>
			</div>
		</div>
	</div>
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