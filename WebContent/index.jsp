<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi-VN">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
	<title>Nội thất chính hãng</title>

	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/general/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/general/css/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/general/css/header.css">
	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/general/css/product.css">
	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/cateparent/css/cateparent.css">
	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/general/css/footer.css">
	<link rel="stylesheet" type="text/css"
	href="themes/thuvien/general/css/flaticon.css">
 <script src="js/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
	 <script src="themes/thuvien/general/js/slider.js" type="text/javascript"></script>
    
    <!-- <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" /> -->
   <link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,regular,italic,700,700italic&subset=latin-ext,greek-ext,cyrillic-ext,greek,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />

</head>
<body>

	<content>
		
		<!-- Include fiile header - menu -->
			<%@include file="View/view-header.jsp" %>
		<!-- end Include file header -->
	<!-- menu ngang -->
	<section class="content_main">
		<div class="container">
			
<!-- Include fiile slider -->
			<%@include file="View/view-slider.jsp" %>
		<!-- end Include file slider -->
		
		
				<div class="col-sm-3 nonepadd">
					<div class="filtercate">
						<h2 class="title_category">
							loại Nội thất<i class="flaticon-arrow-point-to-right"></i>
						</h2>
						<div class="box_filter_cate">
							
							<div class="box_filter">
							<a href="phong-khach.html" title="PHÒNG KHÁCH"><h3>
										
										<i class="flaticon-arrow-point-to-right"></i>NỘI THẤT PHÒNG KHÁCH
									</h3></a>	
								<a href="phong-an.html"  title="PHÒNG ĂN"><h3>
										<i class="flaticon-arrow-point-to-right"></i>NỘI THẤT PHÒNG BẾP
									</h3></a><a href="phong-ngu.html" title="PHÒNG NGỦ"><h3>
										<i class="flaticon-arrow-point-to-right"></i>NỘI THẤT PHÒNG NGỦ
									</h3></a><a href="khong-gian-khac.html" title="KHÔNG GIAN KHÁC"><h3>
										<i class="flaticon-arrow-point-to-right"></i>KHÔNG GIAN KHÁC
									</h3></a><a href="bo-suu-tap.html" title="BỘ SƯU TẬP"><h3>
										<i class="flaticon-arrow-point-to-right"></i>BỘ SƯU TẬP
									</h3></a> 
							</div>
						</div>
						
					</div>
				</div>
				
				<!-- Include fiile product -->
				<%@include file="View/view-product.jsp" %>
				<!-- end Include file product -->
			</div>
			<!-- <div class="row">
				<div class="col-sm-12 boxseo">
					<h2 class="exp_cate">
						<i class="iconsprites_exp"><img
							data-src="/themes/thuvien/general/img/exp.png"
							alt="icon kinh nghiệm mua sắm"
							src="#"
							class="lazyload_not"></i>
					</h2>
					<div class="desctext">
						<p>
						<p>Mua b&aacute;n Thiết kế thi c&ocirc;ng, nội thất,
							nội&nbsp;thất&nbsp;gi&aacute; tốt nhất. thuvien.vn - Website
							mua sắm online trực tiếp với&nbsp;h&agrave;ng trăm ngh&igrave;n
							sản phẩm từ h&agrave;ng ngh&igrave;n nh&agrave; cung cấp
							kh&aacute;c nhau.</p>
						</p>
					</div>
				</div>
			</div> -->
		</div>
	</section>
	<!-- Include fiile footer - menu -->
			<%@include file="View/view-footer.jsp" %>
		<!-- end Include file footer -->
	
	</content>
	
	<script type="text/javascript"
		src="themes/thuvien/general/js/jquery.min.js" defer></script>
	<script type="text/javascript"
		src="themes/thuvien/general/js/bootstrap.min.js" defer></script>
	<script type="text/javascript"
		src="themes/thuvien/general/js/owl.carousel.min.js" defer></script>
	<script type="text/javascript"
		src="themes/thuvien/general/js/lazyload.min.js" defer></script>
	<script type="text/javascript"
		src="themes/thuvien/general/js/jquery-ui.js"></script>
	<script type="text/javascript"
		src="themes/thuvien/general/js/jquery.cookie.min.js" defer></script>
	<script type="text/javascript"
		src="themes/thuvien/general/js/general.min.js" defer></script>
	<script type="text/javascript"
		src="themes/thuvien/cateparent/js/cateparent.js" defer></script>
	<div id="popup_loading_ajax" class="popup_loading_ajax">
		<div class="loading_ajax_content">
			<img src="themes/thuvien/general/img/ajax.gif" class="lazyload">
		</div>
		<div class="loading_ajax_background"></div>
	</div>
	<script type="text/javascript"
		src="../apis.google.com/js/api_client.js" async defer></script>
	
</body>
<!-- Mirrored from thuvien.vn/noi-that by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Mar 2019 15:31:55 GMT -->
</html>