$('#submitorder').click(function(e) {
					e.preventDefault();
					var data = {};
				    var formData = $('#formSubmit').serializeArray();
				    $.each(formData, function (i, v) {
			            data[""+v.name+""] = v.value;
			        });
				    data["productIDs"] = $('#productIDs').val();
				    addOrder(data);
				});

		function addOrder(data) {
			$.ajax({
				url : '/khoSach/api/order',
				type : 'POST',
				data : JSON.stringify(data),
				contentType : 'application/json',
				success : function(res) {
					 location.replace("/khoSach/dat-hang-thanh-cong");
				},
				error : function(res) {
					
				}
			});
		}