<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="utf-8">
<title>查询文件管理</title>
<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets1/custom/css/index.css" />




</head>
<body>
	<div class="container-fluid" id="qingjiadiv">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 ">
				<div class=" text-center" style="margin-bottom: 30px;"></div>
			</div>
			<div style="background-color: red"><%-- ${error } --%></div>

			<div class="col-lg-1">
				<span class="date"></span> <br> <span class="time"></span>
			</div>
		</div>
		<div class="row">

			<div class="col-lg-10">
				<form action="admin/queryexcel.shtml" method="post" id="queryform" class="form-inline">
					<input type="hidden" name="page" id="page"> <input type="hidden" name="limit" id="limit">
					<div class="form-group">
						<label>名称</label> <input type="text" name="name" value="" class="form-control">
					</div>
					<div class="form-group">
						<label>关键字</label> <input type="text" name="keyword" value="" class="form-control">
					</div>
					<div class="btn-group" style="margin-left: 10px">
						<button class="btn btn-default" type="submit">查询</button>
						<button id="reset" class="btn btn-default" type="submit">清空</button>
					</div>
				</form>
			</div>


			<div class="col-lg-2" style="float: right">

				<div class="btn-group">
					<button class="btn btn-primary" id="add">添加</button>
				</div>
				<button class="btn btn-danger" type="bu" id="delete">删除</button>
			</div>
		</div>
		<div class="row">
			<hr />
		</div>



		<div class="row">
			<%-- <div style="color:red;font-size: 18px;">${requestScope.message}</div> --%>
			<div class=".table-responsive">
				<table class="table table-responsive table-striped table-bordered table-hover" style="cursor: pointer;" id="goodTable">
					<thead>
						<tr>
							<td></td>
							<th>编号</th>
							<th>文件名称</th>
							<th>文件上传时间</th>
							<th>文件</th>
						</tr>
					</thead>
				 <c:forEach items="${exclelist}" var="list">
						<tr>
							<td><input type="checkbox" value="${list.id}" /></td> 
							<td>${list.id }</td>
							<td>${list.filename }</td>
							<td>${list.addtime }</td>
							<td><a href="load.shtml?id=${list.id }&filepath=${list.filepath }">${list.filename }</a></td>
						</tr>
				</c:forEach>
				</table>
			</div>
		</div>
		<nav style="float: right">
			<ul class="pagination">
				<li><a href="javascript:void(0)">首页</a></li>
				<li><a href="javascript:void(0)">上一页</a></li>

				<c:forEach begin="${page.pageBegin }" end="${page.getShowpageEnd() }" var="p">
					<li><a href="javascript:void(0)">${p}</a></li>
				</c:forEach>

				<li><a href="javascript:void(0)">下一页</a></li>
				<li><a href="javascript:void(0)">尾页</a></li>
			</ul>
		</nav>
	</div>

	<div class="row" id="addCourier" style="display: none; margin: 0; padding: 20px;">
		<form action="admin/addcheckexcel.shtml" class="form-horizontal" id="addExcel" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label class="col-sm-3 control-label">选择Excel文件：</label>
				<div class="col-sm-9">
					<input type="file" name="file" >
				</div>
			</div>
			 <div class="form-group">
				<label class="col-sm-3 control-label">填写文件上传时间：</label>
				<div class="col-sm-9">
					<input type="date" name="addtime" class="form-control" placeholder="上传时间">
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets1/lib/common/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets1/lib/layer/layer.js"></script>
	<script type="text/javascript">
		var nowpage = parseInt("${page.page}");
		var totalpage = parseInt("${page.totalpages}");
		$(function() {
			//删除事件
			$("#delete").click(
							function() {
								var allchecked = $("#goodTable tr td :checkbox:checked");
								if (allchecked.length == 0) {
									parent.layer.alert("请选中您要删除的Excel文件");
									return;
								}
								var del = parent.layer.confirm("确定删除此文件么？删除后将不会复原！",function() {
													var deptids = [];
													var	filenames = [];
													allchecked.each(function() {
														deptids.push($(this).val());
														
													});
													
													var delIds = deptids.join();
												
													var filepath = filenames.join();
													location.href = "admin/delqueryexcel.shtml?delids="+ delIds;
													parent.layer.close(del)
												});
							});

			//添加
			$("#add").click(function() {
				layer.open({
					type : 1,
					title : [ '上传文件', 'font-size:14px;' ],
					skin : 'layui-layer-rim', //加上边框
					area : [ '600px', '300px'], //宽高
					content : $('#addCourier'),
					btn:['上传'],
					yes: function(index, layero){
						$("#addExcel").submit();
					  }
				});
			});
			//选中复选框
			$(document).on("click", "#goodTable tr td", function() {
				var tr = $(this).parents("tr");
				var checked = tr.find("td:first :checkbox").prop("checked");
				tr.find("td:first :checkbox").prop("checked", !checked);
			});
			//关闭上浮冒泡
			$("#goodTable :checkbox").click(function(event) {
				event.stopPropagation();
			});

			//为分页条添加事件
			$(".pagination li a").click(function() {
				var idx = $(this).parent().index();
				var count = $(".pagination li").length;
				if (idx == 0) {
					gotopage(1, 10);
				} else if (idx == 1) {
					gotopage(nowpage - 1, 10);
				} else if (idx == count - 1) {//末页
					gotopage(totalpage, 10);
				} else if (idx == count - 2) {//下一页
					gotopage(nowpage + 1, 10);
				} else {
					var p = parseInt($(this).text());
					gotopage(p, 10);
				}
			});

			//给分页条添加校验
			if (nowpage == 1) {
				$(".pagination li:first").addClass("disabled");
				$(".pagination li:eq(1)").addClass("disabled");
			}
			var xiaye = $(".pagination li").length - 2;
			if (nowpage == totalpage) {
				$(".pagination li:last").addClass("disabled");
				$(".pagination li:eq(" + xiaye + ")").addClass("disabled");
			}
			//给当前页面 的页码条添加效果
			$(".pagination li:contains(" + nowpage + ")").addClass("active");
			//提交表单函数
			function gotopage(page, limit) {

				if (!isNaN(page)) {
					$("#queryform #page").val(page);
				}
				if (!isNaN(limit)) {
					$("#queryform #limit").val(limit);
				}
				$("#queryform").submit();
			}
			//添加清空事件
			$("#reset").click(function() {
				$("#queryform :input").val("");
			});

		
			$("#goodTable img").mouseout(function() {
				$(".tx").remove();
			});

		});
	</script>

</body>
</html>