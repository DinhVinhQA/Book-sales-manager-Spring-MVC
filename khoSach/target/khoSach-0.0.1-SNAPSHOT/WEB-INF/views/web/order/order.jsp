<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<section class="product-detail bg-gray py-5">
	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb text-capitalize bg-white">
				<li class="breadcrumb-item"><a href="index.html"
					class="text-purple font-15pt">trang chủ</a></li>
				<li class="breadcrumb-item active font-15pt">xác nhận</li>
			</ol>
		</nav>
		<div class="row">
			<div class="col-sm-12 col-md-5 col-lg-4">
				<div class="card sticky-top">
					<div class="card-header font-18pt font-title bg-white py-2 px-3">Thông
						tin đơn hàng</div>
					<div class="card-body cart-cofirm-container py-0">
					<c:forEach items="${listCartOrder}" var="cart">
				
						<div class="cart-confirm-item d-flex">
							<div class="cart-confirm-img">
								<img src="<c:url value='/image/Product/${cart.product.thumbnail}'/>" class="img-fluid">
							</div>
							<div
								class="cart-confirm-title line-height-one font-14pt text-capitalize">
								${cart.product.productName}
							</div>
							<div class="cart-confirm-quantity line-height-one font-14pt">
								${cart.quantity}
							</div>
							<div
								class="cart-confirm-price line-height-one text-right font-14pt">
								${cart.quantity * (cart.product.price*(100-cart.product.salePrice))/100 } VND
							</div>
						</div>
					</c:forEach>
					</div>
					<div class="card-footer py-2 px-3">
						<div
							class="cart-confirm-footer d-flex align-items-center justify-content-between">
							<div class="cart-confirm-footer-title font-title">Thành
								tiền</div>
							<div class="cart-confirm-footer-price text-danger font-title">${totalPrice} VND
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-7 col-lg-8">
				<div class="card customer-info">
				<input type="hidden" value="${productIDs}" id="productIDs">
					<div class="card-header font-title font-18pt bg-white py-2 px-3">Thông
						tin khách hàng</div>
					<div class="card-body py-2 px-3">
					<form:form modelAttribute="model" id="formSubmit">
							<div class="row">
								<div class="col-sm-12 col-md-6 col-lg-6 form-group">
									<label class="d-block w-100 font-15pt font-title">Tên
										khách hàng:<span class="text-danger font-title ml-1">(*)</span>
									</label> 
									<form:input path="fullName" id="fullName"
									cssClass="text form-control " />
								</div>
								<div class="col-sm-12 col-md-6 col-lg-6 form-group">
									<label class="d-block w-100 font-15pt font-title">Số
										điện thoại:<span class="text-danger font-title ml-1">(*)</span>
									</label> <form:input path="numberPhone" id="numberPhone"
									cssClass="text form-control " />
								</div>
								<div class="col-sm-12 col-md-6 col-lg-6 form-group">
									<label class="d-block w-100 font-15pt font-title">Địa
										chỉ:<span class="text-danger font-title ml-1">(*)</span>
									</label><form:input path="address" id="address"
									cssClass="text form-control " />
								</div>
								<div class="col-sm-12 col-md-6 col-lg-6 form-group">
									<label class="d-block w-100 font-15pt font-title">Email:<span
										class="text-danger font-title ml-1">(*)</span></label> 
										<form:input path="email" id="email"
									cssClass="text form-control " />
								</div>
								<div class="col-sm-12 col-md-12 col-lg-12 form-group">
									<label class="d-block w-100 font-15pt font-title">Phương
										thức thanh toán:<span class="text-danger font-title ml-1">(*)</span>
									</label> <select class="form-control " name="paymentMethods">
										<option value="1">Thanh toán khi giao hàng</option>
										<option value="2">Thanh toán qua thẻ</option>
									</select>
									<div class=" col-sm-12 col-md-12 col-lg-12 text-right">
										<label class="w-100"></label>
										<button type="submit" style="background: #ff5800;" id="submitorder"
											class="btn btn-warning ml mb-5 font-title text-uppercase"
											name="send--customer">xác nhận đặt hàng</button>
									</div>
								</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="<c:url value='/template/web/js/ajax/order.js' />"></script>
</body>
</html>