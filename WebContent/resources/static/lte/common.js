(function() {
	/** 统一处理ajax请求，服务器端返回ResponseObject对象json
	 * opts.type :			请求方法，可为空，默认get <br/>
	 * opts.url :			请求url <br/>
	 * opts.data :			提交数据，可为空 <br/>
	 * opts.showLoading :	是否显示进度条
	 * opts.onSuccess :		业务操作成功回调
	 */
	function AjaxHelper(opts) {
		this.type = opts.type || "get";
		this.url = opts.url;
		this.data = opts.data || {};
		this.showLoading = opts.showLoading;
		this.onSuccess = opts.onSuccess;
		this.tipSuccess = opts.tipSuccess;
		this.tipError = opts.tipError;
	}
	AjaxHelper.prototype = {
		/**
		 * 发送请求
		 */
		sendRequest : function() {
			var self = this;
			$.ajax({
				type : self.type,
				url : self.url,
				data : self.data,
				dataType : "json",
				beforeSend : function(){
					if(self.showLoading != false){
						//loading();
						if (Object.prototype.toString.call(loading) === "[object Function]") {
							loading();
						}
					}
				},
				success : function(json) {
					top.$.jBox.closeTip();
					if (json.state && json.state == 1) {
						if(json.msg != null && json.msg != ""){
							if (Object.prototype.toString.call(self.tipSuccess) === "[object Function]") {
								self.tipSuccess(json.msg);
							}else{
								top.$.jBox.tip(json.msg, 'success');
							}
						}
						if (self.onSuccess) {
							if (Object.prototype.toString.call(self.onSuccess) === "[object Function]") {
								self.onSuccess(json);
							}
						}
					} else {
						if(json.msg != null && json.msg != ""){
							if (Object.prototype.toString.call(self.tipError) === "[object Function]") {
								self.tipError(json.msg);
							}else{
								top.$.jBox.error("<p class='confirmTxt'><i class='fa text-yellow'></i>" + json.msg + "</p>", '系统提示');
							}
						}
					}
				}
			});
		}
	};
	window.AjaxHelper = AjaxHelper;
})();
/////////////////////////////////////////////////////////////////////////////////////////////////////////






// 兼容console.log
var console = console || {
	log : function() {
		return false;
	}
};
// 关闭console.log输出
//console.log = function(){}

// 确认对话框
function confirmx(mess, href, closed, loadtext) {
	var delModalCont = "<p class='confirmTxt'><i class='fa fa-question-circle text-yellow'></i>" + mess + "</p>";
	top.$.jBox.confirm(delModalCont, '操作确认', function(v, h, f) {
		if (v == 'ok') {
			if (typeof href == 'function') {
				href();
			} else {
				if (loadtext != null && loadtext != "")
					loading(loadtext);
				location = href;
			}
		}
	}, {
		buttonsFocus : 1,
		closed : function() {
			if (typeof closed == 'function') {
				closed();
			}
		}
	});
	top.$('.jbox-body .jbox-icon').css('top', '55px');
	return false;
}

//获取URL地址参数
function getQueryString(name, url) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	if (!url || url == "") {
		url = window.location.search;
	} else {
		url = url.substring(url.indexOf("?"));
	}
	r = url.substr(1).match(reg)
	if (r != null) return unescape(r[2]);
	return null;
}

//引入js和css文件
function include(id, path, file) {
	if (document.getElementById(id) == null) {
		var files = typeof file == "string" ? [ file ] : file;
		for (var i = 0; i < files.length; i++) {
			var name = files[i].replace(/^\s|\s$/g, "");
			var att = name.split('.');
			var ext = att[att.length - 1].toLowerCase();
			var isCSS = ext == "css";
			var tag = isCSS ? "link" : "script";
			var attr = isCSS ? " type='text/css' rel='stylesheet' " : " type='text/javascript' ";
			var link = (isCSS ? "href" : "src") + "='" + path + name + "'";
			document.write("<" + tag + (i == 0 ? " id=" + id : "") + attr + link + "></" + tag + ">");
		}
	}
}

//打开一个窗体
function windowOpen(url, name, width, height) {
	var top = parseInt((window.screen.height - height) / 2, 10),
		left = parseInt((window.screen.width - width) / 2, 10),
		options = "location=no,menubar=no,toolbar=no,dependent=yes,minimizable=no,modal=yes,alwaysRaised=yes," +
			"resizable=yes,scrollbars=yes," + "width=" + width + ",height=" + height + ",top=" + top + ",left=" + left;
	window.open(url, name, options);
}

//恢复提示框显示
function resetTip() {
	top.$.jBox.tip.mess = null;
}
//显示加载框
function loading(mess) {
	if (mess == undefined || mess == "") {
		mess = "<i class=\'fa fa-spinner rotate\'></i> 正在提交，请稍等...";
	} else {
		mess = "<i class='fa fa-spinner rotate'></i> " + mess;
	}
	resetTip();
	top.$.jBox.tip(mess, 'loading', {
		opacity : 0
	});
}


// 异步加载到指定的div
function postForm(url, divid, formid, flag) {
	var pageurl;
	if (url.indexOf("?") == -1) {
		pageurl = url + "?randid=" + (new Date()).valueOf();
	} else {
		pageurl = url + "&randid=" + (new Date()).valueOf();
	}
	var dataval = "";
	if (formid) {
		dataval = $('#' + formid).serialize();
	}
	$.ajaxSetup({
		cache : false
	});
	$.ajax({
		type : "POST",
		data : dataval,
		url : pageurl,
		success : function(content) {
			if (flag == 0) {
				$("#" + divid).html(content);
			} else if (flag == 1) {
				$("#" + divid).prepend(content);
			}

		},
		error : function(data) {},
		complete : function(XMLHttpRequest, textStatus) {},
		//调用出错执行的函数
		error : function() {}
	});
}

////////////////
SiteHelper = {};
/**
 * 浏览次数
 */
SiteHelper.articleViewCount = function(base, articleId, hitsId) {
	hitsId = hitsId || "hits";
	$.getJSON(base + "/articleViewCount", {
		articleId : articleId
	}, function(data) {
		if (data.hits) {
			$("#" + hitsId).text(data.hits);
		}
	});
}
SiteHelper.categoryViewCount = function(base, categoryId, hitsId) {
	hitsId = hitsId || "hits";
	$.getJSON(base + "/categoryViewCount", {
		categoryId : categoryId
	});
}
/**
 * 站点流量统计
 */
SiteHelper.siteFlow = function(base, page, referer, flag,
	pvId, visitorId, dayPvId, dayVisitorId,
	weekPvId, weekVisitorId, monthPvId, monthVisitorId) {
	flag = flag || "true";
	if (flag != "true") {
		return;
	}
	if (flag == "true") {
		$.getJSON(base + "/flowStatistic", {
			page : page,
			referer : referer
		}, function(data) {
			if (data.length > 0) {
				pvId = pvId || "pv";
				visitorId = visitorId || "visitor";
				dayPvId = dayPvId || "dayPv";
				dayVisitorId = dayVisitorId || "dayVisitor";
				weekPvId = weekPvId || "weekPv";
				weekVisitorId = weekVisitorId || "weekVisitor";
				monthPvId = monthPvId || "monthPv";
				monthVisitorId = monthVisitorId || "monthVisitor";

				$("#" + pvId).text(data.pv);
				$("#" + visitorId).text(data.visitor);
				$("#" + dayPvId).text(data.dayPv);
				$("#" + dayVisitorId).text(data.dayVisitor);
				$("#" + weekPvId).text(data.weekPv);
				$("#" + weekVisitorId).text(data.weekVisitor);
				$("#" + monthPvId).text(data.monthPv);
				$("#" + monthVisitorId).text(data.monthVisitor);
			}
		});
	}
}