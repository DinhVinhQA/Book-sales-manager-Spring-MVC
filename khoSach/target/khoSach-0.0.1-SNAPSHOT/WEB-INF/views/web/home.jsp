<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
</head>
<body>
<div class="container">
<div style="margin-top: 50px; margin-bottom: 20px">
		<img src="image/_Ngang-3.png" style="width: 100%;">
	</div>

	<section class="product" id="product-1">

		<h2 class="title-section">FLASH SALE</h2>
		<div class="row" style="background: #fff">
			<div class="col-lg-12 pl-0"
				style="padding-left: 0; padding-right: 0px;">
				<div class="product-list"
					style="grid-template-columns: repeat(6, 1fr);">
					<c:forEach items="${listProductSale}" var="productSale" >
				  		<a href='<c:url value='chi-tiet-san-pham?id=${productSale.productID }' />' style="margin: 10px;">
						<div class="product-single text-center">
							<div class="product-img">
								<img style="padding-top: 20px"
									src='<c:url value='/image/product/${productSale.thumbnail}'/>' alt="">
								
								<div class="sale">
									${productSale.salePrice}%
								</div>
							</div>
							<div class="product-desc">
								<div class="product-title" style="padding: 10px;">
									<h4 style="color: #000" >${productSale.productName}</h4>
								</div>
							</div>
							<div class="product-desc ">
								<div class="product-price" style="padding-left: 10px">
									<ins>${(productSale.price*(100-productSale.salePrice))/100} VND</ins>
									<del>${productSale.price} VND</del>
								</div>
							</div>

					</div>
					</a>
					</c:forEach>
					<!-- End of single-product  -->
				</div>
				<!-- End of product-list -->
			</div>
			<!-- End of col-lg-7 -->
		</div>

		<div class="product-seemore" style="">
			<p>
				<a>Xem Thêm</a>
			</p>
		</div>
	</section>
</div>
</body>
</html> 