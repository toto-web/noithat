var urlPrefix = 'PROTOCOL//' + location.host + '/noithat';

$(document).ready(function() {
	urlPrefix = urlPrefix.replace('PROTOCOL', window.location.protocol);
});

$('#btn-add-product').click(function(){
	console.log("add product start");
	var projectName = $('#text-input').val();
	var projectCode = $('#code-input').val();
	var categoriesId = $('#categories-id option:selected').val();
	var isVisible = $('input:radio[name="isVisible"]:checked').val();
	var productDescription=$('#short-description').val();
	var seo=$('#short-seo').val();
	var productContent=$('#product-content').val();
	
	var obj = {
			type : 1,
			projectName : projectName,
			projectCode : projectCode,
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
			alert(data.status);
		}
	});
});