<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE HTML>
<!-- Website template form http://www.cssmoban.com/ -->
<html>
<head>
    <meta charset="UTF-8">
    <title>招生信息网</title>
    <link rel="stylesheet" href="<%=basePath %>/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/bootstrap.css" type="text/css">
    <script src="<%=basePath %>/resources/js/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=basePath %>/resources/css/views.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/209/css/jkresponsivegallery.css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/index.css">
    <style>
      #body{
        position:relative;
      }
      #body>.dowebok>#gallery>span{
        position:absolute;
        top:-25px;
        right:0px;
        width:94px;
        height:30px;
        /* border:solid 1px red; */
        color:#aaa;
      }
       .top>#header{
           /* display:none; */
           position: relative;
           /* border:solid 1px red; */
           /* margin:20px 0; */
           font-size:12px;
           height: 36px;

       }
       .top>#header > ul{
        list-style: none;
        width: 80%;
        /*将父容器设置了伸缩盒子，子元素默认成为伸缩项  float margin*/
        display: flex;
    }
      .top>#header>ul>li{
            /*宽度
            1.我们并不知道li的具体的数量
            2.也不直接设置%*/
            height: 36px;
            line-height: 36px;
            text-align: center;
            /* background-color: #9fff9d; */
            /* border-right: 1px solid #ccc; */
            flex: 1;
        }
        .active{
            border-bottom:solid 3px blue;
        }
    </style>

</head>
<body>
    <div class="top">
        <div class="xiaobiao"></div>
        <div id="header" >
           <ul>
				<li class="active">
					<a href="<%=basePath %>/main.shtml">主页</a>
				</li>
				<li>
					<a href="<%=basePath %>/getallnews.shtml">最新动态</a>
				</li>
				<li class="r_major">
					<a href="<%=basePath %>/getthreemajor.shtml">专业介绍</a>
				</li>
				<li>
					<a href="<%=basePath %>/getzsjhexcel.shtml">招生计划</a>
				</li>
				<li>
					<a href="<%=basePath %>/getzsjz.shtml">招生简章</a>
				</li>
				<li>
					<a href="<%=basePath %>/getzcgd.shtml">政策规定</a>
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

    <script >
        $(function () {/*两个排他事件，一一对应*/
            $("#header>ul>li").click(function(){
              $(this).addClass("active").siblings().removeClass("active");
          });
            $(".top").mouseenter(function(){

                $("#header").show();
                $("main").css("marginTop","60px");
            });
            $(".top").mouseleave(function(){
               $("#header").hide();
               $("main").css("marginTop","20px");
           });
        });
    </script>
       <div class="span_nav" style="margin-top:60px">
           <span >当前位置：<a href="index1.html">招生信息网</a>&gt;&gt;&gt;<a href="views.html">校园风光</a></span>
       </div>
       <div id="body">
        <div class="dowebok">
            <div id="gallery" class="rthumbnail">
                <span><a href="<%=basePath %>/resources/images/fg.jpg">显示更多>>></a></span>
                <a href="<%=basePath %>/resources/images/fg.jpg"><div class="body_1">
                    <img src="<%=basePath %>/resources/images/fg.jpg" alt="">
                    <p>师专校区</p>
                </div></a>
                <a href="<%=basePath %>/resources/images/fg1.jpg"><div class= "body_1 ">
                    <img src="<%=basePath %>/resources/images/fg1.jpg" alt="">
                    <p>石大校区</p>
                </div></a>
                <a href="<%=basePath %>/resources/images/fg2.jpg"><div class=" body_1 ">
                    <img src="<%=basePath %>/resources/images/fg2.jpg" alt="">
                    <p>石大校区</p>
                </div></a>
                <a href="<%=basePath %>/resources/images/fg3.jpg"><div class=" body_1 ">
                    <img src="<%=basePath %>/resources/images/fg3.jpg" alt="">
                    <p>石大校区</p>
                </div></a>
                <a href="<%=basePath %>/resources/images/fg4.jpg"><div class=" body_1 ">
                    <img src="<%=basePath %>/resources/images/fg4.jpg" alt="">
                    <p>石大校区</p>
                </div></a>
                <a href="<%=basePath %>/resources/images/fg5.jpg"><div class=" body_1 ">
                    <img src="<%=basePath %>/resources/images/fg5.jpg" alt="">
                    <p>石大校区</p>
                </div></a>
            </div>
        </div>
        <script src="<%=basePath %>/resources/209/js/jkresponsivegallery.js"></script>
        <script>
        //高亮显示
        $(function(){
              // $("#body .body_1").mouseenter(function(){
              //   $(this).css("opacity","1").siblings().css("opacity","0.5");
              // });
              // $("#body").mouseleave(function() {
              //   $(this).find(".body_1").css("opacity","1");
              // });


                 $('#gallery').responsivegallery(
                 {
                    media: [
                    // ["images/fg.jpg", "基础科学学院"],
                    ["<%=basePath %>/resources/images/fg1.jpg", "基础科学学院"],
                    ["<%=basePath %>/resources/images/fg2.jpg", "基础科学学院"],
                    ["<%=basePath %>/resources/images/fg3.jpg", "基础科学学院"],
                    ["<%=basePath %>/resources/images/fg4.jpg", "基础科学学院"],
                    ["<%=basePath %>/resources/images/fg5.jpg", "基础科学学院"]
                    ]
                 }
                 );

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
