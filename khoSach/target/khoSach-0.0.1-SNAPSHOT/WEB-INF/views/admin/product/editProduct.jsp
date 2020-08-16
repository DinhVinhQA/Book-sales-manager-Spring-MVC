<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="productURL" value="/api/product" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row shadow">
			<div class="col-sm-12">

				<div class="px-2">
					<h4 class="title mt-4 mb-5 text-center text-uppercase text-danger">Sản
						phẩm</h4>
					<div id="infoAlert">
					</div>
					<form:form modelAttribute="model" id="formSubmit">
						<form:hidden path="productID" id="productID" />
					<%-- 	<form:hidden path="dateAdded" id="dateAdded" /> --%>
						<form:hidden path="delete" id="delete" />
						<div class="row">
							<div class="form-group col-sm-7">
								<label class="">Tên sản phẩm</label>
								<form:input path="productName" id="productName"
									cssClass="text form-control required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
							<div class="form-group col-sm-5">
								<label for="groupProductID"
									class=" control-label no-padding-right">Nhóm sản phẩm:</label>
								<div class="col-sm-9">
									<form:select path="groupProductID" cssClass="text form-control required"
										id="categoryID">
										<form:option value="" label="-- Chọn nhóm sản phẩm --" />
										<form:options items="${groupProducts}" />
									</form:select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-sm-4">
								<label class="">Tác giả</label>
								<form:input path="author" id="author"
									cssClass="text form-control required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
							<div class="form-group col-sm-4">
								<label class="">Nhà xuất bản</label>
								<form:input path="publisher" id="publisher"
									cssClass="text form-control required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
							<div class="form-group col-sm-4">
								<label class="">Năm xuất bản</label>
								<form:input path="yearOfPublication" id="yearOfPublication"
									cssClass="text form-control typeNumber required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-sm-6">
								<label class="">Ảnh sản phẩm</label> <input type="file"
									name="thumbnail" id="thumbnail"
									class="text form-control col-sm-8" />
								<c:if test="${not empty model.productID}">
									<img style="" class="col-sm-2" alt=""
										src="<c:url value="/image/Product/${model.thumbnail}"/>">
								</c:if>
								<p class="text-danger" id="resultPicture"></p>
							</div>
							<div class="form-group col-sm-2">
								<label class="">Số trang</label>
								<form:input path="numberOfPages" id="numberOfPages"
									cssClass="text form-control typeNumber required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
							<c:if test="${not empty model.productID}">
								<div class="form-group col-sm-4">
								<label for="status"
									class=" control-label no-padding-right">Trạng thái</label>
								<div class="col-sm-9">
									<form:select path="status" cssClass="text form-control"
										id="status">
										<form:options items="${listStatus}"/>
									</form:select>
								</div>
								</div>
							</c:if>

						</div>
						<div class="row">
							<div class="form-group col-sm-4">
								<label class="">Số lượng</label>
								<form:input path="quantity" id="quantity"
									cssClass="text form-control typeNumber required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
							<div class="form-group col-sm-4">
								<label class="">Giá sản phẩm</label>
								<form:input path="price" id="price"
									cssClass="text form-control typeNumber required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
							<div class="form-group col-sm-4">
								<label class="">Phần trăm khuyến mãi</label>
								<form:input path="salePrice" id="salePrice"
									cssClass="text form-control typeNumber required" />
								<p class="text-danger" id="resultGroupProductName"></p>
							</div>
						</div>
						<div class="form-group">
						<label>Mô tả:</label>
						<form:textarea path="description" id="description" cssClass="form-control"/>
					</div>
						<div class="form-group">
							<c:if test="${not empty model.productID}">
								<button type="submit" value="them" class="btn btn-success mb-3"
									onclick="return editProduct('${productURL}')" name="btnThem">Cập nhật</button>
							</c:if>
							<c:if test="${empty model.productID}">
								<button onclick="return editProduct('${productURL}')" type="submit" value="them" class="btn btn-success mb-3"
									name="btnThem">Thêm</button>
							</c:if>
							<a class="btn btn-danger ml-3 mb-3" href="<c:url value='/quan-tri/san-pham'/>"> Hủy</a>

						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="<c:url value='/template/admin/js/ajax/edit-upload-p.js' />"></script>
</body>
</html>