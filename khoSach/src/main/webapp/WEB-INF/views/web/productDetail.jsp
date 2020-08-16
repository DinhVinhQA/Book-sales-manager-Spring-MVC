<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="cartURL" value="/api/cart" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kho Sách - Chi tiết sản phẩm</title>
</head>
<body>
	<div class="container chitiet-baner">
		<a href="/KhoSach">Trang chủ </a>/ <a href="">Danh mục sản phẩm</a>/ <a
			style="color: #ff5800" href="">Chi tiết sản phẩm</a>
	</div>
	<div class="container chitiet-body">
		<div class="row">
			<div class="col-lg-3 chitiet-body-left">
				<div class="widget-box">
					<h3>Chính sách đổi trả</h3>
					<div class="content-widget">
						<div class="returnpolicy icon-return">
							<i class='fa fa-hand-holding-usd'></i> <strong>Hoàn tiền
								101%</strong> Nếu phát hiện hàng giả
						</div>
						<div class="returnpolicy">
							<i class='fa fa-sync-alt'></i> <strong>Đổi trả trong
								vòng 7 ngày</strong> Không chấp nhận trường hợp thay đổi suy nghĩ
						</div>
						<div class="returnpolicy icon-waranty">
							<i class='fa fa-user-shield'></i> <strong>Bảo hành</strong> Nếu
							phát hiện hàng giả
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-9 chitiet-body-right">
				<div class="chitiet-body-right-content">
					<img src="<c:url value='/image/product/${product.thumbnail}'/>">
					<div class="chitiet-body-right-content-text">
						<h5>
							<bdi>${product.productName}</bdi>
						</h5>
						<div class="boder-content-text-ct"></div>
						<c:if test="${product.status==1}">
								<label class="trangThaiChiTiet">Còn hàng</label>
						</c:if>
						<c:if test="${product.status==0}">
								<label class="trangThaiChiTiet">Hết hàng</label>
						</c:if>
						<del style="font-size: 19px;">${(product.price*(100-product.salePrice))/100} VND </del>
						<ins>${product.price} VND </ins>
						<form:form modelAttribute="product"  id="formSubmit">
							<div class="ty-qty clearfix changer " id="qty_8962">
								<label class="ty-control-group__label" for="qty_count_8962">Số
									lượng:</label>
								<div class="ty-center ty-value-changer cm-value-changer">
									<a class="cm-decrease ty-value-changer__decrease"
										id="qty_count_tru" style="cursor: pointer;">−</a>
									<c:if test="${product.quantity!=0}">
										<input type="text" size="5"
											class="ty-value-changer__input cm-amount" id="qty_count"
											name="sL" value="1" >
									</c:if>
									<c:if test="${product.quantity==0}">
										<input type="text" size="5"
											class="ty-value-changer__input cm-amount" value="0"
											 readonly>
									</c:if>
									<a class="cm-increase ty-value-changer__increase"
										id="qty_count_cong" style="cursor: pointer;">+</a>
								</div>
							</div>

							<input type="hidden" value="${product.productID}" id="productCart" name="productCart">
							<div style="display: inline-flex;">
								<c:if test="${product.quantity!=0}">
									<button type="submit" id="btnAddCart" class="ty-product-block__button-add">Thêm
										vào giỏ hàng</button>
								</c:if>

							</div>
						</form:form>
					</div>
				</div>
				<div
					style="margin-top: 30px; background: #fff; width: 100%; padding: 10px">
					<h2>Thông tin chi tiết</h2>
					<div class="boder-content-text"></div>
					<p style="padding: 10px; margin-top: -33px;">${product.description }</p>
				</div>
			</div>
		</div>
		</div>
		<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="<c:url value='/template/web/js/ajax/addCart.js' />"></script>
		<script src="<c:url value='/template/web/js/ajax/getCart.js' />"></script>
</body>
</html>