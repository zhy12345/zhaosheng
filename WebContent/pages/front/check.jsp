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
<title>招生信息网</title>
<style type="text/css">
.sj{float:left;margin-top:-63px;}
</style>
</head>
<body>
<DIV class="lqcx">
<DIV class="lqcx-bg">


<form action="checkluqu.shtml" method="post" name="imptdata_inquire_u0" id="imptdata_inquire_u0" onSubmit="return checkconditionu0()">
<table width="100%" border="0">
          <tr>
            <td>请输入考生号：</td>
            <td><input name="ksh" id="ksh" type="text" class="ksh" /><span class="red">*</span></td>
          </tr>
          <tr>
            <td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
            <td><input name="xm" id="xm" type="text" class="ksh" /></td>
          </tr>
          <tr>
            <td>请输入身份证号：</td>
            <td><input name="sfzh" id="sfzh" type="text" class="ksh" /><span class="red">*</span></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><input type="submit" value="查询" class="cx" /><input type="reset" value="重置" class="cz" /></td>
          </tr>
          <tr>
            <td colspan="2">   </td>
          </tr>
        </table>
</form>

<script>
    function checkconditionu0()
    {
        var ksh = document.getElementById("ksh").value;
        if (ksh=="")
        {
            alert("请输入准考证号");
            return false;
        }
        var sfzh = document.getElementById("sfzh").value;
        if (sfzh=="")
        {
            alert("请输入身份证号");
            return false;
        }
        return true;
    }
</script>
</DIV>
<p style="color:red; display:block; margin:0 auto;">注：山东普通本科批/山东春季高考批/山东艺术统考批/山东艺术校考批/北京本/广东本/江苏本/辽宁本/内蒙古本/贵州本/河北本/河南本/江西本/天津本/重庆本/上海本/浙江本/广西本/湖北本/安徽本/四川本/福建本/山东本征集/河南本征集/吉林本/青海本/湖南本/ 陕西本/新疆本/黑龙江本/甘肃本/山西本/山东专/河北专/安徽专/甘肃专/黑龙江专/新疆专/河南专/陕西专/山西专，可以在此处进行录取查询！</p>
</body>
</html>