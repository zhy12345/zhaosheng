<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!doctype html>
<html lang="en">
<head>
<title>院系专业--中国石油大学（华东）本科招生网</title>
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
<meta name="decorator" content="common_default_basic" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/college_list.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/college_list.min.css"/>
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
						    <li><a  href="<%=basePath %>/resources/f.htm" tppabs="https://zhaosheng.upc.edu.cn/">首页<div class="dot"></div>
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
		
    <form id="searchform" name="searchform" class="form-horizontal" action="list-ec0f7f91362f47128413d1ef01cc310a.htm-pageNo=1&CSRFToken=9f3e4657-a2c1-4278-8c0b-134fd15abc36.htm" tppabs="https://zhaosheng.upc.edu.cn/f/list-ec0f7f91362f47128413d1ef01cc310a.htm?pageNo=1&CSRFToken=9f3e4657-a2c1-4278-8c0b-134fd15abc36" method="post">
        <input id="pageNo" name="pageNo" type="hidden" value="1" />
    <div>
<input type="hidden" name="CSRFToken" value="9f3e4657-a2c1-4278-8c0b-134fd15abc36" />
</div></form>
    <div class="body">
            <!--banner-->
            <div class="banner">
    <img src="<%=basePath %>/resources/static/front/upc/basic/images/index/banner_college_list.jpg" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/banner_college_list.jpg"/>
</div>
            <div class="sec_1">
                <div class="l_con">
                    <div class="site_addr">
                        <div class="tit">专业介绍</div>
                        <div class="addr">
                            <div>
                                <a href="<%=basePath %>/resources/f.htm" tppabs="https://zhaosheng.upc.edu.cn/f"><i class="icon_home"></i>首页</a>
                                <span class="active icon_line">-</span>
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
                                        <th>院系</th>
                                        <th>专业</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr class="odd">
                                        <td>
                                            <a href="http://geori.upc.edu.cn/" class="college">
                                                地球科学与技术学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-f0e1773faa61498cbe667e04bca9b5c0.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-f0e1773faa61498cbe667e04bca9b5c0.htm" class="major">
	                                               资源勘查工程专业
	                                            </a>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-914bbc4775e94b5599586f15b5b37da7.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-914bbc4775e94b5599586f15b5b37da7.htm" class="major">
	                                               勘查技术与工程专业（物探方向）
	                                            </a>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-4a8db06761554c3d98745d524b663741.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-4a8db06761554c3d98745d524b663741.htm" class="major">
	                                               勘查技术与工程专业（测井方向）
	                                            </a>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-b70781f823964d77ba993e62738d9d08.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-b70781f823964d77ba993e62738d9d08.htm" class="major">
	                                               测绘工程专业
	                                            </a>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-82097b8d6e8d45619ce0564c11433577.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-82097b8d6e8d45619ce0564c11433577.htm" class="major">
	                                               地理信息科学专业
	                                            </a>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-11c041194ddc4058aa8b99dc264eef0e.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-11c041194ddc4058aa8b99dc264eef0e.htm" class="major">
	                                               地质学专业
	                                            </a>
                                            
	                                            <a href="view-ec0f7f91362f47128413d1ef01cc310a-189043d75cc44ea1a74b1c0365896b76.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-ec0f7f91362f47128413d1ef01cc310a-189043d75cc44ea1a74b1c0365896b76.htm" class="major">
	                                               地球物理学专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="even">
                                        <td>
                                            <a href="http://pe.upc.edu.cn/" class="college">
                                                石油工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-d04a56ec10024e33ac0027a9e6f9b1c0-31f2dfc72fad4239939a701a1d185f1c.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-d04a56ec10024e33ac0027a9e6f9b1c0-31f2dfc72fad4239939a701a1d185f1c.htm" class="major">
	                                               石油工程专业
	                                            </a>
                                            
	                                            <a href="view-d04a56ec10024e33ac0027a9e6f9b1c0-a17febea90a54693a0a2e49b9b593f07.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-d04a56ec10024e33ac0027a9e6f9b1c0-a17febea90a54693a0a2e49b9b593f07.htm" class="major">
	                                               船舶与海洋工程专业
	                                            </a>
                                            
	                                            <a href="view-d04a56ec10024e33ac0027a9e6f9b1c0-567da0ea997c448ea0b2e6d12d8a2fef.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-d04a56ec10024e33ac0027a9e6f9b1c0-567da0ea997c448ea0b2e6d12d8a2fef.htm" class="major">
	                                               海洋油气工程专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="odd">
                                        <td>
                                            <a href="http://cce.upc.edu.cn/" class="college">
                                                化学工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-d25067221edd48789d87750f81771227.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-d25067221edd48789d87750f81771227.htm" class="major">
	                                               化学工程与工艺专业
	                                            </a>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-a3bb23821cc4488bb881578e31f3ccd0.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-a3bb23821cc4488bb881578e31f3ccd0.htm" class="major">
	                                               过程装备与控制工程专业
	                                            </a>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-c7fe3d89f18f40e5a06e0217cc676569.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-c7fe3d89f18f40e5a06e0217cc676569.htm" class="major">
	                                               应用化学专业
	                                            </a>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-4493dc88e1b84dedb16cc968c4b06591.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-4493dc88e1b84dedb16cc968c4b06591.htm" class="major">
	                                               环境工程专业
	                                            </a>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-4ce92f1e42644faab3897f1941b1bb6b.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-4ce92f1e42644faab3897f1941b1bb6b.htm" class="major">
	                                               环保设备工程专业
	                                            </a>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-d5adddc98f5e48d486b72e221f177c6b.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-d5adddc98f5e48d486b72e221f177c6b.htm" class="major">
	                                               能源化学工程专业
	                                            </a>
                                            
	                                            <a href="view-1d2cfd3208f54923b28bb7e9520d6fea-7886646ca3734b21ae393dcb6b59f9ff.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1d2cfd3208f54923b28bb7e9520d6fea-7886646ca3734b21ae393dcb6b59f9ff.htm" class="major">
	                                               化工安全工程专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="even">
                                        <td>
                                            <a href="http://medwww.upc.edu.cn/" class="college">
                                                机电工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-17db7ff787bf48bba86a735b8ec747f9-4aeef5fd158942909dc040b4f9f05065.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-17db7ff787bf48bba86a735b8ec747f9-4aeef5fd158942909dc040b4f9f05065.htm" class="major">
	                                               机械设计制造及其自动化专业
	                                            </a>
                                            
	                                            <a href="view-17db7ff787bf48bba86a735b8ec747f9-256206d1b7154a4ab9315723da2e8e03.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-17db7ff787bf48bba86a735b8ec747f9-256206d1b7154a4ab9315723da2e8e03.htm" class="major">
	                                               机械工程专业
	                                            </a>
                                            
	                                            <a href="view-17db7ff787bf48bba86a735b8ec747f9-500e9424219d4a908d042925bfcea8b1.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-17db7ff787bf48bba86a735b8ec747f9-500e9424219d4a908d042925bfcea8b1.htm" class="major">
	                                               安全工程专业
	                                            </a>
                                            
	                                            <a href="view-17db7ff787bf48bba86a735b8ec747f9-52cc776b484f4874811d7a1ebff8c059.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-17db7ff787bf48bba86a735b8ec747f9-52cc776b484f4874811d7a1ebff8c059.htm" class="major">
	                                               工业设计专业
	                                            </a>
                                            
	                                            <a href="view-17db7ff787bf48bba86a735b8ec747f9-3b5c2754f15c484590cd222367299c40.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-17db7ff787bf48bba86a735b8ec747f9-3b5c2754f15c484590cd222367299c40.htm" class="major">
	                                               车辆工程专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="odd">
                                        <td>
                                            <a href="http://mse.upc.edu.cn/" class="college">
                                                材料科学与工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-f71f6bcc25594333a2ccdc298d98da7c-00c1ee2e6ab14f93a6637671265e6e9a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-f71f6bcc25594333a2ccdc298d98da7c-00c1ee2e6ab14f93a6637671265e6e9a.htm" class="major">
	                                               材料成型及控制工程专业
	                                            </a>
                                            
	                                            <a href="view-f71f6bcc25594333a2ccdc298d98da7c-e8fbe9ed376940a4adc837bf4d1df5f7.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-f71f6bcc25594333a2ccdc298d98da7c-e8fbe9ed376940a4adc837bf4d1df5f7.htm" class="major">
	                                               材料科学与工程专业
	                                            </a>
                                            
	                                            <a href="view-f71f6bcc25594333a2ccdc298d98da7c-337755c578e8438ab6567ea4c806b07d.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-f71f6bcc25594333a2ccdc298d98da7c-337755c578e8438ab6567ea4c806b07d.htm" class="major">
	                                               材料物理专业
	                                            </a>
                                            
	                                            <a href="view-f71f6bcc25594333a2ccdc298d98da7c-e4d415d9f57b45188a8816a3d4b68762.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-f71f6bcc25594333a2ccdc298d98da7c-e4d415d9f57b45188a8816a3d4b68762.htm" class="major">
	                                               材料化学专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="even">
                                        <td>
                                            <a href="http://auto.upc.edu.cn/" class="college">
                                                信息与控制工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-33fabd749fc74c7fb4bd234233361edd-d4fdf49dfbe74caeb2cff70c03ace943.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-33fabd749fc74c7fb4bd234233361edd-d4fdf49dfbe74caeb2cff70c03ace943.htm" class="major">
	                                               电气工程及其自动化专业
	                                            </a>
                                            
	                                            <a href="view-33fabd749fc74c7fb4bd234233361edd-7254251b66fb4ba8bf2bc91f304f950f.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-33fabd749fc74c7fb4bd234233361edd-7254251b66fb4ba8bf2bc91f304f950f.htm" class="major">
	                                               自动化专业
	                                            </a>
                                            
	                                            <a href="view-33fabd749fc74c7fb4bd234233361edd-58d5477889564179ae26260799e33512.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-33fabd749fc74c7fb4bd234233361edd-58d5477889564179ae26260799e33512.htm" class="major">
	                                               电子信息工程专业
	                                            </a>
                                            
	                                            <a href="view-33fabd749fc74c7fb4bd234233361edd-8e2e279955954439999721008bd3ad4b.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-33fabd749fc74c7fb4bd234233361edd-8e2e279955954439999721008bd3ad4b.htm" class="major">
	                                               测控技术与仪器专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="odd">
                                        <td>
                                            <a href="http://cj.upc.edu.cn/" class="college">
                                                储运与建筑工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-a68ce1736a694480a982ee2cb2d446fc-ee3805d8ce354f108bd9c15757542673.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a68ce1736a694480a982ee2cb2d446fc-ee3805d8ce354f108bd9c15757542673.htm" class="major">
	                                               油气储运工程专业
	                                            </a>
                                            
	                                            <a href="view-a68ce1736a694480a982ee2cb2d446fc-37a9bca82e8c48afabee2d10f032680d.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a68ce1736a694480a982ee2cb2d446fc-37a9bca82e8c48afabee2d10f032680d.htm" class="major">
	                                               能源与动力工程专业
	                                            </a>
                                            
	                                            <a href="view-a68ce1736a694480a982ee2cb2d446fc-59b5ada518444519ae862d9b225c0b97.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a68ce1736a694480a982ee2cb2d446fc-59b5ada518444519ae862d9b225c0b97.htm" class="major">
	                                               土木工程专业
	                                            </a>
                                            
	                                            <a href="view-a68ce1736a694480a982ee2cb2d446fc-609690b98d0840278f1805e324cf4570.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a68ce1736a694480a982ee2cb2d446fc-609690b98d0840278f1805e324cf4570.htm" class="major">
	                                               工程力学专业
	                                            </a>
                                            
	                                            <a href="view-a68ce1736a694480a982ee2cb2d446fc-81db149345f44c13b265381e060d3adc.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a68ce1736a694480a982ee2cb2d446fc-81db149345f44c13b265381e060d3adc.htm" class="major">
	                                               建筑环境与能源应用工程专业
	                                            </a>
                                            
	                                            <a href="view-a68ce1736a694480a982ee2cb2d446fc-a94a79293e2b434eb535923664282f49.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a68ce1736a694480a982ee2cb2d446fc-a94a79293e2b434eb535923664282f49.htm" class="major">
	                                               建筑学专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="even">
                                        <td>
                                            <a href="http://computer.upc.edu.cn/" class="college">
                                                计算机与通信工程学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-cfb3f8b048fa4b179b525811e88a4f08-01b5c07386914afa92dcefc36f272dd1.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-cfb3f8b048fa4b179b525811e88a4f08-01b5c07386914afa92dcefc36f272dd1.htm" class="major">
	                                               计算机科学与技术专业
	                                            </a>
                                            
	                                            <a href="view-cfb3f8b048fa4b179b525811e88a4f08-ad4698b98f084c8f824dacc2a0fd4a31.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-cfb3f8b048fa4b179b525811e88a4f08-ad4698b98f084c8f824dacc2a0fd4a31.htm" class="major">
	                                               软件工程专业
	                                            </a>
                                            
	                                            <a href="view-cfb3f8b048fa4b179b525811e88a4f08-790aa2228a0041309374cfa486657f06.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-cfb3f8b048fa4b179b525811e88a4f08-790aa2228a0041309374cfa486657f06.htm" class="major">
	                                               通信工程专业
	                                            </a>
                                            
	                                            <a href="view-cfb3f8b048fa4b179b525811e88a4f08-f94edbfd41ee48cb993140edcfac6534.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-cfb3f8b048fa4b179b525811e88a4f08-f94edbfd41ee48cb993140edcfac6534.htm" class="major">
	                                               物联网工程专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="odd">
                                        <td>
                                            <a href="http://sem.upc.edu.cn/" class="college">
                                                经济管理学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-0e4e09a2392941cfaa498fd2a09ae7f4-036e01c6d10042979c1ce5e03f32260a.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-0e4e09a2392941cfaa498fd2a09ae7f4-036e01c6d10042979c1ce5e03f32260a.htm" class="major">
	                                               工程管理专业
	                                            </a>
                                            
	                                            <a href="view-0e4e09a2392941cfaa498fd2a09ae7f4-c8e34eb2251d484b822eff760dc48b00.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-0e4e09a2392941cfaa498fd2a09ae7f4-c8e34eb2251d484b822eff760dc48b00.htm" class="major">
	                                               信息管理与信息系统专业
	                                            </a>
                                            
	                                            <a href="view-0e4e09a2392941cfaa498fd2a09ae7f4-3a81c457cc9749a887737a597c11b179.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-0e4e09a2392941cfaa498fd2a09ae7f4-3a81c457cc9749a887737a597c11b179.htm" class="major">
	                                               会计学专业
	                                            </a>
                                            
	                                            <a href="view-0e4e09a2392941cfaa498fd2a09ae7f4-f0f7291b615b4ce19335c4a23331449d.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-0e4e09a2392941cfaa498fd2a09ae7f4-f0f7291b615b4ce19335c4a23331449d.htm" class="major">
	                                               市场营销专业
	                                            </a>
                                            
	                                            <a href="view-0e4e09a2392941cfaa498fd2a09ae7f4-ea282d5f65e3450da051c317b3867660.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-0e4e09a2392941cfaa498fd2a09ae7f4-ea282d5f65e3450da051c317b3867660.htm" class="major">
	                                               经济学专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="even">
                                        <td>
                                            <a href="http://sci.upc.edu.cn/" class="college">
                                                理学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-a1a437d0c84941ec991238df4fe3087a-fe85cefe2b6e4c47b46ca14bd5668af2.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a1a437d0c84941ec991238df4fe3087a-fe85cefe2b6e4c47b46ca14bd5668af2.htm" class="major">
	                                               信息与计算科学专业
	                                            </a>
                                            
	                                            <a href="view-a1a437d0c84941ec991238df4fe3087a-72efba20397f46b09caeb52600cb04e6.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a1a437d0c84941ec991238df4fe3087a-72efba20397f46b09caeb52600cb04e6.htm" class="major">
	                                               数学与应用数学专业
	                                            </a>
                                            
	                                            <a href="view-a1a437d0c84941ec991238df4fe3087a-996b00e629464e5aaa75f8a8b8c2a0ab.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a1a437d0c84941ec991238df4fe3087a-996b00e629464e5aaa75f8a8b8c2a0ab.htm" class="major">
	                                               应用物理学专业
	                                            </a>
                                            
	                                            <a href="view-a1a437d0c84941ec991238df4fe3087a-7d273e23d2b848ddbd4a2a94e58a83ec.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a1a437d0c84941ec991238df4fe3087a-7d273e23d2b848ddbd4a2a94e58a83ec.htm" class="major">
	                                               光电信息科学与工程专业
	                                            </a>
                                            
	                                            <a href="view-a1a437d0c84941ec991238df4fe3087a-cda6453cc1514aaa868bef426c85f431.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-a1a437d0c84941ec991238df4fe3087a-cda6453cc1514aaa868bef426c85f431.htm" class="major">
	                                               化学专业
	                                            </a>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="odd">
                                        <td>
                                            <a href="http://coa.upc.edu.cn/" class="college">
                                                文学院
                                            </a>
                                        </td>
                                        <td>
                                            
	                                            <a href="view-1ae3a41239cd4f5594cd1c66342da578-4c5ae12dd5444b10aeb852e84a16c389.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1ae3a41239cd4f5594cd1c66342da578-4c5ae12dd5444b10aeb852e84a16c389.htm" class="major">
	                                               英语专业
	                                            </a>
                                            
	                                            <a href="view-1ae3a41239cd4f5594cd1c66342da578-d06b96e14c8c408ab9f0ed2cae02ff2b.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1ae3a41239cd4f5594cd1c66342da578-d06b96e14c8c408ab9f0ed2cae02ff2b.htm" class="major">
	                                               俄语专业
	                                            </a>
                                            
	                                            <a href="view-1ae3a41239cd4f5594cd1c66342da578-259039170c1347b3aa337abebe93ceac.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1ae3a41239cd4f5594cd1c66342da578-259039170c1347b3aa337abebe93ceac.htm" class="major">
	                                               法学专业
	                                            </a>
                                            
	                                            <a href="view-1ae3a41239cd4f5594cd1c66342da578-fd023c5ea61e4ef6b545df47723eab48.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1ae3a41239cd4f5594cd1c66342da578-fd023c5ea61e4ef6b545df47723eab48.htm" class="major">
	                                               汉语言文学专业
	                                            </a>
                                            
	                                            <a href="view-1ae3a41239cd4f5594cd1c66342da578-fb1f78193c8f4347853ec4de3d2eb165.htm" tppabs="https://zhaosheng.upc.edu.cn/f/view-1ae3a41239cd4f5594cd1c66342da578-fb1f78193c8f4347853ec4de3d2eb165.htm" class="major">
	                                               音乐学专业
	                                            </a>
                                            
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