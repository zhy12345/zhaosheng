<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<base href="${ctx }/">
<meta charset="utf-8">
<title>员工管理</title>
<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets1/custom/css/index.css" />




</head>
<body>
	<div class="container-fluid" id="qingjiadiv">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 ">
				<div class=" text-center" style="margin-bottom: 30px;"></div>
			</div>
			<div style="background-color: red">${error }</div>

			<div class="col-lg-1">
				<span class="date"></span> <br> <span class="time"></span>
			</div>
		</div>
		<div class="row">

			<div class="col-lg-10">
				<form action="adminuser/list" method="post" id="queryform" class="form-inline">
					<input type="hidden" name="page" id="page"> <input type="hidden" name="limit" id="limit">
					<div class="form-group">
						<label>姓名</label> <input type="text" name="name" value="${selname }" class="form-control">
					</div>
					<div class="btn-group" style="margin-left: 10px">
						<button class="btn btn-default" type="submit">查询</button>
						<button id="reset" class="btn btn-default" type="submit">清空</button>
					</div>
				</form>
			</div>


			<div class="col-lg-2" style="float: right">

				<div class="btn-group">
					<button class="btn btn-primary" id="add">添加用户</button>
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
							<th>用户名</th>
							<th>用户密码</th>
							<th>姓名</th>
							<th>生日</th>
							<th>性别</th>
							<th>最后登录时间</th>
							<th>最后登录IP</th>
							<th>登录次数</th>
							<th>是否管理员</th>
							<th>账号状态</th>
						</tr>
					</thead>
					<c:forEach items="${users}" var="user">
						<tr>
							<td><input type="checkbox" value="${user.id}" /></td>
							<td>${user.username}</td>
							<td>${user.password}</td>
							<td>${user.name}</td>
							<td><c:choose>
									<c:when test="${user.birthday !=null }">
									${user.getNowBirthday()}
								</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose></td>
							<td>${user.sex}</td>
							<td>${user.lastTime}</td>
							<td>${user.lastLoginIp}</td>
							<td>${user.loginTimes }</td>
							<td data-isAdministrator="${user.isAdministrator }"><c:choose>
									<c:when test="${user.isAdministrator==0 }">
									不是管理员
								</c:when>
									<c:otherwise>
									是管理员
								</c:otherwise>
								</c:choose></td>
							<td data-isFreeze="${user.isFreeze }"><c:choose>
									<c:when test="${user.isFreeze==0 }">
										未冻结
									</c:when>
									<c:otherwise>
										已冻结
									</c:otherwise>
								</c:choose></td>

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



	<div class="row" id="updateUser" style="display: none; margin: 0; padding: 20px;">
		<form action="adminuser/update" class="form-horizontal" id="updateForm" method="post">
			<input type="hidden" id="id" name="id">
			<div class="form-group">
				<label class="col-sm-3 control-label">是否管理员</label>
				<div class="col-sm-9">
					<select class="form-control" id="isAdministrator" name="isAdministrator">
						<option value="0">不是管理员</option>
						<option value="1">是管理员</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否冻结账号</label>
				<div class="col-sm-9">
					<select class="form-control" id="isFreeze" name="isFreeze">
						<option value="0">未冻结</option>
						<option value="1">已冻结</option>
					</select>
				</div>
			</div>
		</form>
	</div>



	<div class="row" id="addUser" style="display: none; margin: 0; padding: 20px;">
		<form action="adminuser/add" class="form-horizontal" id="addform" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label">用户名</label>
				<div class="col-sm-9">
					<input type="text" name="username" class="form-control" placeholder="用户名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">密码</label>
				<div class="col-sm-9">
					<input type="password" name="password" class="form-control" placeholder="密码">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">确认密码</label>
				<div class="col-sm-9">
					<input type="password" name="confirm" class="form-control" placeholder="确认密码">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">姓名</label>
				<div class="col-sm-9">
					<input type="text" name="name" class="form-control" placeholder="姓名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">手机号</label>
				<div class="col-sm-9">
					<input type="text" name="telphone" class="form-control" placeholder="手机号">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否管理员</label>
				<div class="col-sm-9">
					<select class="form-control" name="isAdministrator">
						<option value="0" selected="selected">不是管理员</option>
						<option value="1">是管理员</option>
					</select>
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
				
				var username=$("#addform :input[name=username]").val();
				if(!(username)){
					parent.layer.alert("用户名不能为空！")
					return;
				}
				var password=$("#addform :input[name=password]").val();
				if(!(password)){
					parent.layer.alert("密码不能为空！")
					return;
				}
				var pwd=$("#addform :input[name=password]").val();
				var cpwd=$("#addform :input[name=confirm]").val();
				if(pwd!=cpwd){
					parent.layer.alert("两次输入的密码不一致！")
					return;
				}
				
				var name=$("#addform :input[name=name]").val();
				if(!(name)){
					parent.layer.alert("姓名不能为空！")
					return;
				}
				var telphone=$("#addform :input[name=telphone]").val();
				if(!(telphone)){
					parent.layer.alert("手机号不能为空！")
					return;
				}
				if(telphone.length!=11){
					parent.layer.alert("请输入11位手机号！")
					return;
				}
				
				$("#addform").submit();

			});
			
			
			
			

			//删除事件
			$("#delete").click(function() {
				var allchecked = $("#userTable tr td :checkbox:checked");
				if (allchecked.length == 0) {
					parent.layer.alert("请选中您要删除的账号");
					return;
				}
				var del = parent.layer.confirm("确定删除此账号么？", function() {
					var deptids = [];
					allchecked.each(function() {
						deptids.push($(this).val());
					});
					var delIds = deptids.join();
					location.href = "adminuser/delete?delids=" + delIds;
					parent.layer.close(del)
				});
			});

			//修改事件
			$("#update")
					.click(
							function() {
								var allchecked = $("#userTable tr td :checkbox:checked");
								if (allchecked.length == 0) {
									parent.layer.alert("请选中您要修改的记录");
									return;
								}
								if (allchecked.length > 1) {
									parent.layer.alert("您一次只能修改一条记录");
									return;
								}
								var userId = allchecked.val();
								var isAdministrator = allchecked.parents("tr")
										.find("td:eq(9)").attr(
												"data-isAdministrator");
								var isFreeze = allchecked.parents("tr").find(
										"td:eq(10)").attr("data-isFreeze");
								layer.open({
									type : 1,
									title : [ '修改权限', 'font-size:14px;' ],
									skin : 'layui-layer-rim', //加上边框
									area : [ '600px', '260px' ], //宽高
									content : $('#updateUser'),
									success : function(layero, index) {
										$('#updateForm #id').val(userId);
										$('#updateForm #isAdministrator').val(
												isAdministrator);
										$('#updateForm #isFreeze')
												.val(isFreeze);
									} , btn:['修改'],
									yes: function(index, layero){
										$("#updateForm").submit();
									  }

								});

							});

			$("#add").click(function() {
				layer.open({
					type : 1,
					title : [ '添加用户', 'font-size:14px;' ],
					skin : 'layui-layer-rim', //加上边框
					area : [ '600px', '450px' ], //宽高
					content : $('#addUser'),
					 btn:['添加'],
					yes: function(index, layero){
						var username=$("#addform :input[name=username]").val();
						if(!(username)){
							parent.layer.alert("用户名不能为空！")
							return;
						}
						var password=$("#addform :input[name=password]").val();
						if(!(password)){
							parent.layer.alert("密码不能为空！")
							return;
						}
						var pwd=$("#addform :input[name=password]").val();
						var cpwd=$("#addform :input[name=confirm]").val();
						if(pwd!=cpwd){
							parent.layer.alert("两次输入的密码不一致！")
							return;
						}
						
						var name=$("#addform :input[name=name]").val();
						if(!(name)){
							parent.layer.alert("姓名不能为空！")
							return;
						}
						var telphone=$("#addform :input[name=telphone]").val();
						if(!(telphone)){
							parent.layer.alert("手机号不能为空！")
							return;
						}
						if(telphone.length!=11){
							parent.layer.alert("请输入11位手机号！")
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