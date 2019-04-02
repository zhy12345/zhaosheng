<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传视频</title>

<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="assets1/custom/css/index.css" />
<style type="text/css">
.goodimgs {
	clear: both;
}

.goodimgs img {
	width: 120px;
	height: 120px
}

.form-input {
	width: 33%;
	float: left;
}
</style>

<script type="text/javascript"
	src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="assets1/lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets1/js/index.js"></script>
<script type="text/javascript" src="assets1/lib/laydate/laydate.js"></script>


<script type="text/javascript" charset="utf-8"
	src="assets/lib/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="assets/lib/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="assets/lib/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body style="background-color: #F0F9FD">
	<div class="container-fluid">
		<div class="col-lg-12 ">
		<span style="color:red">${requestScope.message}</span>
			<div class="row" style="margin-bottom: 40px">
				<h3 class="text-center">添加视频</h3>
			</div>

			<div class="row">
				<form id="addvideo" action="admin/addvideo.shtml" method="post" enctype="multipart/form-data">

					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">视频题目：</label>
						<div class="col-sm-9">
							<input type="text" name="videoname" class="form-control" value="测试">
						</div>
					</div>
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">发布者：</label>
						<div class="col-sm-9">
							<input type="text" name="author" class="form-control"
								value="招生办公室">
						</div>
					</div>
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">发布时间：</label>
						<div class="col-sm-9">
							<input type="date" name="date" class="form-control">

						</div>
					</div>

					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">视频封面：</label>
						<div class="col-sm-9">
							<input type="file" name="photo" class=" btn btn-info" >
						</div>
					</div>
					
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">选择视频：</label>
						<div class="col-sm-9">
							<input type="file" name="video" class="btn btn-info" >
						</div>
					</div>
					
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">院系</label>
						<div class="col-sm-9">
						 <select class="form-control" id="type" name="videofrom">
							<option value="">全部</option>
							<option value="招生办公室">招生办公室</option>
							<option value="油气工程学院">油气工程学院</option>
							<option value="化学工程学院">化学工程学院</option>
							<option value="机械与控制工程学院">机械与控制工程学院</option>
							<option value="基础科学学院">基础科学学院</option>
							<option value="护理学院">护理学院</option>
							<option value="教育与艺术学院">教育与艺术学院</option>
							<option value="文法与经济管理学院">文法与经济管理学院</option>
						</select>
						</div>
					</div>


					<div class="row" style="margin-top: 20px">
						<div class="col-lg-2 col-lg-offset-10 btn-group">
						<p>
								<input type="submit" type="button" class="btn btn-default"
									value="上传">
							</p> 
							 	<!-- <button id="submit" type="button" class="btn btn-default"> 上传</button> -->
								<button id="colse" class="btn btn-default" type="reset">关闭</button>
						</div>
					</div>
					
				</form>

			</div>
		</div>
	</div>
	<script type="text/javascript">
	var message = "${message}";
	if(isNull(message)==false){
		alert(message);
	}
	
	function isNull(arg1)
	{
	 return !arg1 && arg1!==0 && typeof arg1!=="boolean"?true:false;
	}
	
	$("#submit").click(function() {
		
		var username=$("#addform :input[name=subject]").val();
		if(!(username)){
			parent.layer.alert("视频题目不能为空！")
			return;
		}
		var username=$("#addform :input[name=photo]").val();
		if(!(username)){
			parent.layer.alert("标题名不能为空！")
			return;
		}
		var password=$("#addform :input[name=addtime]").val();
		if(!(password)){
			parent.layer.alert("时间不能为空！")
			return;
		}
		$("#addvideo").submit();

	});
	
		$(document).ready(function() {
			var msg = "";
			if ($("#message").text() != null) {
				msg = $("#message").text();
			}
			
		});

		$("#colse").click(function() {
			location.href = "admin/getallvideo.shtml";
		});
	</script>






</body>
</html>