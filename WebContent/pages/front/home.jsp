<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
	String filepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +"/upload/";
	String videopath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() ;

%>
<!doctype html>
<html lang="en">
<head>
<title>首页--中国石油大学胜利学院招生信息网</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=1440">
<meta http-equiv="X-UA-Compatible" content="edge" />
<link rel="shortcut icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="static/front/upc/images/logo.ico.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/images/logo.ico" type="image/x-icon">
<link rel="icon" href="<%=basePath %>/resources/static/front/upc/basic/images/com/logo.ico.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/com/logo.ico" mce_href="../static/front/upc/images/logo.ico.css" tppabs="https://static/front/upc/images/logo.ico" type="image/x-icon">
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/j3.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/j3.js"></script>

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
   <link rel="stylesheet" href="<%=basePath %>/resources/static/newly/float.css">
    <style>
        .actGotop_right {
            position: fixed;
            right: 0;
            bottom: 50px;
            transition: top .5s;
        }

        .hiddened {
            bottom: -400px;
        }

        .showed {
            top: 194px;
            z-index: 9999;
        }
    </style>
    
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="l_con">
				<div class="left">
					<a href="#"><img class="logo" src="<%=basePath %>/resources/static/front/upc/basic/images/index/logo.png" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/logo.png" /></a>
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
		<div class="sec_1">
			<div class="swiper-container banner">
				<ul class="swiper-wrapper">
				     <c:forEach items="${lunBoList }" varStatus="count" var="list">
						<li class="swiper-slide"><a href="javascript:void(0);" class="img"> 
						<img src="${list.photopath }" >
								<div class="cover"></div>
						</a></li>
				    </c:forEach>
						
				    
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
					<li><a href="zsjh.shtml" >
							<div class="link_ico l1"></div>
							<div class="txt">招生计划</div>
					</a></li>
					<li><a href="javascript:void(0);" >
							<div class="link_ico l2"></div>
							<div class="txt">历年分数</div>
					</a></li>
					<li><a href="javascript:void(0);">
							<div class="link_ico l3"></div>
							<div class="txt">智能咨询</div>
					</a></li>
					<li><a href="javascript:void(0);" >
							<div class="link_ico l4"></div>
							<div class="txt">填报助手</div>
					</a></li>
					<li><a href="javascript:void(0);" target="_blank">
							<div class="link_ico l5"></div>
							<div class="txt">网上报名</div>
					</a></li>
					<li><a href="luQuCheck.shtml">
							<div class="link_ico l6"></div>
							<div class="txt">录取查询</div>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="sec_4">
			<div class="l_con">
				<ul class="tabs">
					<li class="active">最新动态
						<div class="dot"></div>
					</li>
					 <li>通知公告
						 <div class="dot"></div>
					 </li> 
					 
					<li>
						招生简章
					</li>
					
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
							<a href="getallnews.shtml" >更多</a>
						</div>
						<div class="con">
						    
						    <div class="img">
                                <img src="<%=basePath %>/resources/userfiles/1/images/cms/images/微信图片_20190111191129.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/images/2019/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190111191129.jpg"/>
                            </div>
							<ul class="news_list fr">
							    <c:forEach items="${fournews }" var="news">
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>newsdetail.shtml?id=${news.id}&type=${news.type}">${news.subject}
										</a>
									</div>
									<div class="date">
										<c:choose >
	                                	<c:when test="${news.time eq '' } ">
	                                	 </c:when>
	                                	 <c:otherwise>
	                                   		${fn:substring(news.time,5 , 10)}
	                                    	
	                                    </c:otherwise>
	                                  </c:choose>
									</div>
								</li>
								</c:forEach>
							
								
							</ul>
						</div>
					</li>
					
					<li class="news_dyni">
						<div class="see_more">
							<a href="gettzgg.shtml" >更多</a>
						</div>
						<div class="con">
						    
						    <div class="img">
                                <img src="<%=basePath %>/resources/userfiles/1/images/cms/images/微信图片_20190111191129.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/images/2019/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190111191129.jpg"/>
                            </div>
							<ul class="news_list fr">
							    <c:forEach items="${tongZhiList }" var="news">
								<li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>newsdetail.shtml?id=${news.id}&type=${news.type}">${news.subject}
										</a>
									</div>
									<div class="date">
										<c:choose >
	                                	<c:when test="${news.time eq '' } ">
	                                	 </c:when>
	                                	 <c:otherwise>
	                                   		${fn:substring(news.time,5 , 10)}
	                                    	
	                                    </c:otherwise>
	                                  </c:choose>
									</div>
								</li>
								</c:forEach>
							
								
							</ul>
						</div>
					</li>
					
                    
					<li class="news_policy">
						<div class="see_more">
							<a href="getzsjz.shtml">更多</a>
						</div>
						<div class="con">
						    <div class="img">
                                <img src="<%=basePath %>/resources/userfiles/1/images/cms/images/微信图片_20190111191134.jpg" tppabs="https://zhaosheng.upc.edu.cn/userfiles/1/images/cms/images/2019/01/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190111191134.jpg"/>
                            </div>
							<ul class="news_list fr">
								<c:forEach items="${jianZhangList }" var="news">
	                               <li>
									<div class="tit">
										<a class="plug_center" href="<%=basePath %>newsdetail.shtml?id=${news.id}&type=${news.type}">${news.subject}
										</a>
									</div>
									<div class="date">
										<c:choose >
	                                	<c:when test="${news.time eq '' } ">
	                                	 </c:when>
	                                	 <c:otherwise>
	                                   		${fn:substring(news.time,5 , 10)}
	                                    	
	                                    </c:otherwise>
	                                  </c:choose>
									</div>
								</li>
                                </c:forEach>
	                               
                                
							</ul>
						</div>
					</li>

				</ul>
			</div>
		</div>

		<div class="sec_5">
			
			<div class="tit">
				<div class="ca">
					<a href="javascript:void(0);">特殊类型招生</a>
				</div>
				<div class="en">
					<a href="javascript:void(0);">SPECIAL TYPE</a>
				</div>
			</div>
			<div class="con">
				<ul>
					<li class="in_1"><a href="javascript:void(0);"> <img
							src="<%=basePath %>/resources/static/front/upc/basic/images/index/img_1.jpg" />
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
							<a href="javascript:void(0);" class="btn_see_more">查看详情</a>
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
							<a href="javascript:void(0);" class="btn_see_more">查看详情</a>
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
							<a href="javascript:void(0);" class="btn_see_more">查看详情</a>
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
							<a href="javascript:void(0);" class="btn_see_more">查看详情</a>
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
							<a href="javascript:void(0);" class="btn_see_more">查看详情</a>
						</div>
					</li>
					
					<li class="in_2">
						<div>
							<div class="link_ico l5"></div>
							<div class="line"></div>
							<div class="txt" >港澳台招生</div>
						</div>
						<div class="cover noData">
							<div class="tit">港澳台招生</div>
							<div class="desc"></div>
							<a href="javascript:void(0);" class="btn_see_more" class="btn_see_more">查看详情</a>
						</div>
					</li>
					<li class="in_5"><img src="<%=basePath %>/resources/static/front/upc/basic/images/index/img_2.png" /> <a
						href="#"  class="btn_enroll">
					</a></li>
				</ul>
			</div>
		</div>

		<div class="sec_6">
			<div class="l_con">
				<div class="tit">
					<div class="ca">
						<a href="javascript:void(0);">院部专业</a>
					</div>
					<div class="en">
						<a href="javascript:void(0);">departments</a>
					</div>
				</div>
				<div class="fa_swiper">
					<div class="swiper-container">
						<ul class="swiper-wrapper">
						    <c:forEach items="${collegeList}" var="list">
								<li class="swiper-slide">
									<div class="item">
										<div class="img">
											<div style="background-image: url('<%=filepath %>${list.college_photo}');"></div>
										</div>
										<div class="txt">
											<div class="fa_tit">${list.college_name}</div>
										</div>
										<div class="arrow_up"></div>
										<div class="l_con">
											<div class="fa_tit">
												<a href="#" > </a>
											</div>
											<div class="fa_desc">
													${list.college_detail}
											</div>
										</div>
									</div>
								</li>
						    </c:forEach>
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
							<a href="f/list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm">图说胜院</a>
						</div>
						<div class="en">
							<a href="javascript:void(0);">THE DRAWINGS</a>
						</div>
						<a href="f/list-c1009811e234444598ee3573956c0519.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-c1009811e234444598ee3573956c0519.htm" class="see_more"> 更多 </a>
					</div>
					<div class="con">
						<div class="left">
						    
								<a href="#" tppabs="https://zhaosheng.upc.edu.cn/f/view-c1009811e234444598ee3573956c0519-bc1d4038aba5476ca539de0844dd6585.htm" class="img">
									<img data-src="<%=filepath %>${rPhotoList.photopath}" />
								</a>
							
						</div>
						<div class="right">
						    <c:forEach items="${lPhotoList}" var="list" varStatus="count">
								<a href="#" tppabs="#" class="img">
                                    <img data-src="<%=filepath %>${list.photopath}" />
                                </a>
							</c:forEach>
								
							
						</div>
					</div>
				</div>
		
				
				<div class="module_2">
					<div class="tit">
						<div class="ca">
							<a href="f/movielist-c119b36dbbe44fc2b461307428058ab5.htm" tppabs="https://zhaosheng.upc.edu.cn/f/movielist-c119b36dbbe44fc2b461307428058ab5.htm">视听胜院</a>
						</div>
						<div class="en">
							<a href="javascript:void(0);">Video Online</a>
						</div>
						<a href="<%=basePath %>getVideoList.shtml" class="see_more"> 更多 </a>
					</div>
					
					<div class="con">
							<a class="video" href="vodeoPlay.shtml?id=${video.id}"> <img
								data-src="<%=videopath %>${video.photopath}" />
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
						<a href="javascript:void(0);">
						 <img class="logo"
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
        $(function() {
            $(window).on('scroll', scrollFixed);
            scrollFixed();

            function scrollFixed() {
                var stop = $(window).scrollTop();
                if (stop > 115) {
                    $('.wrapper .header').addClass('header_fixed');
                    $('actGotop_right').addClass('header_fixed');
                } else {
                    $('.wrapper .header').removeClass('header_fixed');
                    $('actGotop_right').removeClass('header_fixed');
                }
            }
        });
    </script>
    <!-- 右边的浮动框 -->
    <div class="actGotop_right " id="actGotop_right">
        <p>友情提示</p>

        <span>微信公众号</span>
        <img src="<%=basePath %>/resources/static/newly/index.jpg" alt="" class="img1" id="im1">
        <span>QQ二维码</span>
        <img src="<%=basePath %>/resources/static/newly/index.jpg" alt="" class="img1" id="im2">
       <!--  <input type="button" name="" value="返回顶部" class="btn "> -->
    </div>
    <div class="actGotop_left" id="actGotop_left">
        <p>招生日历</p>
    </div>
    <div class="actGotop_left_child" id="actGotop_left_child">
        <a href="#" name="tzgg" onmouseover="f_on()" onmouseout="f_out()">
            <div class="title fl video_text">
                <h3>招生日历</h3>
                <!-- <a class="more" href="#">查看更多...</a> -->
               </div>
        </a>
        <div class="tzgg-con fl">
           <ul>
            <c:forEach items="${RLlist}" end="7" var="list">
               	 <li>
	               	 <a href="<%=basePath %>riLiDetail.shtml" target="_blank">
	               	 <span><i><fmt:formatDate pattern="MM-dd" value="${list.addtime }"/></i>
	               		${list.subject}
	               	 </span>
	               	</a>
               	 </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <!-- 左边的浮动框 -->
    <script>
        function my$(id) {
            return document.getElementById(id);
        }
        my$("actGotop_left").onmouseover = my$("actGotop_left_child").onmouseover = function() {
            console.log("aa");
            my$("actGotop_left_child").style.display = 'block';
        }
        my$("actGotop_left").onmouseout = my$("actGotop_left_child").onmouseout = function() {
            my$("actGotop_left_child").style.display = 'none';
        }

        $(function() {
            var winHeight = $(document).scrollTop();

            $(window).scroll(function() {
                var scrollY = $(document).scrollTop(); // 获取垂直滚动的距离，即滚动了多少
                console.log(scrollY);
                if (scrollY > 115) { //如果滚动距离大于550px则隐藏，否则删除隐藏类
                    $('.actGotop_right').addClass('showed');
                } else {
                    $('.actGotop_right').removeClass('showed');
                }

                if (scrollY > winHeight) { //如果没滚动到顶部，删除显示类，否则添加显示类
                    $('.actGotop_right').removeClass('hiddened');
                } else {
                    $('.actGotop_right').addClass('hiddened');
                }

            });
        });
    </script>

</body>
</html>