<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="<%=basePath %>/resources/css/views.css" type="text/css">

</head>
<body>
    <div class="top">
            <div class="logo1"><h1>logo</h1></div>
            <div class="xiaobiao"></div>
             <div class="logo2"><h1>logo</h1></div>
        </div>
        <div class="nav"><a href="javascript:;" id="btn">收起</a>
        </div>
         <div id="header" >
            <ul>
               <li >
					<a href="main.shtml">主页</a>
				</li>
				<li>
					<a href="getallnews.shtml">最新动态</a>
				</li>
				<li class="r_major">
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
				<li class="active">
					<a href="<%=basePath %>/pages/front/views.jsp">校园风光</a>
				</li>
				<li>
					<a href="http://www.slcupc.edu.cn/">学校主页</a>
				</li>
            </ul>
            <script>
             $(function () {/*两个排他事件，一一对应*/
                $("#header>ul>li").click(function(){
                  $(this).addClass("active").siblings().removeClass("active");
             });
            </script>
        </div>
        <script >
             $("#btn").click(function(){
                 //alert("sssssssss");
                 if($("#btn").text()=="展开"){
                    //alert("sssssssss");
                    $("#header").css("display","block");
                    $("#btn").text("收起");
                 }
                 else{
                     $("#header").css("display","none");
                    $("#btn").text("展开");
                 }

             });
        </script>
    <div class="span_nav">
             <span >当前位置：<a href="home.jsp">招生信息网</a>&gt;&gt;&gt;<a href="views.jsp">校园风光</a></span>
        </div>
    <div id="body">
        <div class="body_1">
            <img src="<%=basePath %>/resources/images/fg.jpg" alt="">
            <p>师专校区</p>
        </div>
        <div class= "body_1 ">
            <img src="<%=basePath %>/resources/images/fg1.jpg" alt="">
            <p>石大校区</p>
        </div>
        <div class=" body_1 ">
            <img src="<%=basePath %>/resources/images/fg2.jpg" alt="">
            <p>石大校区</p>
        </div>
        <div class=" body_1 ">
            <img src="images/fg3.jpg" alt="">
            <p>石大校区</p>
        </div>
        <div class=" body_1 ">
            <img src="images/fg4.jpg" alt="">
            <p>石大校区</p>
        </div>
        <div class=" body_1 ">
            <img src="images/fg5.jpg" alt="">
            <p>石大校区</p>
        </div>
        <script>
        //高亮显示
            $(function(){
              $("#body .body_1").mouseenter(function(){
                $(this).css("opacity","1").siblings().css("opacity","0.5");
              });
              $("#body").mouseleave(function() {
                $(this).find(".body_1").css("opacity","1");
              });
            });
        </script>
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

</body>
</html>
