<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
	String filepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>招生信息网</title>
    <script src="<%=basePath %>/resources/js/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=basePath %>/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/vedio.css">
    <link rel="stylesheet" href="<%=basePath %>/resources/209/css/jkresponsivegallery.css">

    <style type="text/css" media="screen">
        *{
            margin: 0;
            padding: 0;
        }

        a:link,a:hover,a:visited{
            text-decoration:none;
        }
        a:active{
            text-decoration:none;
            color:red;
        }
        main{
            width:80%;
            height:auto;
            margin:60px auto;
            /* border:solid 1px red; */
            padding:5px;
            box-sizing:border-box;
        }
        main>section{
            width:100%;
            height:345px;
            border-radius:10px;
            border:solid 1px #ccc;
            /* display: flex; */
        }
        main>section>article{
            width:55%;
            /* height:280px; */
            float: left;
            /* border:solid 1px red; */

            /* flex:3; */
        }
        main>section p{
            color:#00008b;
            font-size:20px;
            font-family: "楷体";
            border-bottom:solid 3px #eee;
            text-align:center;
            /* margin: 0; */
        }
        main>section>article>video{
            width:80%;
            /* text-align:center; */
            margin:0px 50px;

        }
        main>section>aside{
            text-align:center;
            width:40%;
            float: right;
            /* border:solid 1px red; */
            box-sizing:border-box;
            height:310px;
            /* padding-left: 20px; */
            /* flex:2; */
        }
        main>section>aside>img{
            width:40%;
            height:110px;
            /* display: inline-block; */
            float: left;
            margin:5px 18px;
            border:solid 1px #ccc;
            border-radius:5px;
            box-shadow:10px 10px 20px 0px #fff,-10px -10px 20px 0px #fff;
        }
        section>h3{
            color:#000080;
            font-size:25px;
            font-family: "楷体";
            /* border-bottom:solid 3px #eee; */
            text-align:center;
            margin:0;
            margin-top: 10px;
        }
        section aside{
            position:relative;
        }
        section .dowebok{
            width:100px;
            height:20px;
            /* border:solid 1px red; */
            position:absolute;
            top:7px;
            right:12px;
            color:#aaa;
            font-size:13px;
            font-family: "黑体";

        }
        .dowebok a{
            color:#999;
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
        <div class="logo1"><h1>logo</h1></div>
        <div class="xiaobiao"></div>
        <div class="logo2"><h1>logo</h1></div>
        <div id="header" >
            <ul>
                <li class="active">
                    <a href="index1.html">主页</a>
                </li>
                <li>
                    <a href="news.html">最新动态</a>
                </li>
                <li class="r_major">
                    <a href="major.html">专业介绍</a>
                </li>
                <li>
                    <a href="enrollment_plan.html">招生计划</a>
                </li>
                <li>
                    <a href="recruit_students_general_rules.html">招生简章</a>
                </li>
                <li>
                    <a href="policy_provisions.html">政策规定</a>
                </li>
                <li>
                    <a href="views.html">校园风光</a>
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
      <main>
        <section>
            <h3>${yuanxi}</h3>
			<c:forEach items="${videolist}" var="video">
	            <article>
	                <p>视频介绍</p>
	                <video width="300" height="250px"  controls>
	                    <source src="<%=filepath%>/${video.videopath}"  type="video/mp4">
	                        <!-- <source src="movie.ogg"  type="video/ogg"> -->
	                       		 您的浏览器不支持 HTML5 video 标签。
	                    </video>
	           	</article>
           	</c:forEach>
                <aside>
                    <p class="img">流年图片
                        <div class="dowebok">
                            <div id="gallery" class="rthumbnail">
                                <a href="images/fg1.jpg">
                                    <span>显示更多>>></span></a>
                                    <div  class="rcaption">基础科学学院</div>
                                </div>
                            </div>
                        </p>
                        <img src="images/fg1.jpg" alt="">
                        <img src="images/fg2.jpg" alt="">
                        <img src="images/fg3.jpg" alt="">
                        <img src="images/fg4.jpg" alt="">
                    </aside>
                </section>
            </main>
            <script src="<%=basePath %>/resources/js/jquery-1.12.4.min.js"></script>
            <script src="<%=basePath %>/resources/209/js/jkresponsivegallery.js"></script>
            <script>
                $(function() {
                    $('#gallery').responsivegallery({
                        media: [
                        ["images/fg2.jpg", "基础科学学院"],
                        ["images/fg3.jpg", "基础科学学院"],
                        ["images/fg4.jpg", "基础科学学院"]
                        ]
                    });
                });
            </script>
        </body>
        </html>