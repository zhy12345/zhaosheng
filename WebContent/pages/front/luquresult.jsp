<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK rel="stylesheet" type="text/css" href="<%=basePath %>/resources/css/lq-style.css">
<title>招生信息</title>
</head>
<body>
<div class="lqcx">
    <div class="lqcx-bg-1">
    <div>
        <table width="100%" border="0">
          <tr>
            <td>姓   名：</td>
            <td  align="left">${stu.xm }</td>
          </tr>
          <tr>
            <td>准考证号：</td>
            <td align="left">${stu.ksh }</td>
          </tr>
          <tr>
            <td>身份证号：</td>
            <td align="left">${stu.sfzh }</td>
          </tr>
          <tr>
            <td>高考成绩：</td>
            <td align="left">${stu.cj }</td>
          </tr>
          <tr>
            <td>录取专业：</td>
            <td align="left">${stu.zymc }</td>
          </tr>
          <tr>
            <td>录取通知书EMS号：</td>
            <td align="left"><a href="http://www.ems.com.cn/?mailnum_input=${stu.ems }">${stu.ems }</a></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><a href="luQuCheck.shtml"><input type="submit" value="返回" class="cx" style="width:250px;" /></a></td>
          </tr>
        </table>
    </div>
</div>

<div class="lk" style="text-align:center; font-size:14px; color:#f00; margin-top:20px;">注: 查询结果仅供参考，最终的录取结果请以收到的录取通知书为准。 </div>
</body>
</html>