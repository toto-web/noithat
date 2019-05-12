<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Forms</title>

<!-- Fontfaces CSS-->
<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
<link href="vendor/animsition/animsition.min.css" rel="stylesheet"
	media="all">
<link
	href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="vendor/wow/animate.css" rel="stylesheet" media="all">
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all">
<link href="vendor/slick/slick.css" rel="stylesheet" media="all">
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="css/theme.css" rel="stylesheet" media="all">
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<<<<<<< HEAD
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script> --%>
</head>
<script type="text/javascript" src="../vi/js/jquery-2.1.1.js"></script>
=======
<!-- <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script> -->
<!-- <script type="text/javascript" src="js/form.js"></script> -->
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script> --%>
</head>
>>>>>>> HaiNtn - Commit code
<body class="animsition">
	<div class="page-wrapper">


		<!-- MAIN CONTENT-->
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<strong>Thêm sản phẩm mới</strong>
								</div>
								<div class="card-body card-block">
									<form action="" method="post" enctype="multipart/form-data"
										class="form-horizontal">
										<!--  <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Static</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <p class="form-control-static">Username</p>
                                                </div>
                                            </div> -->
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="text-input" class=" form-control-label">Tên
													sản phẩm</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="text-input" name="text-input"
													placeholder="Ghế sofa" class="form-control">
												<!-- <small class="form-text text-muted">This is a help text</small> -->
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="code-input" class=" form-control-label">Mã
													sản phẩm</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="code-input" name="code-input"
													placeholder="G-011156" class="form-control">

											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="file-input" class=" form-control-label">Hình
													đại diện</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="file" id="file-input" name="file-input"
													class="form-control-file">
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="select" class=" form-control-label">Nhóm
													sản phẩm </label>
											</div>
											<div class="col-12 col-md-9">
<<<<<<< HEAD
												<select name="select" id="select" class="form-control">
=======
												<select name="categories-id" id="categories-id" class="form-control">
>>>>>>> HaiNtn - Commit code
													<option value="0">Chọn nhóm sản phẩm</option>
													<option value="1">Nội thất</option>
													<option value="2">Nhà bếp</option>
													<option value="3">Phòng khách</option>
												</select>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label class=" form-control-label">Hiện thị sản phẩm</label>
											</div>
											<div class="col col-md-9">
												<div class="form-check">
													<div class="radio">
														<label for="radio1" class="form-check-label "> <input
<<<<<<< HEAD
															type="radio" id="radio1" name="radios" value="option1"
=======
															type="radio" id="radio1" name="isVisible" value="1"
>>>>>>> HaiNtn - Commit code
															class="form-check-input">Ẩn
														</label>
													</div>
													<div class="radio">
														<label for="radio2" class="form-check-label "> <input
<<<<<<< HEAD
															type="radio" id="radio2" name="radios" value="option2"
=======
															type="radio" id="radio2" name="isVisible" value="0"
>>>>>>> HaiNtn - Commit code
															class="form-check-input">Hiển thị
														</label>
													</div>

												</div>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="password-input" class=" form-control-label">Mô
													tả ngắn</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="short-description"
													name="short-description" placeholder="Mô tả 1323"
													class="form-control">

											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="password-input" class=" form-control-label">Keywork
													- SEO</label>
											</div>
											<div class="col-12 col-md-9">
<<<<<<< HEAD
												<input type="text" id="short-description"
													name="short-description" placeholder="Ghế Sofa; Phòng khách"
=======
												<input type="text" id="short-seo"
													name="short-seo" placeholder="Ghế Sofa; Phòng khách"
>>>>>>> HaiNtn - Commit code
													class="form-control">
												 <small class="form-text text-<!--  -->muted">Mỗi keywork ngăn cách bởi dấu " ; "</small> 
											</div>
										</div>

										<!-- Chọn nhiều file  -->
										<!-- <div class="row form-group">
											<div class="col col-md-3">
												<label for="file-multiple-input" class=" form-control-label">Multiple
													File input</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="file" id="file-multiple-input"
													name="file-multiple-input" multiple=""
													class="form-control-file">
											</div>
										</div> -->
										<div class="form-group">
											<h5>Nội dung bài viết</h5>
<<<<<<< HEAD
											<textarea cols="80" id="editor" rows="10" name="content"></textarea>
=======
											<textarea cols="80" id="product-content-area" rows="10" name="content"></textarea>
>>>>>>> HaiNtn - Commit code
										</div>
									</form>
								</div>
								<div class="card-footer">
<<<<<<< HEAD
									<button type="submit" class="btn btn-primary btn-sm">
=======
									<button id="btn-add-product" type="submit" class="btn btn-primary btn-sm">
>>>>>>> HaiNtn - Commit code
										<i class="fa fa-dot-circle-o"></i> Thêm sản phẩm
									</button>
									<button type="reset" class="btn btn-danger btn-sm">
										<i class="fa fa-ban"></i> Nhập lại
									</button>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script src="vendor/bootstrap-4.1/popper.min.js"></script>
	<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="vendor/slick/slick.min.js">
		
	</script>
	<script src="vendor/wow/wow.min.js"></script>
	<script src="vendor/animsition/animsition.min.js"></script>
	<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script src="vendor/circle-progress/circle-progress.min.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="js/main.js"></script>


	<script>
		CKEDITOR.replace('content');
<<<<<<< HEAD
		var urlPrefix = 'PROTOCOL//' + location.host + '/sejoong';
		$('#add-new-news').click(
				function() {
					urlPrefix = urlPrefix.replace('PROTOCOL',
							window.location.protocol);
					var formData = new FormData();
					var file = $('#banner-picture')[0].files[0];
					var title = $('#title').val();
					var seo = $('#seo').val();
					var content = $('#content').val();
					formData.append('file', file);
					formData.append('title', title);
					formData.append('seo', seo);
					formData.append('content', content);
					console.log(formData);
					$.ajax({
						url : urlPrefix + '/CRUDNews?type=1',
						type : 'POST',
						async : true,
						data : formData,
						cache : false,
						contentType : false,
						processData : false,
						success : function(data) {
							alert(data.message);
						}
					});
				});
=======
		var urlPrefix = 'PROTOCOL//' + location.host + '/noithat';

		$(document).ready(function() {
			urlPrefix = urlPrefix.replace('PROTOCOL', window.location.protocol);
		});

		$('#btn-add-product').click(function(){
			console.log("add product start");
			var productName = $('#text-input').val();
			var productCode = $('#code-input').val();
			var categoriesId = $('#categories-id option:selected').val();
			var isVisible = $('input:radio[name="isVisible"]:checked').val();
			var productDescription=$('#short-description').val();
			var seo=$('#short-seo').val();
			var productContent=$('#product-content-area').val();
			console.log("productContent: "+productContent);
			var obj = {
					type : 1,
					productName : productName,
					productCode : productCode,
					categoriesId : categoriesId,
					isVisible : isVisible,
					productDescription : productDescription,
					seo : seo,
					productContent : productContent};
			
			var jsonData = JSON.stringify(obj);
			var fromData = new FormData();
			var pictureContent = $('#file-input')[0].files[0];
			fromData.append("type", "1");
			fromData.append('productPicture',pictureContent);
			fromData.append('jsonData', jsonData);
			$.ajax({
				url : urlPrefix + '/ProductServlet',
				type : 'POST',
				async : true,
				data : fromData,
				cache : false,
				contentType : false,
				processData : false,
				success : function(data) {
					console.log(data)
					var json = JSON.parse(data);
					alert(json.status);
				}
			});
		});
>>>>>>> HaiNtn - Commit code
	</script>
</body>

</html>
<!-- end document-->
