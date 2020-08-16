<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="deleteURL" value="/api/groupcategory" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách nhóm thể loại</title>
</head>
<body>
	<div class="container-fluid">
		<h2 style="text-align: right;">
			<a class="text-white btn btn-success mr-3" href="<c:url value='/quan-tri/nhom-the-loai/chinh-sua'/>">
				Thêm nhóm thể loại</a>
		</h2>
		<h1 class="h3 mb-2 text-gray-800">Danh sách nhóm thể loại</h1>
		<div style="background: #fff" class="mb-4">
			<div class="card-body">
				<div class="table-responsive table-hover">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>Mã danh mục</th>
								<th>Tên danh mục</th>
								<th>Ảnh danh mục</th>
								<th>Thao tác</th>
								

							</tr>
						</thead>
						<tbody>
							<c:forEach  items="${listGroupCategory}" var="groupCategory">
						
							<tr id="trGC_${groupCategory.getGroupCategoriesID()}">
								<td>${groupCategory.getGroupCategoriesID()}</td>
								<td>${groupCategory.getGroupCategoriesName()}</td>
								<td><img style="width: 40px" alt="" src="<c:url value="/image/GroupCategory/${groupCategory.getPicture()}" />"></td>
								<td>
								<c:url var="updateGroupCategoryURL" value="/quan-tri/nhom-the-loai/chinh-sua">
										<c:param name="id" value="${groupCategory.getGroupCategoriesID()}"/>															
								</c:url>	
								<a href="${updateGroupCategoryURL}"
									class="btn btn-sm btn-success mr-3"> <i class="fa fa-edit"></i>
								</a>
								<a onclick="deleteCheck(${groupCategory.getGroupCategoriesID()},'${deleteURL}')"	style="color: #fff; cursor: pointer;" class="btn btn-sm btn-danger mr-3"> <i class="fa fa-trash-o"></i> </a>'
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="<c:url value='/template/admin/js/ajax/delete-gc-c-gp.js' />"></script>
</body>
</html>