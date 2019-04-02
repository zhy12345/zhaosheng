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
<title>专业介绍管理</title>
<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets1/custom/css/index.css" />

</head>
<body>
	<div class="container-fluid" id="qingjiadiv">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 ">
				<div class=" text-center" style="margin-bottom: 30px;"></div>
			</div>
			<div style="background-color: red"></div>

			<div class="col-lg-1">
				<span class="date"></span> <br> <span class="time"></span>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-10">
				<form action="admin/adminallmajor.shtml" method="post" id="queryform" class="form-inline">
					<input type="hidden" name="page" id="page"> <input type="hidden" name="limit" id="limit">
					<div class="form-group">
						<label>题目</label> <input type="text" name="name" value="" class="form-control">
					</div>
					<div class="form-group">
						<label>关键字</label> <input type="text" name="keyword" value="" class="form-control">
					</div>
					
					<div class="form-group">
						<label class="">院系</label>
						  <select class="form-control" id="type" name="majortype">
							<option value="">全部</option>
							<option value="专科">专科</option>
							<option value="本科">本科</option>
							<option value="专升本">专升本</option>
						</select>
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
					<button class="btn btn-primary" id="update">修改</button>
				</div>
				<button class="btn btn-danger" type="bu" id="delete">删除</button>
			</div>
		</div>
		<div class="row">
			<hr />
		</div>



		<div class="row">
			<div style="color:red;font-size: 18px;">${requestScope.message}</div>
			<div style="overflow-x:auto;">
				<table   style="width:auto;max-width:none;cursor: pointer; width: 2000px;"  class="table table-striped table-bordered table-hover" id="goodTable">
					<thead>
						<tr>
							<td></td>
							<th>编号</th>
							<th>题目</th>
							<th>专业类型</th>
							<th>专业名称</th>
							<th>作者</th>
							<th>发布日期</th>
							<th>点击量</th>
						</tr>
					</thead>
					 <c:forEach items="${majorlist}" var="major">
						<tr>
							<td><input type="checkbox" value="${major.id }" /></td>
							<td>${major.id }</td>
							<td>${major.subject}</td>
							<td>${major.majortype }</td>
							<td>${major.name }</td>
							<td>${major.author }</td>
							<td>${major.addtime }</td>
							<td>${major.clicknum }</td>
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
	
	<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets1/lib/common/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets1/lib/layer/layer.js"></script>

	<script type="text/javascript">
		var nowpage = parseInt("${page.page}");
		var totalpage = parseInt("${page.totalpages}");
		
		var type="${type}";
		
		$("#type").val(type);
		
		
		$(function() {

			//删除事件
			$("#delete")
					.click(
							function() {
								var allchecked = $("#goodTable tr td :checkbox:checked");
								if (allchecked.length == 0) {
									parent.layer.alert("请选中您要删除的文章");
									return;
								}
								var del = parent.layer
										.confirm(
												"确定删除此文章么？删除后将不会复原！",
												function() {
													var deptids = [];
													allchecked.each(function() {
														deptids.push($(this)
																.val());
													});
													var delIds = deptids.join();
													location.href = "admin/delmajor.shtml?delids="
															+ delIds;
													parent.layer.close(del)
												});
							});

			//修改事件
			$("#update").click(function() {
				var allchecked = $("#goodTable tr td :checkbox:checked");
				if (allchecked.length == 0) {
					parent.layer.alert("请选中您要修改的记录");
					return;
				}
				if (allchecked.length > 1) {
					parent.layer.alert("您一次只能修改一条记录");
					return;
				}
				var updateId = allchecked.val();
				location.href = "admin/getupdatamajor.shtml?id=" + updateId;
			});
			//添加事件
			$("#add").click(function() {
				location.href = "pages/admin/major/add.jsp";
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
					gotopage(1, 9);
				} else if (idx == 1) {
					gotopage(nowpage - 1, 9);
				} else if (idx == count - 1) {//末页
					gotopage(totalpage, 9);
				} else if (idx == count - 2) {//下一页
					gotopage(nowpage + 1, 9);
				} else {
					var p = parseInt($(this).text());
					gotopage(p, 9);
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

		});
	</script>

</body>
</html>