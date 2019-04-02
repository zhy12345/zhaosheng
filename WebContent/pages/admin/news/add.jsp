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
<title>Insert title here</title>

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
			<div class="row" style="margin-bottom: 40px">
				<h3 class="text-center">添加新闻</h3>
			</div>

			<div class="row">
				<form action="<%=basePath%>/admin/addnews.shtml" method="post">
					<!-- enctype="multipart/form-data" -->

					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">新闻标题：</label>
						<div class="col-sm-9">
							<input type="text" name="subject" class="form-control" value="测试">
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
							<input type="date" name="time" class="form-control">

						</div>
					</div>


					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">新闻类型：</label>
						<div class="col-sm-9">
							<select class="form-control" name="type">
								<option value="通知说明">通知说明</option>
								<option value="招生简章">招生简章</option>
								<option value="政策规定">政策规定</option>
							</select>
						</div>
					</div>

					<div class="goodimgs "></div>

					<script id="editor" name="content" type="text/plain"
						style="width: 100%; height: 500px;"></script>

					<div class="row" style="margin-top: 20px">
						<div class="col-lg-2 col-lg-offset-10 btn-group">
							<p>
								<input type="submit" type="button" class="btn btn-default"
									value="上传">
							</p>
							<button id="colse" class="btn btn-default" type="reset">关闭</button>
						</div>
					</div>
					<div id="message">${requestScope.message}</div>
				</form>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		var ue = UE.getEditor('editor');
		$(document).ready(function() {
			var msg = "";
			if ($("#message").text() != null) {
				msg = $("#message").text();
			}
		});

		$("#colse").click(function() {
			location.href = "admin/adminallnews.shtml";
		});
	</script>






</body>
</html>