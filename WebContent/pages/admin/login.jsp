<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="UTF-8">
<title>后台登录</title>
<!-- load css -->
<link rel="stylesheet" type="text/css" href="assets1/lib/common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="assets1/custom/css/login.css" media="all">
</head>
<body>
	<div class="layui-canvs"></div>
	<div class="layui-layout layui-layout-login" style="background-color: black;width: 500px;height: 400px">
		<h1>
			<strong>管理系统后台</strong> <em>招生信息网</em>
		</h1>
		<form id="loginForm" action="admin/adminlogin.shtml" method="post">
			<div id="error" style="color: white"> ${error} </div>
			<div class="layui-user-icon larry-login">
				<input name="username" type="text" placeholder="账号" class="login_txtbx" />
			</div>
			<div class="layui-pwd-icon larry-login">
				<input name="password" type="password" placeholder="密码" class="login_txtbx" />
			</div>
			<div class="layui-val-icon larry-login">
				<div class="layui-code-box">
					<input type="text" id="code" name="code" placeholder="验证码" maxlength="5" class="login_txtbx"> <img id="captcha" src="admin/getCapthca.shtml" class="verifyImg" id="verifyImg">
				</div>
			</div>
			<div class="layui-submit larry-login">
				<input type="button" value="立即登陆" class="submit_btn" />
			</div>
		</form>

		<div class="layui-login-text">
			<p>© 设计制作</p>
			<p>基础科学学院软件协会</p>
		</div>
	</div>
	
	<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets1/lib/common/layui/lay/dest/layui.all.js"></script>
<script type="text/javascript" src="assets1/lib/js/login.js"></script>
<script type="text/javascript" src="assets1/lib/jsplug/jparticle.jquery.js"></script>
	

	<script type="text/javascript">
		$(function() {
			$(".layui-canvs").jParticle({
				background : "#141414",
				color : "#E6E6E6"
			});
			//登录链接测试，使用时可删除
			$(".submit_btn").click(function() {
				var username=$("#loginForm input[name=username]").val();
				if(!(username)){
					$("#error").text("用户名不能为空");
					return;
				}
				var password=$("#loginForm input[name=password]").val();
				if(!(password)){
					$("#error").text("密码不能为空");
					return;
				}
				$("#loginForm").submit();
			});
			
			$("#captcha").click(function(){
				var now = new Date();
				$(this).attr("src","admin/getCapthca.shtml?time="+now.getTime());
			});
			
			
		});
	</script>
</body>
</html>