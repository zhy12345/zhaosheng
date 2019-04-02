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
        	 <span>当前位置：<a href="home.jsp">招生信息网</a>&gt;&gt;&gt;<a href="major.jsp">专业介绍</a>&gt;&gt;&gt;<a href="upgraded_to_this_major.jsp">${major2.majortype }专业</a>&gt;&gt;&gt;<a href="chemical_engineering_and_technology.jsp">${major2.name }</a></span>
        </div>
        <div id="body">
            <div class="body_top">
                <p class="p1" >【双击左键自动滚屏】</p>
            </div>
            <div class="body_body" >
                <h4> ${major2.name } </h4>
                <span class="timeandnum">发布日期：${major2.addtime } &nbsp;&nbsp;&nbsp;作者：${major2.author}&nbsp;&nbsp;&nbsp;点击量：${major2.clicknum }</span>
                <p>${major2.content }</p>
            </div>
            <div class="body_bottom">
	            <c:if test="${not  empty major1.majortype}">
	                <a href="majordetail.shtml?id=${major1.id }&majortype=${major1.majortype}"><p class="p1">上一篇: ${major1.name } </p></a>
	            </c:if> 
	             <c:if test="${not  empty major3.majortype}">
	                <a href="majordetail.shtml?id=${major3.id }&majortype=${major3.majortype}"><p class="p2">下一篇: ${major3.name }</p></a>
	            </c:if>
	            <c:if test="${empty major3.majortype}">
	            	<a href="#"><p class="p2" style="width: 100px;left:88%;">回到首页 ${major3.name }</p></a>
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
            <script>
                var pageSize=0;//每页显示行数
                var currentPage_=1;//当前页全局变量，用于跳转时判断是否在相同页，在就不跳，否则跳转。
                var totalPage;//总页数
                function goPage(pno,psize){
                    var itable = $("#adminTbody");
                    var num = itable.children().length;//表格所有行数(所有记录数)
                    pageSize = psize;//每页显示行数
                    //总共分几页
                    if(num/pageSize > parseInt(num/pageSize)){
                        totalPage=parseInt(num/pageSize)+1;
                    }else{
                        totalPage=parseInt(num/pageSize);
                    }
                    var currentPage = pno;//当前页数
                    currentPage_=currentPage;
                    //当前页的第一行和最后一行
                    var startRow = (currentPage - 1) * pageSize+1;
                    var endRow = currentPage * pageSize;
                    endRow = (endRow > num)? num : endRow;

                    $("#adminTbody li").hide();
                    for(var i=startRow-1;i<endRow;i++) {
                       $("#adminTbody li").eq(i).show();
                     }
                    var tempStr = "共"+num+"条 "+currentPage+"/"+totalPage;
                    document.getElementById("barcon1").innerHTML = tempStr;

                    if(currentPage>1){
                        $("#prePage").on("click",function(){
                          goPage(currentPage-1,psize);
                        }).removeClass("ban");
                    }else{
                        $("#prePage").off("click").addClass("ban");
                    }

                    if(currentPage<totalPage){
                        $("#nextPage").on("click",function(){
                          goPage(currentPage+1,psize);
                        }).removeClass("ban");
                    }else{
                        $("#nextPage").off("click").addClass("ban");
                    }
                }

                $(function(){
                    goPage(1,10);
                });
            </script>
</body>
</html>
