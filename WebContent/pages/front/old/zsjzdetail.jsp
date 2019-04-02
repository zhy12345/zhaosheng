<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    <link rel="stylesheet" href="<%=basePath %>/resources/css/index.css">
<style type="text/css">

    *{
        margin:0;
        padding:0px;
        }
        .span_nav{
             width: 960px;
             margin:10px auto 0px;
             opacity: 0.8;
             margin:10px auto;
        }
         #body{
         background:white;
            width: 960px;
            // height:400px;
            padding:0px;
            padding-bottom: 60px;
            margin:0px auto 10px;
            border:solid 1px #ccc;
            border-radius:5px;
            clear:both;
         }
         #body{
        position: relative;
    }
    #body .body_top{
        width: 960px;
        height: 30px;
        background-color:#E0FFFF;
    }
    #body .body_top .p1{
        width: 200px;
        height: 1.875rem/* 30px */;
        float:right;
        margin-top:5px;
    }
    #body .body_body h4{
        color:  #000080;
        text-align:center;
        font-size:22px;
        line-height:30px;
    }
   .timeandnum{
        font-size:12px;
        display: block;
        height:20px;
        width: 300px;
        margin:0 auto;
        /* border:solid 1px red; */
        opacity: 0.6;
    }
    #body .body_body p{
        line-height:20px;
        font-family:"宋体";
        font-size:17px;
        padding:2px;
        margin:0px;
        /* border:solid 1px red; */
        text-indent:2em;
        /* opacity:0.9; */
    }
    #body .body_bottom{
        width: 960px;
        height:40px;
        position: absolute;
        bottom:0px;
        left: 0px;
        /* border:solid 1px red; */
    }
     #body .body_bottom .p1{
         width: 300px;
        height:30px;
        position: absolute;
        bottom:0px;
        left: 10px;
        /* border:solid 1px red; */
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    #body .body_bottom .p2{
         width: 300px;
        height:30px;
        position: absolute;
        bottom:0px;
        left: 631px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
  </style>
</head>
<script language=JavaScript>
    //双击滚屏代码
    var currentpos,timer;

    function initialize()
    {
    timer=setInterval("scrollwindow()",50);
    }

    function sc(){
    clearInterval(timer);
    }

    function scrollwindow()
    {
    currentpos=document.body.scrollTop;
    window.scroll(0,++currentpos);
    if (currentpos != document.body.scrollTop)
        sc();
    }
    document.onmousedown=sc
    document.ondblclick=initialize
</script>

<body>
       <div class="top">
        <div class="xiaobiao"></div>
        <div id="header" >
           <ul>
				<li class="active">
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
             <span>当前位置：<a href="home.jsp">招生信息网</a>&gt;&gt;&gt;<a href="news.jsp">招生简章</a>&gt;&gt;&gt;<a href="news_1.jsp">${news2.subject}</a></span>
        </div>
        <div id="body">
            <div class="body_top">
                <p class="p1" >【双击左键自动滚屏】</p>
            </div>
            <div class="body_body" >
                <h4>${news2.subject}</h4>
                <span class="timeandnum">发布日期：${news2.time }&nbsp;&nbsp;&nbsp;作者：${news2.author}&nbsp;&nbsp;&nbsp;点击量：${news2.clicknum }</span>
               		<div>${news2.content }</div>
            </div>
            <div class="body_bottom">
            <c:if test="${not empty news3.type }">
                <a href="newsdetail.shtml?id=${news3.id }&type=${news3.type}"><p  class="p1">上一篇:${news3.subject }</p></a>
 			</c:if>  
 			
 			 <c:if test="${not empty news1.type }">
                <a href="newsdetail.shtml?id=${news1.id }&type=${news1.type}"><p  class="p2" >下一篇:${news1.subject }</p></a>
            </c:if> 
           	<c:if test="${empty news1.type }">
                <a href="#"><p  class="p2" style="width: 100px;left:88%;" >回到首页</p></a>
            </c:if>  
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
