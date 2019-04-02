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
    <link rel="stylesheet" href="<%=basePath %>/resources/css/news_1.css" type="text/css">
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
				<li class="active">
					<a href="getzcgd.shtml">政策规定</a>
				</li>
				<li>
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
             <span >当前位置：<a href="home.jsp">招生信息网</a>&gt;&gt;&gt;<a href="policy_provisions.jsp">政策规定</a>&gt;&gt;&gt;<a href="registration_documents_for_the_promotion.jsp">2017年专升本报名文件</a></span>
        </div>
    <div id="body">
            <div class="body_top">
                <p class="p1" >【双击左键自动滚屏】</p>
            </div>
            <div class="body_body" style="height:400px">
                <h4>2017年专升本报名文件</h4>
                <span>2018-05-24&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点击量：3281</span>
                <p class="p1">附件【<a href="#">鲁招考16-140 2017年专升本报名文件.docx</a>】已下载13081次</p>
            </div>
            <div class="body_bottom">
                <a href="#"><p class="p1">上一篇: 中国石油大学胜利学院2018年艺术专业考试成绩查询  </p></a>
                <a href="#"><p class="p2">下一篇: 中国石油大学胜利学院2018年招生章程 </p></a>
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

</body>
</html>

