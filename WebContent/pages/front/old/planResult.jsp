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

<body >
<div class="lqcx">
    <div class="lqcx-bg-1">
    <div>
        <table width="100%" border="0">
          <tr>
            <td>专      业：</td>
            <td  align="left">${planInfo.major }</td>
          </tr>
          <tr>
            <td>科       类：</td>
            <td align="left">${planInfo.families }</td>
          </tr>
          <tr>
            <td>省      份：</td>
            <td align="left">${planInfo.provice }</td>
          </tr>
          <tr>
            <td>所招人数：</td>
            <td align="left">${planInfo.provice_num }</td>
          </tr>
          <tr>
            <td colspan="2" align="center"><a href="main.shtml"><input type="submit" value="返回" class="cx" style="width:250px;" /></a></td>
          </tr>
        </table>
    </div>
</div>

<div class="lk" style="text-align:center; font-size:14px; color:#f00; margin-top:20px;">注: 查询结果仅供参考。 </div>
</body>
</html>