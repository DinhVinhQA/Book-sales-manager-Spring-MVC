function checkRequired() {
	var flag = true;
	$(".required").each(function() {
		var check = $(this).val();
		if (check == '') {
			flag = false;
		}
	})
	return flag;
}
function editProduct(url) {
	if (checkRequired() == true) {
		var dataArray = {};
		var files = $('#thumbnail')[0].files[0];
		var productID = $('#productID').val();
		if (productID.length == 0) {
			if (files != undefined) {
				var reader = new FileReader();
				reader.onload = function(e) {
					dataArray["base64"] = e.target.result;
					dataArray["thumbnail"] = files.name;
					var formData = $('#formSubmit').serializeArray();
					$.each(formData, function(i, v) {
						dataArray["" + v.name + ""] = v.value;
					});
					dataArray["description"] = CKEDITOR.instances['description'].getData();
					addProduct(dataArray, url);
				};
				reader.readAsDataURL(files);
			} else {
				$('#resultPicture')
						.html(
								'<i class="fa fa-exclamation-circle"></i> Vui lòng chọn file ảnh!')
			}
		} else {
			if ($("#thumbnail").val().length == 0) {
				var formData = $('#formSubmit').serializeArray();
				$.each(formData, function(i, v) {
					dataArray["" + v.name + ""] = v.value;
				});
				dataArray["description"] = CKEDITOR.instances['description']
						.getData();
				updateProduct(dataArray, url);
			} else {
				var reader = new FileReader();
				reader.onload = function(e) {
					dataArray["base64"] = e.target.result;
					dataArray["thumbnail"] = files.name;
					var formData = $('#formSubmit').serializeArray();
					$.each(formData, function(i, v) {
						dataArray["" + v.name + ""] = v.value;
					});
					dataArray["description"] = CKEDITOR.instances['description']
							.getData();
					addProduct(dataArray, url);
				};
				reader.readAsDataURL(files);
			}

		}
		return false;
	}
};

function addProduct(data, url) {
	$
			.ajax({
				url : url,
				type : 'POST',
				data : JSON.stringify(data),
				contentType : 'application/json',
				success : function(res) {
					$('#infoAlert').html("");
					$('#infoAlert')	.append('<div style="height: 34px; padding: 5px; padding-left: 13px;"  id="alertCategory"></div>');
					$('#alertCategory').addClass("alert alert-success");
					$('#alertCategory').append('<button type="button" class="close" data-dismiss="alert">&times;</button>');
					$('#alertCategory').append('Thêm thành công');
				},
				error : function(res) {
					$('#infoAlert').html("");
					$('#infoAlert')	.append('<div style="height: 34px; padding: 5px; padding-left: 13px;"  id="alertCategory"></div>');
					$('#alertCategory').addClass("alert alert-success");
					$('#alertCategory')	.append('<button type="button" class="close" data-dismiss="alert">&times;</button>');
					$('#alertCategory').append('Lỗi hệ thống');
				}
			});
}
function updateProduct(data, url) {
	$
			.ajax({
				url : url,
				type : 'PUT',
				data : JSON.stringify(data),
				contentType : 'application/json',
				success : function(res) {
					$('#infoAlert').html("");
					$('#infoAlert')	.append('<div style="height: 34px; padding: 5px; padding-left: 13px;"  id="alertCategory"></div>');
					$('#alertCategory').addClass("alert alert-success");
					$('#alertCategory').append('<button type="button" class="close" data-dismiss="alert">&times;</button>');
					$('#alertCategory').append('Cập nhật thành công');
				},
				error : function(res) {
					$('#infoAlert').html("");
					$('#infoAlert')	.append('<div style="height: 34px; padding: 5px; padding-left: 13px;"  id="alertCategory"></div>');
					$('#alertCategory').addClass("alert alert-success");
					$('#alertCategory')	.append('<button type="button" class="close" data-dismiss="alert">&times;</button>');
					$('#alertCategory').append('Lỗi hệ thống');
				}
			});
}