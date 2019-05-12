jQuery(document).ready(function($){
	var slideshow =$('#boxslide');
	slideshow.owlCarousel({
	    items : 1,
	    margin: 0,
	    slideSpeed : 4000,
		autoplaySpeed: 1000,
		lazyLoad:true,
	    nav: true,
	    autoplay: true,
	    dots: true,
	    loop: true,
	    navText: ["<i class='flaticon-left-arrow'></i>","<i class='flaticon-arrow-point-to-right'></i>"]
	 });
	var slide_product =$('.list_product');
    slide_product.owlCarousel({
	    items : 4,
	    slideBy: 4,
	    margin: 30,
	    slideSpeed : 4000,
	    nav: true,
	    lazyLoad:true,
	    autoplay: false,
	    dots: true,
	    loop: true,
	    navText: ["<i class='flaticon-left-arrow'></i>","<i class='flaticon-arrow-point-to-right'></i>"],
	    responsive : {
      	0 : {
          items : 2,
	      slideBy: 2
      	},
      	480 : {
          items : 2,
	      slideBy: 2
      	},
      	768 : {
          items : 4,
	      slideBy: 4
     	 }
  		}
  	});
  	$(".disabled").hide();
    if($(".pagination > .active").next().hasClass("paginate_next")){
    	$(".paginate_next").hide();
    }else{
    	$(".paginate_next").show();
    }
   			 $(".paginate_prev").children().click(function(){
  					if(!$(".pagination > .active").prev().hasClass("paginate_prev")){
  						window.location.href=$(".pagination").children(".active").prev().children("a").attr("href");
  						
  					}
  					return false;
  					
  			});
  			$(".paginate_next").click(function(){
  					if(!$(".pagination").children(".active").next().hasClass("paginate_next")){
  						window.location.href= $(".pagination").children(".active").next().children().attr("href");
  						
  						
  					}
  					return false;
  					
  			});
  			
  	load_ajax_paginate=function(){
  			if($(".pagination > .active").next().hasClass("paginate_next")){
		    	$(".paginate_next").addClass("disabled").removeClass("paginate_next");
		    }
  			$(".paginate_prev").children().click(function(){
  					if(!$(".pagination > .active").prev().hasClass("paginate_prev")){
  						$(".pagination").children(".active").prev().children().click();
  					}
  					return false;
  			});
  			$(".paginate_next").children().click(function(){
  					if(!$(".pagination > .active").next().hasClass("paginate_next")){
  						$(".pagination").children(".active").next().children().click();
  					}
  					return false;
  			});

  			$(".pagination").children("li").children("a").click(function(){
  				if(!$(this).parent().hasClass("paginate_next") || !$(this).parent().hasClass("paginate_prev")){
	  				$.get($(this).attr("href"),function(data){
	  					$("body,html").animate({scrollTop:$("#content_ajax_product").offset().top+"px"},1000);
	  					$("#content_ajax_product").html(data);
						load_ajax_paginate();
	  				});
  				}
  				return false;
  			});
  			$(".disabled").hide();
  			
  	}

  	load_ajax_product=function(){

  			var mysearch=true;
			$(".myfilter[type='checkbox']").each(function(){
					if($(this).prop("checked")){
						mysearch=false;
					}
			});
			if($("#myprice").attr("min") !== $("#minprice").val() || $("#myprice").attr("max") !== $("#maxprice").val()){
				mysearch=false;
			}
			
			if($("#priceorder").val() !== "0"){
				mysearch=false;
			}

			if(mysearch){
				if(window.location.search != undefined && window.location.search != ""){
					var t = window.location.href.split("?");			
					
					window.location.href=t[0];
				}
			}



  		var myresult="cate="+$("#content_ajax_product").attr("alias");
			$(".myfilter").each(function(){
				if($(this).attr("type")=='checkbox'){
					if($(this).prop("checked")){
						myresult= myresult+ "&"+ $(this).attr("name")+"[]="+$(this).val();
					}
				}else{
					if($(this).val().length > 1){
						myresult= myresult+ "&"+ $(this).attr("name")+"[]="+$(this).val();
					}
				}
			});

			$.ajax({
				type:"GET",
				url: "/ajax_parent?"+myresult,
				success:function(data){
					$("#content_ajax_product").html(data);
					load_ajax_paginate();
					
				},
				error:function(e){
					console.log(e);
				}
			});

  	}
  	$(function() {
  		if($("input").hasClass("minprice") && $("input").hasClass("maxprice")){
  				var minprice= parseInt($("#minprice").val());
  				var maxprice= parseInt($("#maxprice").val());
  				var min_default_price =parseInt($("#myprice").attr("min"));
  				var max_default_price =parseInt($("#myprice").attr("max"));
				$("#sidebar-fitler-price").slider({
				  range: true,
				  min: min_default_price,
				  max: max_default_price,
				  values: [ minprice, maxprice ],
				  change:function(event,val){
				  	  $("#minprice").val(val.values[0]);
				  	  $("#maxprice").val(val.values[1]);

				  	  $("#myprice").val(val.values[0]+"-"+val.values[1]);
				  	  load_ajax_product();
				  }
				});

  		}
  	
	});
	

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
	if(window.location.search != undefined && window.location.search != ""){
		
		if($("div").hasClass("showproduct")){
			$("body,html").animate({scrollTop:$(".showproduct").offset().top+"px"},1000);
		}
		$(".myfilter").change(function(){
			load_ajax_product();
			
		});

	}else{
		$(".myfilter").change(function(){
			window.location.href=window.location.href+"?"+$(this).attr("name")+"="+$(this).val();
		});
		$(".myfilterprice").click(function(){
					window.location.href=window.location.href+"?"+$("#myprice").attr("name")+"="+$("#myprice").val();
		});
	}

});