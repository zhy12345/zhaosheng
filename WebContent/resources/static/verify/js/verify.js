
;(function($, window, document,undefined) {
	
    // 定义Slide的构造函数
    var Slide = function(ele, opt) {
        this.$element = ele,
        this.defaults = {
        	type : 2, // 滑动图片
        	mode : 'fixed',	// 弹出式pop，固定fixed
        	vOffset: 5,
            vSpace : 5,
            top:0,
            explain : '向右滑动完成验证',
            imgUrl : '',
            imgSize : {
	        	width: '400px',
	        	height: '200px'
	        },
	        blockSize : {
	        	width: '50px',
	        	height: '50px'
	        },
	        barSize : {
	        	width : '400px',
	        	height : '40px'
	        },
            ready : function(){},
        	success : function(){},
            error : function(){}
        },
        this.options = $.extend({}, this.defaults, opt)
    };
    
    
    // 定义Slide的方法
    Slide.prototype = {
        remoteInit: function(initDom){
        	var _this = this;
        	var bWidth = parseInt(_this.options.blockSize.width);
        	var bHeight = parseInt(_this.options.blockSize.height);
        	$.getJSON(_this.options.initUrl+'?t='+new Date().getTime(), {width: bWidth, height: bHeight}, function(top){
        		_this.options.top = top;
        		if(initDom) {
        			_this.init();
        		} else {
        			_this.htmlDoms.refresh.show();
        			
        			_this.htmlDoms.sub_block.css({'top': _this.getSlideTop()});
        			_this.$element.find('.verify-msg:eq(1)').text('');
        			_this.$element.find('.verify-msg:eq(1)').css('color', '#000');
        			_this.htmlDoms.move_block.animate({'left':'0px'}, 'fast');
                	_this.htmlDoms.left_bar.animate({'width': '40px'}, 'fast');
                	_this.htmlDoms.left_bar.css({'border-color': '#ddd'});
        			
        			_this.htmlDoms.move_block.css('background-color', '#fff');
        			_this.htmlDoms.icon.css('color', '#000');
        			_this.htmlDoms.icon.removeClass('icon-close');
        			_this.htmlDoms.icon.addClass('icon-right');
        			_this.$element.find('.verify-msg:eq(0)').text(_this.options.explain);
                	
        			var time = new Date().getTime();
        			_this.$element.find('.verify-img-panel').css({'background': 'url('+ _this.options.imgUrl +'?t=' + time + ')'});
        			_this.$element.find('.verify-sub-block').css({'background-image': 'url('+ _this.options.slideUrl +'?t=' + time + ')'});
                	
        			_this.isEnd = false;
        		}
            });
        },
    		
        init: function() {
        	var _this = this;
        	
        	// 加载页面
        	this.loadDom();
        	this.options.ready();
        	
        	this.$element[0].onselectstart = document.body.ondrag = function(){ 
				return false; 
			};
        	
        	if(this.options.mode == 'pop')	{
        		this.$element.on('mouseover', function(e){
        			_this.showImg();
	        	});
	        	
	        	this.$element.on('mouseout', function(e){
	        		_this.hideImg();
	        	});
	        	
	        	
	        	this.htmlDoms.out_panel.on('mouseover', function(e){
	        		_this.showImg();
	        	});
	        	
	        	this.htmlDoms.out_panel.on('mouseout', function(e){
	        		_this.hideImg();
	        	});
        	}
        	
        	
        	this.htmlDoms.move_block.on('mousedown', function(e) {
        		_this.start(e);
        	});
        	
        	this.htmlDoms.move_block.on('mousemove', function(e) {
        		_this.move(e);
        	});
        	
        	this.htmlDoms.move_block.on('mouseup', function(e) {
        		_this.end(e);
        	});
        	
        	
        	$(window).mousemove(function(e){
        		_this.move(e);
        	});
        	
        	$(window).mouseup(function(e){
        		_this.end(e);
        	});
        	
            // 刷新
            _this.$element.find('.verify-refresh').on('click', function() {
            	_this.refresh();
            });
        },
        
        getSlideTop: function(){
        	var bTop = - parseInt(this.setSize.img_height) + this.options.top - this.options.vSpace; //
        	return bTop + "px";
        },
        
        // 初始化加载
        loadDom : function() {
        	var panelHtml = '';
        	var tmpHtml = '';
        	
        	if(this.options.type != 1) {		// 图片滑动
        		panelHtml += '<div class="verify-img-out"><div class="verify-img-panel"><div  class="verify-refresh"><i class="iconfont icon-refresh"></i></div></div></div>';
        		tmpHtml = '<div  class="verify-sub-block"></div>';
        	}
        	
        	panelHtml += '<div class="verify-bar-area"><span  class="verify-msg">'+this.options.explain+'</span><div class="verify-left-bar"><span  class="verify-msg"></span><div  class="verify-move-block"><i  class="verify-icon iconfont icon-right"></i>'+tmpHtml+'</div></div></div>';
        	this.$element.append(panelHtml);
        	
        	this.htmlDoms = {
        		sub_block : this.$element.find('.verify-sub-block'),
        		out_panel : this.$element.find('.verify-img-out'),
        		img_panel : this.$element.find('.verify-img-panel'),
        		bar_area : this.$element.find('.verify-bar-area'),
        		move_block : this.$element.find('.verify-move-block'),
        		left_bar : this.$element.find('.verify-left-bar'),
        		msg : this.$element.find('.verify-msg'),
        		icon : this.$element.find('.verify-icon'),
        		refresh :this.$element.find('.verify-refresh')
        	};
        	
        	this.status = false;	// 鼠标状态
        	this.isEnd = false;		// 是够验证完成
        	this.setSize = this.resetSize(this);	// 重新设置宽度高度
        	
        	this.$element.css('position', 'relative');
        	if(this.options.mode == 'pop') {
        		this.htmlDoms.out_panel.css({'display': 'none', 'position': 'absolute', 'bottom': '42px', 'background-color':'white'});
        		this.htmlDoms.sub_block.css({'display': 'none'});
        	}else {
        		this.htmlDoms.out_panel.css({'position': 'relative'});
        	}
        	
        	var time = new Date().getTime();
        	
        	this.htmlDoms.sub_block.css({'width': this.options.blockSize.width, 'height': this.options.blockSize.height, 'top': this.getSlideTop(), 'background-image': 'url('+ this.options.slideUrl +'?t=' + time + ')'});
        	this.htmlDoms.out_panel.css('height', parseInt(this.setSize.img_height) + this.options.vSpace + 'px');
        	this.htmlDoms.img_panel.css({'width': this.setSize.img_width, 'height': this.setSize.img_height, 'background': 'url(' + this.options.imgUrl +'?t=' + time + ')'});
        	this.htmlDoms.bar_area.css({'width': this.setSize.bar_width, 'height': this.options.barSize.height, 'line-height':this.options.barSize.height});
        	this.htmlDoms.move_block.css({'width': this.options.barSize.height, 'height': this.options.barSize.height});
        	this.htmlDoms.left_bar.css({'width': this.options.barSize.height, 'height': this.options.barSize.height});
        	
        },
        
        // 鼠标按下
        start: function(e) {
        	if(this.isEnd == false) {
	        	this.htmlDoms.msg.text('');
	        	this.htmlDoms.move_block.css('background-color', '#337ab7');
	        	this.htmlDoms.left_bar.css('border-color', '#337AB7');
	        	this.htmlDoms.icon.css('color', '#fff');
	        	e.stopPropagation();
	        	this.status = true;
        	}
        },
        
        // 鼠标移动
        move: function(e) {
        	if(this.status && this.isEnd == false) {
				if(this.options.mode == 'pop')	{
        			this.showImg();
				}
        		
	            if(!e.touches) {    // 兼容移动端
	                var x = e.clientX;
	            }else {     // 兼容PC端
	                var x = e.touches[0].pageX;
	            }
	            var bar_area_left = Slide.prototype.getLeft(this.htmlDoms.bar_area[0]); 
	            var move_block_left = x - bar_area_left; // 小方块相对于父元素的left值
	            
	            
	            if(this.options.type != 1) {		// 图片滑动
	            	if(move_block_left >= this.htmlDoms.bar_area[0].offsetWidth - parseInt(parseInt(this.options.blockSize.width)/2) - 2) {
	                	move_block_left = this.htmlDoms.bar_area[0].offsetWidth - parseInt(parseInt(this.options.blockSize.width)/2) - 2;
	            	}
	            	
	            }else {		// 普通滑动
	            	if(move_block_left >= this.htmlDoms.bar_area[0].offsetWidth - parseInt(parseInt(this.options.barSize.height)/2) + 3) {
	            		this.$element.find('.verify-msg:eq(1)').text('');
	                	move_block_left = this.htmlDoms.bar_area[0].offsetWidth - parseInt(parseInt(this.options.barSize.height)/2) + 3;
	            	}else {
	            		this.$element.find('.verify-msg:eq(1)').text('');
	            	}
	            }
	            
	            
	            if(move_block_left <= 0) {
            		move_block_left = parseInt(parseInt(this.options.blockSize.width)/2);
            	}
	            
	            // 拖动后小方块的left值
	            this.htmlDoms.move_block.css('left', move_block_left-parseInt(parseInt(this.options.blockSize.width)/2) + "px");
	            this.htmlDoms.left_bar.css('width', move_block_left-parseInt(parseInt(this.options.blockSize.width)/2) + "px");
	        }
        },
        
        // 鼠标松开
        end: function() {
        	
        	var _this = this;
        	
        	// 判断是否重合
        	if(this.status  && this.isEnd == false) {
        		
        		if(this.options.type != 1) {		// 图片滑动
        			
        			var startX = parseInt(this.htmlDoms.move_block.css('left'));
        			
        			$.get(this.options.checkUrl, {startX: startX}, function(result){
        				if(result.valid) {
        					_this.htmlDoms.move_block.css({'background-color': '#5cb85c', 'left': result.realX +'px'});
        					_this.htmlDoms.left_bar.css({'border-color': '#5cb85c', 'background-color': '#fff', 'width': result.realX +'px'});
        					_this.htmlDoms.icon.css('color', '#fff');
        					_this.htmlDoms.icon.removeClass('icon-right');
    		            	_this.htmlDoms.icon.addClass('icon-check');
    		            	_this.htmlDoms.refresh.hide();
    		            	_this.isEnd = true;
    		            	_this.options.success(this);
    		            }else{
    		            	_this.htmlDoms.move_block.css('background-color', '#d9534f');
    		            	_this.htmlDoms.left_bar.css('border-color', '#d9534f');
    		            	_this.htmlDoms.icon.css('color', '#fff');
    		            	_this.htmlDoms.icon.removeClass('icon-right');
    		            	_this.htmlDoms.icon.addClass('icon-close');
    		            	
    		            	setTimeout(function () {
    					    	_this.refresh();
    					    }, 400);
    		            	
    		            	_this.options.error(this);
    		            }
        			});
        			
        		}else {		// 普通滑动
        			
        			if(parseInt(this.htmlDoms.move_block.css('left')) >= (parseInt(this.setSize.bar_width) - parseInt(this.options.barSize.height) - parseInt(this.options.vOffset))) {
        				this.htmlDoms.move_block.css('background-color', '#5cb85c');
        				this.htmlDoms.left_bar.css({'color': '#4cae4c', 'border-color': '#5cb85c', 'background-color': '#fff' });
        				this.htmlDoms.icon.css('color', '#fff');
		            	this.htmlDoms.icon.removeClass('icon-right');
		            	this.htmlDoms.icon.addClass('icon-check');
		            	this.htmlDoms.refresh.hide();
        				this.$element.find('.verify-msg:eq(1)').text('验证成功');
        				this.isEnd = true;
        				this.options.success(this);
        			}else {
        				this.$element.find('.verify-msg:eq(1)').text('');
        				this.htmlDoms.move_block.css('background-color', '#d9534f');
		            	this.htmlDoms.left_bar.css('border-color', '#d9534f');
		            	this.htmlDoms.icon.css('color', '#fff');
		            	this.htmlDoms.icon.removeClass('icon-right');
		            	this.htmlDoms.icon.addClass('icon-close');
		            	this.isEnd = true;
		            	
		            	setTimeout(function () { 
		            		_this.$element.find('.verify-msg:eq(1)').text('');
					    	_this.refresh();
					    	_this.isEnd = false;
					    }, 400);
		            	
		            	this.options.error(this);
        			}
        		}
        		
	            this.status = false;
        	}
        },
        
        // 弹出式
        showImg : function() {
        	this.htmlDoms.out_panel.css({'display': 'block'});
        	this.htmlDoms.sub_block.css({'display': 'block'});
        },
        
        // 固定式
        hideImg : function() {
        	this.htmlDoms.out_panel.css({'display': 'none'});
        	this.htmlDoms.sub_block.css({'display': 'none'});
        },
        
        
        resetSize : function(obj) {
        	var img_width,img_height,bar_width,bar_height;	// 图片的宽度、高度，移动条的宽度、高度
        	var parentWidth = obj.$element.parent().width() || $(window).width();
        	var parentHeight = obj.$element.parent().height() || $(window).height();
        	
       		if(obj.options.imgSize.width.indexOf('%')!= -1){
        		img_width = parseInt(obj.options.imgSize.width)/100 * parentWidth + 'px';
		　　}else {
				img_width = obj.options.imgSize.width;
			}
		
			if(obj.options.imgSize.height.indexOf('%')!= -1){
        		img_height = parseInt(obj.options.imgSize.height)/100 * parentHeight + 'px';
		　　}else {
				img_height = obj.options.imgSize.height;
			}
		
			if(obj.options.barSize.width.indexOf('%')!= -1){
        		bar_width = parseInt(obj.options.barSize.width)/100 * parentWidth + 'px';
		　　}else {
				bar_width = obj.options.barSize.width;
			}
		
			if(obj.options.barSize.height.indexOf('%')!= -1){
        		bar_height = parseInt(obj.options.barSize.height)/100 * parentHeight + 'px';
		　　}else {
				bar_height = obj.options.barSize.height;
			}
		
			return {img_width : img_width, img_height : img_height, bar_width : bar_width, bar_height : bar_height};
       	},
        
        // 随机出生点位
        randSet: function(top) {
          	this.$element.find('.verify-sub-block').css({'top':'-'+(parseInt(this.setSize.img_height)- top + this.options.vSpace)+'px', 'background-image': 'url('+ this.options.slideUrl + ')'});
        },
        
        // 刷新
        refresh: function() {
        	this.remoteInit(false);
        },
        
        // 获取left值
        getLeft: function(node) {
			var left = $(node).offset().left; 
            return left;
        }
    };
    
    // -------------------------------------------------------------------------------------------------------------------------------------------------

    // 定义Points的构造函数
    var Points = function(ele, opt) {
        this.$element = ele,
        this.defaults = {
        	mode : 'fixed',	// 弹出式pop，固定fixed
        	defaultNum : 4,	// 默认的文字数量
		    checkNum : 3,	// 校对的文字数量
		    vSpace : 5,	// 间隔
			initUrl : '/jeesite/slide/wordInit',
			imgUrl : '/jeesite/slide/wordImg',
			checkUrl : '/jeesite/slide/wordCheck',
        	imgSize : {
	        	width: '400px',
	        	height: '200px'
	        },
	        barSize : {
	        	width : '400px',
	        	height : '40px'
	        },
	        ready : function(){},
        	success : function(){},
            error : function(){}
        },
        this.options = $.extend({}, this.defaults, opt)
    };
    
    // 定义Points的方法
    Points.prototype = {
    	remoteInit: function () {
    		var _this = this;
        	var bWidth = parseInt(_this.options.imgSize.width);
        	var bHeight = parseInt(_this.options.imgSize.height);
        	var reqData = {
        			width: bWidth, 
        			height: bHeight, 
        			totalCount: this.options.defaultNum, 
        			checkCount: this.options.checkNum
        	};
        	$.getJSON(_this.options.initUrl+'?t='+new Date().getTime(), reqData, function(words){
        		_this.words = words.join("，");
        		_this.init();
            });
    	},
    	init : function() {
			
			var _this = this;
			
			// 加载页面
        	_this.loadDom();
        	 
        	_this.refresh();
        	_this.options.ready();
        	
        	this.$element[0].onselectstart = document.body.ondrag = function(){ 
				return false; 
			};
			
			
			if(this.options.mode == 'pop')	{
        		this.$element.on('mouseover', function(e){
        			_this.showImg();
	        	});
	        	
	        	this.$element.on('mouseout', function(e){
	        		_this.hideImg();
	        	});
	        	
	        	
	        	this.htmlDoms.out_panel.on('mouseover', function(e){
	        		_this.showImg();
	        	});
	        	
	        	this.htmlDoms.out_panel.on('mouseout', function(e){
	        		_this.hideImg();
	        	});
        	}
			
        	
		 	// 点击事件比对
        	_this.$element.find('.verify-img-panel').on('click', function(e) {
        		
				_this.checkPosArr.push(_this.getMousePos(this, e));
				
				if(_this.num == _this.options.checkNum) {
					
					_this.num = _this.createPoint(_this.getMousePos(this, e));
					var points = [];
					$.each(_this.checkPosArr, function(i, point){
						points.push({
							top:parseInt(point.y),
							left:parseInt(point.x)
						});
					});
					$.ajax({
						url:_this.options.checkUrl,
						method:"post",
						data:{points : JSON.stringify(points)},
						success: function(flag){
							if(flag) {
								_this.$element.find('.verify-bar-area').css({'color': '#4cae4c', 'border-color': '#5cb85c'});
								_this.$element.find('.verify-msg').text('验证成功');
								_this.$element.find('.verify-refresh').hide();
								_this.$element.find('.verify-img-panel').unbind('click');
								_this.options.success(_this);
							} else {
								_this.options.error(_this);
								_this.$element.find('.verify-bar-area').css({'color': '#d9534f', 'border-color': '#d9534f'});
							    _this.$element.find('.verify-msg').text('验证失败');
								
								setTimeout(function () { 
									_this.$element.find('.verify-bar-area').css({'color': '#000','border-color': '#ddd'});
							    	_this.refresh();
							    }, 400);
							}
						}
					});
					/*
					$.post(_this.options.checkUrl, points, function(flag){
						if(flag) {
							_this.$element.find('.verify-bar-area').css({'color': '#4cae4c', 'border-color': '#5cb85c'});
							_this.$element.find('.verify-msg').text('验证成功');
							_this.$element.find('.verify-refresh').hide();
							_this.$element.find('.verify-img-panel').unbind('click');
							_this.options.success(_this);
						} else {
							_this.options.error(_this);
							_this.$element.find('.verify-bar-area').css({'color': '#d9534f', 'border-color': '#d9534f'});
						    _this.$element.find('.verify-msg').text('验证失败');
							
							setTimeout(function () { 
								_this.$element.find('.verify-bar-area').css({'color': '#000','border-color': '#ddd'});
						    	_this.refresh();
						    }, 400);
						}
					});*/
					
					/*
					 * setTimeout(function () { var flag =
					 * _this.comparePos(_this.fontPos, _this.checkPosArr);
					 * 
					 * if(flag == false) { // 验证失败
					 * 
					 * _this.options.error(_this);
					 * _this.$element.find('.verify-bar-area').css({'color':
					 * '#d9534f', 'border-color': '#d9534f'});
					 * _this.$element.find('.verify-msg').text('验证失败');
					 * 
					 * setTimeout(function () {
					 * _this.$element.find('.verify-bar-area').css({'color':
					 * '#000','border-color': '#ddd'}); _this.refresh(); },
					 * 400);
					 * 
					 * }else { // 验证成功
					 * _this.$element.find('.verify-bar-area').css({'color':
					 * '#4cae4c', 'border-color': '#5cb85c'});
					 * _this.$element.find('.verify-msg').text('验证成功');
					 * _this.$element.find('.verify-refresh').hide();
					 * _this.$element.find('.verify-img-panel').unbind('click');
					 * _this.options.success(_this); } }, 400);
					 */
					
				}
				
				if(_this.num < _this.options.checkNum) {
					_this.num = _this.createPoint(_this.getMousePos(this, e));
				}

        	});
        	
        	 // 刷新
            _this.$element.find('.verify-refresh').on('click', function() {
            	_this.refresh();
            });
        	
    	},
    	
    	// 加载页面
    	loadDom : function() {
    		
    		this.fontPos = [];	// 选中的坐标信息
    		this.checkPosArr = [];	// 用户点击的坐标
    		this.num = 1;	// 点击的记数
    		
        	var panelHtml = '';
        	var tmpHtml = '';
        	
        	this.setSize = Slide.prototype.resetSize(this);	// 重新设置宽度高度
        	
        	panelHtml += '<div class="verify-img-out"><div class="verify-img-panel"><div class="verify-refresh" style="z-index:3"><i class="iconfont icon-refresh"></i></div></div></div><div class="verify-bar-area"><span  class="verify-msg"></span></div>';
        	
        	this.$element.append(panelHtml);
        	
        	
        	this.htmlDoms = {
        		out_panel : this.$element.find('.verify-img-out'),
        		img_panel : this.$element.find('.verify-img-panel'),
        		bar_area : this.$element.find('.verify-bar-area'),
        		msg : this.$element.find('.verify-msg')
        	};
        	
        	this.$element.css('position', 'relative');
        	if(this.options.mode == 'pop') {
        		this.htmlDoms.out_panel.css({'display': 'none', 'position': 'absolute', 'bottom': '42px'});
        	}else {
        		this.htmlDoms.out_panel.css({'position': 'relative'});
        	}
        	
        	this.htmlDoms.out_panel.css('height', parseInt(this.setSize.img_height) + this.options.vSpace + 'px');
    		this.htmlDoms.img_panel.css({'width': this.setSize.img_width, 
    									'height': this.setSize.img_height, 
    									'background-size' : this.setSize.img_width + ' '+ this.setSize.img_height, 
    									'margin-bottom': this.options.vSpace + 'px',
    									'background-image': 'url('+ this.options.imgUrl + ')'});
    		
    		this.htmlDoms.bar_area.css({'width': this.options.barSize.width, 'height': this.options.barSize.height, 'line-height':this.options.barSize.height});
    		
    	},
    	
    	// 获取坐标
    	getMousePos :function(obj, event) {
            var e = event || window.event;
            var scrollX = document.documentElement.scrollLeft || document.body.scrollLeft;
            var scrollY = document.documentElement.scrollTop || document.body.scrollTop;
            var x = e.clientX - ($(obj).offset().left - $(window).scrollLeft());
    		var y = e.clientY - ($(obj).offset().top - $(window).scrollTop());
    		
            return {'x': x, 'y': y};
     	},
     	
     	// 递归去重
     	getChars : function(fontStr, fontChars) {
     		
     		var tmp_rand = parseInt(Math.floor(Math.random() * fontStr.length));
     		if(tmp_rand > 0) {
     			tmp_rand = tmp_rand - 1;
     		}
     		
     		tmp_char = fontStr.charAt(tmp_rand);
       		if($.inArray(tmp_char, fontChars) == -1) {
       			return tmp_char;
       		}else {
       			return Points.prototype.getChars(fontStr, fontChars);
       		}
     	},
		
     	// 洗牌数组
       	shuffle : function(arr) {
			var m = arr.length, i;
			var tmpF;
			while (m) {
				i = (Math.random() * m--) >>> 0;
				tmpF = arr[m];
				arr[m] = arr[i];
				arr[i] = tmpF;
				// [arr[m], arr[i]] = [arr[i], arr[m]]; //低版本浏览器不支持此写法
			}
			return arr;
		},
       	
       	// 创建坐标点
       	createPoint : function (pos) {
       		this.htmlDoms.img_panel.append('<div class="point-area" style="background-color:#1abd6c;color:#fff;z-index:9999;width:30px;height:30px;text-align:center;line-height:30px;border-radius: 50%;position:absolute;top:'+parseInt(pos.y-10)+'px;left:'+parseInt(pos.x-10)+'px;">'+this.num+'</div>');
       		return ++this.num;
       	},
       	
       	// 比对坐标点
       	comparePos : function (fontPos, checkPosArr) {
       		
       		var flag = true;
       		for(var i = 0; i < fontPos.length; i++) {
       			if(!(parseInt(checkPosArr[i].x) + 40 > fontPos[i].x && parseInt(checkPosArr[i].x) - 40 < fontPos[i].x && parseInt(checkPosArr[i].y) + 40 > fontPos[i].y && parseInt(checkPosArr[i].y) - 40 < fontPos[i].y)) {
       				flag = false;
       				break;
       			}
       		}
       		
       		return flag;
       	},
       	
       	// 弹出式
        showImg : function() {
        	this.htmlDoms.out_panel.css({'display': 'block'});
        },
        
        // 固定式
        hideImg : function() {
        	this.htmlDoms.out_panel.css({'display': 'none'});
        },
       	
       	// 刷新
        refresh: function() {
        	var _this = this;
        	this.$element.find('.point-area').remove();
        	this.fontPos = [];
        	this.checkPosArr = [];
        	this.num = 1;
        	
        	_this.$element.find('.verify-bar-area').css({'color': '#000', 'border-color': '#ddd'});
			// _this.$element.find('.verify-msg').text('验证失败');
			_this.htmlDoms.msg.text('请顺序点击【' + this.words + '】');
			_this.$element.find('.verify-refresh').show();
        }
    	
    };
    
    
    
    // 在插件中使用slideVerify对象
    $.fn.slideVerify = function(options, callbacks) {
        var slide = new Slide(this, options);
        slide.remoteInit(true);
    };
    
    // 在插件中使用clickVerify对象
    $.fn.pointsVerify = function(options, callbacks) {
        var points = new Points(this, options);
        points.remoteInit();
    };
    
})(jQuery, window, document);
