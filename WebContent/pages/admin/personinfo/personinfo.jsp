<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<%--  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  --%>
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
				<div style="color: red">${error }</div>
				<div style="height: 80px;width: 100%;"></div>
				<form class="form-horizontal" id="personinfoForm" action="admin/saveinfo.shtml" method="post">
					<div class="form-group">
						<label class="col-sm-3 control-label">用户名：</label>
						<div class="col-sm-9">
							<input type="text" name="username" class="form-control" style="background-color: white;" readonly="readonly" value="${sessionScope.person.username }">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">真实姓名：</label>
						<div class="col-sm-9">
							<input type="text" name="truename" class="form-control" value="${sessionScope.person.truename }">
						</div>
					</div>
				
					<!-- <div class="form-group">
						<label class="col-sm-3 control-label">性别：</label>
						<div class="col-sm-9">
							<select class="form-control" name="sex">
								<c:choose>
									<c:when test="">
										<option value="男">男</option>
										<option value="女" selected="selected">女</option>
									</c:when>
									<c:otherwise>
										<option value="男" selected="selected">男</option>
										<option value="女">女</option>
									</c:otherwise>
								</c:choose>
							</select>
						</div>
					</div> -->
					<div class="text-right">
						<input type="submit" id="submitsave" class="btn btn-default" value="保存">
					</div>
				</form>

			</div>
		</div>
	</div>

	<script type="text/javascript">


			
	</script>




</body>
</html>