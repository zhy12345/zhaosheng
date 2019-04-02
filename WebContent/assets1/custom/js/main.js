$(function() {

	var height = $(window).height() - 100 + 'px';

	$("#rightIframe").height(height);

	// 用户管理
	$("#userManagement a:eq(1)").click(function() {

		$("#rightIframe").attr("src", "admin/getuserinfo.shtml");
	});

	$("#userManagement a:eq(2)").click(function() {

		$("#rightIframe").attr("src", "pages/admin/personinfo/personPassword.jsp");

	});
	// 新闻管理
	$("#newsManagement a:eq(0)").click(function() {

		$("#rightIframe").attr("src", "admin/adminallnews.shtml");
	});

	$("#newsManagement a:eq(1)").click(function() {

		$("#rightIframe").attr("src", "admin/adminallnews.shtml");
	});

	$("#goodManagement a:eq(2)").click(function() {

		$("#rightIframe").attr("src", "admin/adminzcgdnews.shtml");

	});
	$("#goodManagement a:eq(3)").click(function() {

		$("#rightIframe").attr("src", "admin/adminzsjznews.shtml");

	});
	
	$("#goodManagement a:eq(4)").click(function() {

		$("#rightIframe").attr("src", "admin/adminallmajor.shtml");

	});
	//表格管理excelManagement
	$("#excelManagement a:eq(0)").click(function() {

		$("#rightIframe").attr("src", "admin/exceptquery.shtml");
	});

	$("#excelManagement a:eq(1)").click(function() {

		$("#rightIframe").attr("src", "admin/queryexcel.shtml");
	});
	
	//招生日历管理
	$("#excelManagement a:eq(0)").click(function() {

		$("#rightIframe").attr("src", "admin/getrililist.shtml");
	});
	
	//视频、照片管理photoAndvideo
	$("#photoAndvideo a:eq(0)").click(function() {

		$("#rightIframe").attr("src", "admin/getallvideo.shtml");
	});

	$("#photoAndvideo a:eq(1)").click(function() {

		$("#rightIframe").attr("src", "admin/getviewphoto.shtml");
	});
	
	//招生日历管理
	$("#excelManagement a:eq(0)").click(function() {

		$("#rightIframe").attr("src", "admin/getxuanchuanphoto.shtml");
	});
});
