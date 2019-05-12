jQuery(document).ready(function($){
	$(".filtercate").addClass('resize');
	$(".filtercate .title_category").click(function() {
		var width1 = $(window).width();
		if (width1 <= 768){
			$(".box_filter").toggle();
	    	$(this).parent().children().children(".click_filter").toggle();
		}
	});
	$(".box_type_price strong").click(function() {
		var width2 = $(window).width();
		if (width2 <= 768){
			$(".box_type_price > div").toggle();
			$(".btn_search_price").toggle();
		}
	});
	$(".box_typepro strong").click(function() {
	    var width3 = $(window).width();
		if (width3 <= 768){
			$(this).parent().children(".click_filter").toggle();
		}
	});
});