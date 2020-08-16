function clickDeleteOrder(orderID) {
		swal({
			  title: "Xác nhận xóa",
			  text: "Bạn có chắc chắn muốn xóa đơn hàng này không ?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				  deleteOrder(orderID)
			  } 
			});
};
function deleteOrder(data) {
	$.ajax({
		url : '/khoSach/api/order/'+data,
		type : 'DELETE',
		success : function(result) {
			swal("Đã hủy đơn thành công", {
			      icon: "success",
			    });
			$('#orderDelete_'+data).remove();
		},
		error : function(error) {

		}
	});
};