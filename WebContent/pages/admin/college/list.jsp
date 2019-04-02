<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
	String filepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +"/upload/";

%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="utf-8">
<title>轮播图</title>
<link href="assets1/lib/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath %>assets1/custom/css/index.css" />

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
				<form action="admin/getCollegeList.shtml" method="post" id="queryform" class="form-inline">
					<input type="hidden" name="page" id="page"> <input type="hidden" name="limit" id="limit">
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
			<div class=".table-responsive">
				<table class="table table-responsive table-striped table-bordered table-hover" style="cursor: pointer;" id="goodTable">
					<thead>
						<tr>
							<td></td>
							<th>编号</th>
							<th>院系名称</th>
							<th>院系简介</th>
							<th>照片</th>
							<th>文件上传时间</th>
						</tr>
					</thead>
				 <c:forEach items="${collegeList}" var="list" varStatus="num">
						<tr>
							<td><input type="checkbox" value="${list.id}" /></td> 
							<td>${num.count}</td>
							<td>${list.college_name}</td>
							<td style="width:400px;"><p style="width:350px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;">${list.college_detail}</p></td>
							<td id="photo">
							
							<c:if test="${list.college_photo != null }">
									<img src="<%=filepath %>${list.college_photo}" style="width: 34px; height: 34px; border-radius: 17px" />
							</c:if>
							</td>
							<td>${list.add_time}</td>
							
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
	
	<div class="row" id="updateCollege" style="display: none; margin: 0; padding: 20px;">
		<form action="admin/updateCollege.shtml" class="form-horizontal" id="modifyLunbo" method="post" >
			<input type="hidden" id="id" name="id">
			<div class="form-group">
				<label class="col-sm-3 control-label">院系简介：</label>
				<div class="col-sm-9">
					<textarea name="collegeDetail" cols="50" rows="10" placeholder="在这里输入内容..."></textarea>
				</div>
			</div>
		</form>
	</div>

	<div class="row" id="addLunboPhoto" style="display: none; margin: 0; padding: 20px;">
		<form action="admin/addCollegeInfo.shtml" class="form-horizontal" id="addPhoto" method="post" enctype="multipart/form-data">
			
			<div class="form-group">
				<label class="col-sm-3 control-label" >学院名称：</label>
				<div class="col-sm-9">
					<input type="text" name="collegeName" class="form-control">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" >选择照片：</label>
				<div class="col-sm-9">
					<input type="file" name="collegefile" >
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label" >院系简介：</label>
				 <textarea name="collegeDetail" cols="50" rows="10" placeholder="在这里输入内容..."></textarea>
			</div>
		</form>
	</div>
	
	<script type="text/javascript" src="assets1/lib/JQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets1/lib/common/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets1/lib/layer/layer.js"></script>
	<script type="text/javascript">
		var message = "${message}";
		if(isNull(message)==false){
			layer.alert(message);
		}
		
		function isNull(arg1)
		{
		 return !arg1 && arg1!==0 && typeof arg1!=="boolean"?true:false;
		}
		
		var nowpage = parseInt("${page.page}");
		var totalpage = parseInt("${page.totalpages}");
		$(function() {
			//删除事件
			$("#delete").click(
							function() {
								var allchecked = $("#goodTable tr td :checkbox:checked");
								if (allchecked.length == 0) {
									parent.layer.alert("请选中您要删除的信息");
									return;
								}
								var del = parent.layer.confirm("确定删除此照片么？删除后将不会复原！",function() {
													var deptids = [];
													var	filenames = [];
													allchecked.each(function() {
														deptids.push($(this).val());
														
													});
													
													var delIds = deptids.join();
												
													var filepath = filenames.join();
													location.href = "admin/delCollegeInfo.shtml?delids="+ delIds;
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
				var collegeDetail =allchecked.parents("tr").find("td:eq(3)").text();
				layer.open({
					type : 1,
					title : [ '修改学院信息', 'font-size:14px;' ],
					skin : 'layui-layer-rim', //加上边框
					area : [ '600px', '500px' ], //宽高
					content : $('#updateCollege'),
					success : function(layero, index) {
						$("#updateCollege input[name=id]").val(updateId);
						$("#updateCollege textarea[name=collegeDetail]").val(collegeDetail);
					},
				 btn:['修改'],
					yes: function(index, layero){
						$("#modifyLunbo").submit();
					  }
				});
			});
			

			//添加
			$("#add").click(function() {
				layer.open({
					type : 1,
					title : [ '上传照片', 'font-size:14px;' ],
					skin : 'layui-layer-rim', //加上边框
					area : [ '600px', '500px'], //宽高
					content : $('#addLunboPhoto'),
					btn:['上传'],
					yes: function(index, layero){
						$("#addPhoto").submit();
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
			//鼠标划过时放大头像
			$("#photo img" )
					.mouseover(
							function() {
								var tpath = $(this).attr("src");
								var x = $(this).offset();
								var top = x.top + 50;
								var left = x.left + 70;
								$(document.body)
										.append(
												$("<div class='tx'><img  style=\"width:150px;border-radius:50px;height:150px;position: absolute;top:"+top+"px;left:"+left+"px\" src="+tpath+"></div>"));

							});
			$("#photo img").mouseout(function() {
				$(".tx").remove();
			});			

		});
	</script>

</body>
</html>