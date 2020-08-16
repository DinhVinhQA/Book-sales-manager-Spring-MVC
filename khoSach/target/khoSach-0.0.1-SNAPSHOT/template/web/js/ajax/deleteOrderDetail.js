function clickDeleteOrderDetail(orderDetailID) {
		swal({
			  title: "Xác nhận xóa",
			  text: "Bạn có chắc chắn muốn xóa đơn hàng này không ?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				  deleteOrderDetai(orderDetailID)
			  } 
			});
};
function deleteOrderDetai(data) {
	$.ajax({
		url : '/khoSach/api/orderdetailweb/'+data,
		type : 'DELETE',
		success : function(result) {
			swal("Đã hủy đơn thành công", {
			      icon: "success",
			    });
			$('#orderDetailStatus_'+data).html("");
			$('#orderDetailStatus_'+data).html("<p>Đã hủy đơn</p>");
		},
		error : function(error) {

		}
	});
};