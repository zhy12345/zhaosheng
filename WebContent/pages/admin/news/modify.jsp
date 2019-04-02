<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>


<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets1/custom/css/index.css" />
<style type="text/css">
.form-input{
	width: 33%;
	float: left;
}





</style>

<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="assets1/lib/laydate/laydate.js"></script>


<script type="text/javascript" charset="utf-8" src="assets/lib/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="assets/lib/ueditor/ueditor.all.min.js">
	
</script>
<script type="text/javascript" charset="utf-8" src="assets/lib/ueditor/lang/zh-cn/zh-cn.js"></script>



<script type="text/javascript">
	$(function() {

	var ue = UE.getEditor('editor');
	$(document).ready(function() {
		var msg = "";
		if ($("#message").text() != null) {
			msg = $("#message").text();
		}
		if (msg != "") {
			alert(msg);
		}
	});
		var type = "${news.type}";
		$("#updateForm #type").val(type);

		$("#submit").click(function() {
			$("#updateForm").submit();
		});
		$("#colse").click(function() {
			location.href = "admin/adminallnews.shtml";
		}); 

	});
</script>



</head>
<body style="background-color: #F0F9FD">
	<div class="container-fluid">
		<div class="col-lg-12 ">
			<div class="row" style="margin-bottom: 40px">
				<h3 class="text-center">修改文章</h3>
			</div>

			<div class="row">
				
				<form action="admin/updatanews.shtml" class="form-horizontal" id="updateForm" method="post" >
					<input type="hidden" value="${news.id }" name="id">
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">新闻标题：</label>
						<div class="col-sm-9">
							<input type="text" name="subject" class="form-control" value="${news.subject }">
						</div>
					</div>
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">发布者：</label>
						<div class="col-sm-9">
							<input type="text" name="author" class="form-control"
								value="${news.author }">
						</div>
					</div>
					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">发布时间：</label>
						<div class="col-sm-9">
							<input type="date" name="time" class="form-control"
								value="${news.time }">
								
						</div>
					</div>


					<div class="form-group col-lg-4">
						<label class="col-sm-3 control-label">新闻类型：</label>
						<div class="col-sm-9">
							<select class="form-control" id="type" name="type">
								<option value="通知说明">通知说明</option>
								<option value="招生章程">招生章程</option>
								<option value="政策规定">政策规定</option>
							</select>
						</div>
					</div>

					<div style="clear: both;"></div>
					<script id="editor" name="content"  type="text/plain"  style="width: 100%; height: 500px;">${news.content }</script>
					<div id = "message">${requestScope.message}</div>
				</form>
				<div class="row">
					<div class="col-lg-2 col-lg-offset-10 btn-group">
						<button id="submit" type="button" class="btn btn-default">修改</button>
						<button id="colse" class="btn btn-default" type="reset">关闭</button>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>