<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="uploadURL" value="/api/groupcategory" />
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
					<h4 class="title mt-4 mb-5 text-center text-uppercase text-danger">Nhóm
						danh mục</h4>
					<div id="infoAlert">
					</div>
					<form:form modelAttribute="model" id="formSubmit">
						<form:hidden path="groupCategoriesID" id="groupCategoriesID" />
						<div class="row">
							<div class="form-group col-7">
								<label class="">Tên danh mục</label>
								<form:input path="groupCategoriesName" id="groupCategoriesName"
									cssClass="text form-control required" />
								<p class="text-danger" id="resultTenDanhMuc"></p>
							</div>
							<div class="form-group col-5">
								<label >Ảnh danh mục</label> <input type="file"
									name="picture" id="picture" class="text form-control" />
									<c:if test="${not empty model.groupCategoriesID}">
									<img style="40px" class="col-sm-2" alt="" src="<c:url value="/image/GroupCategory/${model.getPicture()}"/>">
									</c:if>
								<p class="text-danger" id="resultPicture"></p>
							</div>
					 	</div>
						<div class="form-group">
						<c:if test="${not empty model.groupCategoriesID}">
							<button type="submit" value="them" class="btn btn-success mb-3"
								onclick="return editGroupCategory('${uploadURL}')" name="btnThem">Cập nhật</button>
						</c:if>
						<c:if test="${empty model.groupCategoriesID}">
							<button type="submit" value="them" class="btn btn-success mb-3"
								onclick="return editGroupCategory('${uploadURL}')" name="btnThem">Thêm</button>
						</c:if>
							<a class="btn btn-danger ml-3 mb-3" href='<c:url value='/quan-tri/nhom-the-loai'/>'>
								Hủy</a>

						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="<c:url value='/template/admin/js/ajax/edit-upload-gc.js' />"></script>
</body>
</html>