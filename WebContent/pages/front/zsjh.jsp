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
<title>招生计划--中国石油大学胜利学院招生信息网</title>
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



<meta name="decorator" content="common_default_basic"/>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/plugs/swiper.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/plugs/swiper.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/resources/static/front/upc/basic/css/plan_enrol.min.css" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/css/plan_enrol.min.css"/>
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/swiper.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/swiper.js"></script>
<script type="text/javascript" src="<%=basePath %>/resources/static/front/upc/basic/js/jquery.tablesorter.min.js" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/js/jquery.tablesorter.min.js"></script>
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
		<div class="banner">
			<img src="<%=basePath %>/resources/static/front/upc/basic/images/index/banner_img_list.jpg" tppabs="https://zhaosheng.upc.edu.cn/static/front/upc/basic/images/index/banner_img_list.jpg" />
		</div>
		<div class="sec_bg">
			<div class="sec_1">
				<div class="l_con">
					<div class="site_addr">
						<div class="tit">招生信息</div>
						<div class="addr">
							<div>
								<a href="<%=basePath %>/resources/f.htm" tppabs="https://zhaosheng.upc.edu.cn/f"><i class="icon_home"></i>首页</a> <span
									class="icon_line">-</span> <a class="active"
									href="zsjh.htm" tppabs="https://zhaosheng.upc.edu.cn/f/zsjh">招生计划</a> <span
									class="active icon_arrow_right">></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sec_2">
				<div class="l_con">
					<div class="left">
						<div class="b_subNav">
							<ul class="nav_a">
								<li>
                                    <div class="nav_tit active">
                                        <div>
                                            <a href="zsjh.htm" tppabs="https://zhaosheng.upc.edu.cn/f/zsjh">招生计划</a>
                                        </div>
                                    </div>
                                </li>
                               <!--  <li>
                                    <div class="nav_tit">
                                        <div>
                                            <a href="cjcx.htm" tppabs="https://zhaosheng.upc.edu.cn/f/cjcx">历年分数</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="nav_tit">
                                        <div>
                                            <a href="common/zsCj/forwardScore.htm" tppabs="https://zhaosheng.upc.edu.cn/f/common/zsCj/forwardScore">填报助手</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="nav_tit">
                                        <div>
                                            <a href="qa/question.htm" tppabs="https://zhaosheng.upc.edu.cn/f/qa/question">智能咨询</a>
                                        </div>
                                    </div>
                                </li> -->
                                <li>
                                    <div class="nav_tit">
                                        <div>
                                            <a href="http://218.59.189.229/cas/login?service=http%3A%2F%2F218.59.189.229%2Flogin" >成绩查询</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="nav_tit">
                                        <div>
                                            <a href="luQuCheck.shtml" >录取查询</a>
                                        </div>
                                    </div>
                                </li>
                               <!--  <li>
                                    <div class="nav_tit">
                                        <div>
                                            <a href="lqjc.htm" >录取进程</a>
                                        </div>
                                    </div>
                                </li> -->
							</ul>
						</div>
					</div>
					<div class="right">
						<div class="filter">
							<script type="text/javascript">
                               $(function(){
                                   $('.filter a').on('click',function(){
                                       if($(this).hasClass('active')){
                                           return;
                                       }else{
                                           $(this).parent().find('.active').removeClass('active');
                                           $(this).addClass('active');
                                       }
                                   });
                               })
                           </script>
							<dl>
								<dt>科类：</dt>
								<dd>
								   
								   
								    <a class="klmcclick active">全部</a>
								    <c:forEach items="${familiesList }" var="list">
										<a class="klmcclick">${list.families}</a>
									</c:forEach>
									
									
								</dd>
							</dl>
							<dl>
								<dt>层次：</dt>
								<dd>
								    <a class="zslxclick active">全部</a>
								   <c:forEach items="${cengCiList }" var="list">
										<a class="zslxclick">${list.ceng_ci}</a>
									</c:forEach>
								</dd>
							</dl>
							<dl>
								<dt>年份：</dt>
								<dd>
								<c:forEach items="${yearsList}" var="list" varStatus="num">
									<c:if test="${num.count == 1}">
										<a class="nfclick active">${list.years}</a>
									</c:if>
									<c:if test="${num.count != 1}">
										<a class="nfclick">${list.years}</a>
									</c:if>
								</c:forEach> 
								</dd>
							</dl>
							<dl>
								<dt>地区：</dt>
								<dd>
								<c:forEach items="${provinceList}" varStatus="num" var="list">
										<c:if test="${num.count == 1}">
											<a class="ssmcclick active">${list.provice}</a>
										</c:if>
										<c:if test="${num.count != 1}">
											<a class="ssmcclick">${list.provice}</a>
										</c:if>
								</c:forEach>
								</dd>
							</dl>
						</div>
						<div class="rslt">
						    <div class="table_header_fixed" style="display: none;">
                               <div class="l_con">
                                   <div class="left"></div>
                                   <div class="right">
                                   </div>
                               </div>
                           </div>
                           <script type="text/javascript">
                               $(function(){
                                   $(window).on('scroll',scrollFixed);
                                   function scrollFixed(){
                                       var top = $('.table_header').offset().top;
                                       var stop = $(window).scrollTop();
                                       if(stop>top){
                                           if( $('.table_header_fixed .table_1').length === 0 ){
                                               $('.table_header_fixed')
                                                   .show()
                                                   .find('.right')
                                                   .append($('.table_header .table_1'));
                                           }
                                       }else{
                                           if( $('.table_header_fixed .table_1').length > 0 ){
                                               $('.table_header').append( $('.table_header_fixed').hide().find('.table_1') );
                                           }
                                       }

                                   }
                               })
                           </script>
                           <div class="table_header">
                               <table class="table_1" style="margin-top: 0px;">
                                <colgroup>
                                    <col width="77">
                                    <col width="50">
                                    <col width="280">
                                    <col width="120">
                                    <%-- <col width="77"> --%>
                                    <col width="130">
                                    <col width="112">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>年份</th>
                                        <th>省市</th>
                                        <th>专业</th>
                                        <th>科类</th>
                                      <!--   <th>类型</th> -->
                                        <th>层次</th>
                                        <th>计划数</th>
                                        
                                    </tr>
                                </thead>
                            </table>
                           </div>
							<table class="table_1" id="zstbl" style="margin-top:0px;">
							    <colgroup>
                                    <col width="77">
                                    <col width="50">
                                    <col width="280">
                                    <col width="120">
                                 <%--    <col width="77"> --%>
                                    <col width="130">
                                    <col width="112">
                                </colgroup>
								<tbody></tbody>
							</table>
							<div class="table_no_data" id="nodata">没有找到符合条件的数据</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function() {
		
		//
		chushi();
		
		//
		$('.nfclick,.klmcclick,.ssmcclick,.zslxclick').click(function() {
			chushi();
		});
	});
		 //chushi();	
		function chushi(){
			
			var nf = $.trim($("a.nfclick.active").text());
			var klmc = $.trim($("a.klmcclick.active").text());
			var ssmc = $.trim($("a.ssmcclick.active").text());
			var zslx = $.trim($("a.zslxclick.active").text());
			
			var loading=$.loading($('.rslt'));
			$.ajax({
			   type: "POST",
			   url: "<%=basePath %>/getPlanInfo.shtml",
			   data: {"province":ssmc,"families":klmc,"years":nf,"cengCi":zslx},
			   dataType:"json",
			   success: function(jsondata){
			  		$("#zstbl tbody").empty();
			  		$("#nodata").hide();
					var zsjhList = jsondata;
					var str = "";
					if(zsjhList.length > 0){
						for(var i=0;i<zsjhList.length;i++ ){
								str+="<tr>"+
								"<td>"+zsjhList[i].years+"</td>"+
								"<td>"+zsjhList[i].provice+"</td>";
								if(typeof(zsjhList[i].major)==="undefined"){
	                                str +="<td></td>";
	                            }else {
	                                str +="<td>" + zsjhList[i].major +"</td>";
	                            };
								str += "<td>"+zsjhList[i].families+"</td>";
								/* if(typeof(zsjhList[i].zylx)==="undefined"){
                                    str +="<td></td>";
                                }else {
                                    str +="<td>" + zsjhList[i].zylx +"</td>";
                                }; */
								
								if(typeof(zsjhList[i].ceng_ci)==="undefined"){
                                    str +="<td></td>";
                                }else {
                                    str +="<td>" + zsjhList[i].ceng_ci +"</td>";
                                };
                                if(typeof(zsjhList[i].provice_num)==="undefined"){
                                    str +="<td></td>";
                                }else {
                                    str +="<td>" + zsjhList[i].provice_num +"</td>";
                                };
                                /* if(typeof(zsjhList[i].zyxf)==="undefined"){
                                    str +="<td></td>";
                                }else {
                                    str +="<td>" + zsjhList[i].zyxf +"</td>";
                                };
                                if(typeof(zsjhList[i].zyzsf)==="undefined"){
                                    str +="<td></td>";
                                }else {
                                    str +="<td>" + zsjhList[i].zyzsf +"</td>";
                                }; */
								str+="</tr>";
							
							
				
				/* 			if(typeof(zsjhList[i].zsjhs)==="undefined" || zsjhList[i].zsjhs == '0')
						    {
                             str +="<td>-</td>";
						    }
							else {
								str +="<td>" + zsjhList[i].zsjhs +"</td>";
							} */
							
							/*"<td>"+zsjhList[i].zyxf+"</td>"+
							"<td>"+zsjhList[i].zyzsf+"</td>"+
							"<td>"+zsjhList[i].zylx+"</td>"+*/
							
						}									
						$("tbody").append(str);
					}else{
						$("#nodata").show();
					}
					$(".sort-table").trigger("update");
					loading.remove();
			   }
			});
		} 
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