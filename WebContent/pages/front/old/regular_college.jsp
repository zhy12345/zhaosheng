<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath %>">
    <title>招生信息网</title>
    <link rel="stylesheet" href="<%=basePath %>/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/bootstrap.css" type="text/css">
    <script src="<%=basePath %>/resources/js/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=basePath %>/resources/css/common.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/news.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/index.css">
    <!-- <script src="js/jquery-1.12.4.js"></script> -->
    <style>
        .body_right img{
        display: block;
        margin:5px auto;
        width:255px;
        height: 190px;
     }
    </style>
</head>
<body>
    <div class="top">
        <div class="xiaobiao"></div>
        <div id="header" >
           <ul>
				<li >
					<a href="main.shtml">主页</a>
				</li>
				<li>
					<a href="getallnews.shtml">最新动态</a>
				</li>
				<li class="active">
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
        </div>
    </div>
     <div style="margin-top: 70px;"></div>
        <div class="span_nav">
             <span >当前位置：<a href="main.shtml">招生信息网</a>&gt;&gt;&gt;<a href="major.jsp">专业介绍</a>&gt;&gt;&gt;<a href="regular_college.jsp">本科专业</a></span>
        </div>
    <div id="body">
            <div class="body_left">
                <h3>本科专业</h3>
                <ul id="adminTbody">
                <c:forEach items="${bklist }" var= "bk">
                   <a href="majordetail.shtml?id=${bk.id}&majortype=${bk.majortype}"><li> ${bk.name} <span>${bk.addtime } </span></li></a>
                 </c:forEach>
                </ul>
                <form action="bkmajor.shtml" method="post" id="queryform" class="form-inline">
              		  <input type="hidden" name="page" id="page"> <input type="hidden" name="limit" id="limit">
                </form>
				<nav style="float: left">
	                <ul  class="pagination">
		                <li><a href="javascript:void(0)">首页</a></li>
						<li><a href="javascript:void(0)">上一页</a></li>
						<li><a href="javascript:void(0)">${page.page}/${page.totalpages}</a></li>
						<li><a href="javascript:void(0)">下一页</a></li>
						<li><a href="javascript:void(0)">尾页</a></li>
	                </ul>
                </nav>

            </div>
        <div class="body_right" style="width: 285px">
                <img alt="" src="<%=basePath %>/resources/images/创造太阳.png" >
                <h4>欢迎报考中国石油大学胜利学院</h4>
                <p>扫码关注公众号</p>
                 <img src="<%=basePath %>/resources/images/index.jpg" alt="" id="im" />
                <p>招生热线:0546-7396601 7396602<br/> &nbsp;&nbsp;&nbsp;7396603 7396191</p>
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
    <script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		var nowpage = parseInt("${page.page}");
		var totalpage = parseInt("${page.totalpages}");
		$(function() {
			//为分页条添加事件
			$(".pagination li a").click(function() {
				var idx = $(this).parent().index();
				var count = $(".pagination li").length;
				if (idx == 0) {
					gotopage(1, 10);
				} else if (idx == 1) {
					gotopage(nowpage - 1, 10);
				} else if (idx == count - 1) {//末页
					gotopage(totalpage, 10);
				} else if (idx == count - 2) {//下一页
					gotopage(nowpage + 1, 10);
				} else {
					var p = parseInt($(this).text());
					gotopage(p, 10);
				}
			});

			//给分页条添加校验
			if (nowpage == 1) {
				$(".pagination li:first").addClass("disabled");
				$(".pagination li:eq(1)").addClass("disabled");
			}
			var xiaye = $(".pagination li").length - 2;
			if (nowpage == totalpage) {
				$(".pagination li:last").addClass("disabled");
				$(".pagination li:eq(" + xiaye + ")").addClass("disabled");
			}
			//给当前页面 的页码条添加效果
			$(".pagination li:contains(" + nowpage + ")").addClass("active");
			//提交表单函数
			function gotopage(page, limit) {

				if (!isNaN(page)) {
					$("#queryform #page").val(page);
				}
				if (!isNaN(limit)) {
					$("#queryform #limit").val(limit);
				}
				$("#queryform").submit();
			}
			 $("#header>ul>li").click(function(){
                 $(this).addClass("active").siblings().removeClass("active");
			 });
			 $("#btn").click(function(){
                 if($("#btn").text()=="展开"){
                    $("#header").css("display","block");
                    $("#btn").text("收起");
                 }
               else{
                     $("#header").css("display","none");
                    $("#btn").text("展开");
                 }

          });
		});
	</script>

</body>
</html>