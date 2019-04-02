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
    <script src="<%=basePath %>/resources/js/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=basePath %>/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath %>/resources/209/css/jkresponsivegallery.css">
	<link rel="stylesheet" href="<%=basePath %>/resources/css/index.css">
    <style type="text/css" media="screen">
        *{
            margin: 0;
            padding: 0;
        }
        .top>#header{
           /* display:none; */
           position: relative;
           
           font-size:12px;
           height: 36px;

       }
       .top>#header > ul{
        list-style: none;
        width: 80%;
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
            height:300px;
            float: left;
            /* border:solid 1px red; */

            /* flex:3; */
        }
        main>section>aside{
            text-align:center;
            width:40%;
            float: right;
            /* border:solid 1px red; */
            box-sizing:border-box;
            height:300px;
            position:relative;
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
        main>section>aside img{
             width:160px;
            height:110px;
             float: left;
            margin:5px 18px;
            border:solid 1px #ccc;
            border-radius:5px;
            box-shadow:10px 10px 20px 0px #fff,-10px -10px 20px 0px #fff;
        }
        main>section>aside .all{
            position:absolute;
            top:5px;
            right:10px;
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
    <main>
        <section>
            <h3>基础科学学院</h3>

            <article>
                <p>视频介绍</p>
                <video width="300" height="250"  controls>
                    <source src="<%=basePath %>/resources/vedio/1.mp4"  type="video/mp4">
                        <!-- <source src="movie.ogg"  type="video/ogg"> -->
                        您的浏览器不支持 HTML5 video 标签。
                    </video>
                </article>
                <aside>
                    <p>流年图片</p>
                    <div class="dowebok">
                        <div id="gallery" class="rthumbnail">
                            <a href="<%=basePath %>/resources/images/fg1.jpg"><span class="all">显示更多>>></span></a>
                            <a href="<%=basePath %>/resources/images/fg1.jpg"><img src="<%=basePath %>/resources/images/fg1.jpg" alt=""></a>
                            <a href="<%=basePath %>/resources/images/fg2.jpg"><img src="<%=basePath %>/resources/images/fg2.jpg" alt=""></a>
                            <a href="<%=basePath %>/resources/images/fg3.jpg"><img src="<%=basePath %>/resources/images/fg3.jpg" alt=""></a>
                            <a href="<%=basePath %>/resources/images/fg4.jpg"><img src="<%=basePath %>/resources/images/fg4.jpg" alt=""></a>
                                <!-- <div  class="rcaption">基础科学学院</div> -->
                        </div>
                    </div>
                        </aside>
                    </section>
        </main>
                <script src="<%=basePath %>/resources/js/jquery-1.12.4.min.js"></script>
                <script src="<%=basePath %>/resources/209/js/jkresponsivegallery.js"></script>
                <script>
                    $(function() {
                        $('#gallery').responsivegallery({
                            media: [
                            ["<%=basePath %>/resources/images/fg2.jpg", "基础科学学院"],
                            ["<%=basePath %>/resources/images/fg3.jpg", "基础科学学院"],
                            ["<%=basePath %>/resources/images/fg4.jpg", "基础科学学院"]
                            ]
                        });
                    });
                </script>
            </body>
            </html>