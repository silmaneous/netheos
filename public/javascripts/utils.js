(function($){
	$.fn.carousel = function(childrenCount, showLastPage, automatic, delay){
		childrenCount = childrenCount || 4;
		return this.each(function() {
			var $this = $(this);
			var timer = null;
			var relaunchTimer = null;
			if($this.parents('.carouselWrapper').length == 0)
			 $this.wrap('<div class="carouselWrapper" style="width:100%;overflow:hidden;clearfix;"/>');
			var $parent = $this.parent();
			var parentWidth = $parent.width();
			var $pagination = $parent.siblings('.carouselPagination');
			if($pagination.length == 0)
			     $parent.after('<div class="carouselPagination" style="text-align:center;height:30px;padding-top:0px"/>');
			$pagination = $parent.siblings('.carouselPagination').empty(); 
			$this.css('position','absolute');
			$parent.css('position','relative');
			var $children = $this.children();
			if($children.length > 0) {
			    $parent.height(parseInt($children.outerHeight(true),10) + 30);
			    var childrenWidth = 0;
			    var childMarginWidth = $children.outerWidth(true) - $children.width();
			    $children.width((parentWidth - childrenCount * childMarginWidth)  / childrenCount);
    			var totalWidth = 0;
    			var childWidth = 0;
    			$children.each(function() {
    			 $(this).css('float','left');
    			 childWidth = $(this).outerWidth(true);    			
    			 totalWidth += childWidth;
    			});
    			$this.width(Math.max(totalWidth,parentWidth)+$children.length);
    			$this.css('left', Math.max(0, parentWidth / 2 - totalWidth / 2));
    			
    			// pagination
    			var pageCount = parseInt($children.length / childrenCount, 10);
    			if($children.length % childrenCount != 0)
    			 pageCount++;		
    			for(var index = 0; index < pageCount; index++) {    			 
    			 $pagination.append('<span class="carouselPage' + ((index == 0) ? ' active' :  '') + '"></span>');
    			}
    			
    			var $pagesIndicator = $pagination.find('.carouselPage');
    			if(pageCount == 1)
    			    $pagesIndicator.hide();
    			else
        			$pagesIndicator.show();
    			$pagesIndicator.bind('click active', function(e) {
    			 if($pagesIndicator.length > 1) {
    			     if(e.type == 'click' && timer) {
    			         clearInterval(timer);
    			         timer = null;
    			     }
        			 var index = $pagesIndicator.index($(this));
        			 var toLeft = index * (childrenCount * childWidth);
        			 toLeft = Math.max(-toLeft, parentWidth - totalWidth);
                     $this.stop(true,true).animate({left : toLeft},350);
                     $pagesIndicator.removeClass('active');
                     $(this).addClass('active');
    			 }
    			});
    			
    			if(showLastPage) {
    			  $pagesIndicator.last().trigger('active');
    			}
    			else
    			if(automatic) {
                    timer = setInterval(function() {
                        var currentPageIndex = $pagination.find('.carouselPage.active').index();
                        var nextIndex = (currentPageIndex + 1) % $children.length;
                        $pagination.find('.carouselPage').eq(nextIndex).trigger('active');
                    }, delay || 5000);
    			}
			}
		});		
	}; // end carousel
})(jQuery);