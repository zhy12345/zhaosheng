$(function(){


	$.IE.ltDo(9,function(){
		/**ie9以下版本不能<a><button></button</a>不触发a跳转的bug*/
		$('body').delegate('a>button','click',function(){
			this.parentNode.click();
		});
		/**ie9版本以下transilate不起作用的问题*/
		$('.plug_center').each(function(){
			changeCenter($(this));
		});
	});
	function changeCenter($t){
		var w=$t.actual('width');
		var h=$t.actual('height');
		$t.css({
			'margin-left':-w/2+'px',
			'margin-top':-h/2+'px'
		});
	}



	/**页面中的二级导航*/
	/**页面初始化导航项*/
	if($('.b_subNav .active').isExist()){
		var $lis=$('.b_subNav .active').parents().filter(function(){
			return $(this)[0].tagName.toLowerCase()==='li'&&$(this).parents('.b_subNav').length>0;
		});
		$lis.each(function(){
			$(this).addClass('active');
			$(this).find('>.nav_tit .icon_arrow').addClass('open');
		});
	};
	if($('.b_subNav').isExist()){
		$('body').on('click','.b_subNav .icon_arrow',function(){
			var $li=$($(this).parents('li')[0]);
			var $subNav=$li.children('ul');
			if($subNav.isExist()){
				$lis=$li.siblings('li:has(>.nav_tit .open)');
				$lis.each(function(){
					var $subNav=$(this).children('ul');
					$(this).find('>.nav_tit .icon_arrow').removeClass('open');
					$subNav.slideUp();
				});
				if($(this).hasClass('open')){
					$(this).removeClass('open');
					$subNav.slideUp();
				}else{
					$(this).addClass('open');
					$subNav.slideDown();
				}
			}
			return false;
		});
		$('body').on('click','.b_subNav .nav_a>li>.nav_tit>div',function(){
			$(this).find('.icon_arrow').trigger('click');
		});
	}

	$('.nav_a>li>.nav_tit').each(function(){
		console.log($(this).siblings('ul').hasClass('nav_b'))
		if(!$(this).siblings('ul').hasClass('nav_b')){
			$(this).find('.icon_arrow').css('display','none')
		}
	})
});