<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="Shortcut Icon"
	href="${pageContext.request.contextPath}/res/imgs/shortcut.ico">
<title>Giải pháp Bkav Core CA</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/res/plugins/bootstrap-3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/res/plugins/font-awesome-4.3.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/res/plugins/jquery-2.1.1/jquery.js"></script>
<style>
.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}

.error {
	color: red;
	font-style: italic;
	font-size: 12px;
}

.ok_btn {
	background-color: rgb(69, 182, 176);
	border-color: #33847F;
}

.ok_btn:HOVER {
	background-color: #33847F;
}

#add-worker-modal .modal-dialog .modal-header {
	background-color: rgb(69, 182, 176);
	color: #fff;
}

#edit-prop .modal-dialog .modal-header {
	background-color: rgb(69, 182, 176);
	color: #fff;
}

.modal-dialog .modal-body {
	color: #549A97;
}

#add-worker-modal .modal-dialog .modal-body {
	padding-left: 40px !important;
	padding-right: 40px !important;
	max-height: 450px;
	overflow: auto;
}

.pkcs11-token {
	display: none;
}

#pkcs11-legend {
	display: none;
}

.signature-config {
	display: none;
}

.input-error {
	color: #DF815D;
	font-style: italic;
	font-size: 12px;
}

select {
	border-radius: 1px !important;
}
</style>
</head>
<body>
	<div class="container">
		<form id="upload" action="#" enctype="multipart/form-data">
			<!-- PKCS12 Token option -->
			<fieldset id="pkcs12-legend">
				<legend id="pdflegend"> Transfer file to master:</legend>
				<div class="pkcs12-token">
					<div class="row form-group">
						<div class="col-md-6 col-xs-12 col-sm-12 col-lg-6">
							<label>Select File:</label>
							<div class="input-group">
								<span class="input-group-btn"> <span
									class="btn btn-primary btn-file"> Browse <input
										id="keystorepath" type="file" accept="*/*">
								</span>
								</span> <input id="label" type="text" class="form-control"
									readonly="readonly">
							</div>
						</div>
					</div>

				</div>
			</fieldset>
			<!-- ***** -->
		</form>
		<div class="form-group">
			<button id="submit" class="btn btn-default">Upload</button>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/res/plugins/bootstrap-3.3.5/js/bootstrap.min.js"></script>
	<script>
		var urlPrefix = 'http://' + location.host + '/bkavcoreca';

		$(document)
				.ready(
						function() {

							$(document)
									.on(
											'change',
											'.btn-file :file',
											function() {
												var input = $(this), numFiles = input
														.get(0).files ? input
														.get(0).files.length
														: 1, label = input
														.val().replace(/\\/g,
																'/').replace(
																/.*\//, '');
												input.trigger('fileselect', [
														numFiles, label ]);
											});

							$('.btn-file :file')
									.on(
											'fileselect',
											function(event, numFiles, label) {
												$('#file-to-sign-error').text(
														'');

												var input = $(this).parents(
														'.input-group').find(
														':text'), log = numFiles > 1 ? numFiles
														+ ' files selected'
														: label;

												if (input.length) {
													input.val(log);
												} else {
													if (log)
														alert(log);
												}

											});
						});

		var keystorepath = "";

		$('#submit').click(function() {
			if (checkPKCS12()) {
				pkcs12Submit();
			}
		});

		function checkPKCS12() {
			keystorepath = $('#keystorepath').val();

			if (keystorepath == null || keystorepath == "") {
				$('#keystorepath-error')
						.text(
								'[ERROR] Select keystore file (*.p12/*.pfx) to continue.');

				return false;
			} else {
				$('#keystorepath-error').text('');
			}
			return true;
		}

		function pkcs12Submit() {
			var file = $('#keystorepath')[0].files[0];

			var formData = new FormData();
			formData.append('file', file);
			$.ajax({
				url : urlPrefix + '/FileUpload',
				type : 'POST',
				async : true,
				data : formData,
				cache : false,
				contentType : false,
				processData : false,
				success : function(data) {
					$('.add-loader').hide();
					$('#add-worker-confirm').attr('disabled', false);
					$('#add-worker-modal').modal('hide');

					alert(data.message);
				}
			});
		}
	</script>
</body>
</html>