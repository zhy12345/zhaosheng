<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="utf-8">
<title>招生日历</title>
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
				<form action="admin/getrililist.shtml" method="post" id="queryform" class="form-inline">
					<input type="hidden" name="page" id="page"> <input type="hidden" name="limit" id="limit">
				</form>
			</div>


			<div class="col-lg-3" style="float: right">

				<div class="btn-group">
					<button class="btn btn-primary" id="add">添加列表</button>
					<button class="btn btn-primary" id="update">修改</button>
				</div>
				<button class="btn btn-danger" type="submit" id="delete">删除</button>
			</div>
		</div>
		<div class="row">
			<hr />
		</div>



		<div class="row">
			<div class="table-responsive">
				<table class="table table-responsive table-striped table-bordered table-hover" style="cursor: pointer;" id="userTable">
					<thead>
						<tr>
							<td></td>
							<th>编号</th>
							<th>标题</th>
							<th>时间</th>
							<th>顺序</th>
						</tr>
					</thead>
					<c:forEach items="${list }" var="list">
						<tr>
							<td><input type="checkbox" value="${list.id }" /></td>
							<td>${list.id }</td>
							<td>${list.subject }</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.addtime }" type="both"/></td>
							<td>${list.bianhao }</td>
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



	<div class="row" id="updateCourier" style="display: none; margin: 0; padding: 20px;">
		<form action="admin/updaterili.shtml" class="form-horizontal" id="updateForm" method="post">
			<input type="hidden" id="id" name="id">
			<div class="form-group">
				<label class="col-sm-3 control-label">标题名</label>
				<div class="col-sm-9">
					<input type="text" name="subject" class="form-control" placeholder="标题名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">时间：</label>
				<div class="col-sm-9">
					<input type="date" name="addtime" class="form-control" placeholder="时间">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">展示顺序</label>
				<div class="col-sm-9">
					<input type="text" name="bianhao" class="form-control" placeholder="展示顺序">
				</div>
			</div>
		</form>
	</div>



	<div class="row" id="addUser" style="display: none; margin: 0; padding: 20px;">
		<form action="admin/addrili.shtml" class="form-horizontal" id="addform" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label">标题名</label>
				<div class="col-sm-9">
					<input type="text" name="subject" class="form-control" placeholder="标题名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">时间：</label>
				<div class="col-sm-9">
					<input type="date" name="addtime" class="form-control" placeholder="时间">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">展示顺序</label>
				<div class="col-sm-9">
					<input type="text" name="bianhao" class="form-control" placeholder="展示顺序">
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
			//添加用户事件
			$("#addNewUser").click(function() {
				
				var username=$("#addform :input[name=subject]").val();
				if(!(username)){
					parent.layer.alert("标题名不能为空！")
					return;
				}
				var password=$("#addform :input[name=addtime]").val();
				if(!(password)){
					parent.layer.alert("时间不能为空！")
					return;
				}
				$("#addform").submit();

			});
			

			//删除事件
			$("#delete").click(function() {
				var allchecked = $("#userTable tr td :checkbox:checked");
				if (allchecked.length == 0) {
					parent.layer.alert("请选中您要删除的列表");
					return;
				}
				var del = parent.layer.confirm("确定删除此列表么？", function() {
					var deptids = [];
					allchecked.each(function() {
						deptids.push($(this).val());
					});
					var delIds = deptids.join();
					location.href = "admin/delrili.shtml?delids=" + delIds;
					parent.layer.close(del)
				});
			});

			//修改事件
				$("#update").click(function() {
				var allchecked = $("#userTable tr td :checkbox:checked");
				if (allchecked.length == 0) {
					parent.layer.alert("请选中您要修改的记录");
					return;
				}
				if (allchecked.length > 1) {
					parent.layer.alert("您一次只能修改一条记录");
					return;
				}
				var updateId = allchecked.val();
				var subject =allchecked.parents("tr").find("td:eq(2)").text();
				var addtime =allchecked.parents("tr").find("td:eq(3)").text();
				var biaohao = allchecked.parents("tr").find("td:eq(4)").text();
				layer.open({
					type : 1,
					title : [ '修改Excel表单', 'font-size:14px;' ],
					skin : 'layui-layer-rim', //加上边框
					area : [ '600px', '300px' ], //宽高
					content : $('#updateCourier'),
					success : function(layero, index) {
						$("#updateCourier input[name=id]").val(updateId);
						$("#updateCourier input[name=subject]").val(subject);
						$("#updateCourier input[name=bianhao]").val(biaohao);
						$("#updateCourier input[name=addtime]").val(addtime);
					},
				 btn:['修改'],
					yes: function(index, layero){
						$("#modifyCourier").submit();
					  }
				});
			});

			$("#add").click(function() {
				layer.open({
					type : 1,
					title : [ '添加列表', 'font-size:14px;' ],
					skin : 'layui-layer-rim', //加上边框
					area : [ '600px', '450px' ], //宽高
					content : $('#addUser'),
					 btn:['添加'],
					yes: function(index, layero){
						var username=$("#addform :input[name=subject]").val();
						if(!(username)){
							parent.layer.alert("标题名不能为空！")
							return;
						}
						var password=$("#addform :input[name=addtime]").val();
						if(!(password)){
							parent.layer.alert("时间不能为空！")
							return;
						}
						
						$("#addform").submit();

						
						
						
					  }
				});
			});

			//选中复选框
			$(document).on("click", "#userTable tr td", function() {
				var tr = $(this).parents("tr");
				var checked = tr.find("td:first :checkbox").prop("checked");
				tr.find("td:first :checkbox").prop("checked", !checked);
			});
			//关闭上浮冒泡
			$("#userTable :checkbox").click(function(event) {
				event.stopPropagation();
			});

			//为分页条添加事件
			$(".pagination li a").click(function() {
				var idx = $(this).parent().index();
				var count = $(".pagination li").length;
				if (idx == 0) {
					gotopage(1, 14);
				} else if (idx == 1) {
					gotopage(nowpage - 1, 14);
				} else if (idx == count - 1) {//末页
					gotopage(totalpage, 14);
				} else if (idx == count - 2) {//下一页
					gotopage(nowpage + 1, 14);
				} else {
					var p = parseInt($(this).text());
					gotopage(p, 14);
				}
			});

			//给分页条添加校验
			if (nowpage == 1) {
				$(".pagination li:first").addClass("disabled");
				$(".pagination li:eq(1)").addClass("disabled");
			}
			var xiaye = $(".pagination li").length - 2;
			/* console.log(xiaye); */
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

	</script>

</body>
</html>