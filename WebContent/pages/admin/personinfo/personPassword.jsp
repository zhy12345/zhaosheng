<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="UTF-8">
<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="assets1/lib/common/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets1/lib/laydate/laydate.js"></script>

<title>个人信息</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
					<h3 class="text-center">修改密码</h3>
					<div style = "color: red">${error }</div>
					<form action="admin/updatepassword.shtml" id="updateForm" method="post">
					<div id="error" class="text-center" style="color: red">
					</div>
					<div style="height: 30px"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">当前密码：</label>
						<div class="col-sm-9">
							<input type="password" name="password" placeholder="请输入当前密码" class="form-control" ">
						</div>
					</div>
					<div style="height: 30px"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">新密码：</label>
						<div class="col-sm-9">
							<input type="password" id="newpassword"  name="newpassword" placeholder="请输新密码" class="form-control" >
						</div>
					</div>
					<div style="height: 30px"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">确认密码：</label>
						<div class="col-sm-9">
							<input type="password"  id="confirmpassword" placeholder="请输入确认密码" class="form-control" >
						</div>
					</div>
					
					<div class="text-right">
						<input type="submit"  class="btn btn-default" value="修改">
					</div>
				</form>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$("#submit").click(function() {
				var password =$("#updateForm #newpassword").val();
				var confirmpassword =$("#updateForm #confirmpassword").val();
				console.log(password);
				console.log(confirmpassword);
				if(password!=confirmpassword){
					$("#error").text("两次密码不一致！");
					return ;
				}
				$("#updateForm").submit();
			});
		});
	</script>




</body>
</html>