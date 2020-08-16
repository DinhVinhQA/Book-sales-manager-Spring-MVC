<%@page import="com.khosach.util.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="userURL" value="/api/user" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kho sách - Thông tin cá nhân</title>
</head>
<body>
<div class="container information">

	<div class="row ">
		<div class="information-left col-2">
			<nav class="menu-left-info">
				<label>Xin chào <%=SecurityUtils.getPrincipal().getFullName()%></label>
				<ul>
					<li><a style="border-radius: 2px; padding: 5px; background: #ff5800; color: #fff;" href="">Quản lý tài khoản</a>
						<ul class="sub-menu-left-info">
							<li><a style="color: #ff5800" href='<c:url value='thong-tin-tai-khoan'/>'>Thông tin tài khoản</a></li>
							<li><a href="<c:url value='thay-doi-mat-khau'/>">Thay đổi mật khẩu</a></li>
						</ul>
					</li>
					<li><a href="">Quản lý đơn hàng</a>
						<ul class="sub-menu-left-info">
							<li><a href="<c:url value='quan-ly-don-hang'/>">Tất cả đơn hàng</a></li>
							<li><a href="<c:url value='quan-ly-don-hang-huy'/>">Đơn hàng hủy</a></li>
						</ul></li>
					<li><a href="<c:url value='/thoat'/>">Đăng xuất</a></li>
				</ul>
			</nav>
		</div>
		<div class="information-right clo-10 tab-content">
			<div class="information-right-content tab-pane fade in show active"
				id="thongTinKhachHang">
				<div class="information-right-content-title">
					<h4>THÔNG TIN TÀI KHOẢN</h4>
					<label id="editInfo"><i class="fa fa-edit"></i></label>
				</div>
				<hr>

				<div class="information-right-content-sub">
					<div class="information-right-content-sub-line">
						<label>Tên khách hàng : </label>
						<p>${user.fullName}</p>
					</div>

					<div class="information-content-text"></div>
					<div class="information-right-content-sub-line">
						<label>Tên đăng nhập : </label>
						<p>${user.userName}</p>
					</div>
					<div class="information-content-text"></div>
					<div class="information-right-content-sub-line">
						<label>Ngày sinh : </label>
						<p>
							<fmt:formatDate pattern="yyyy-MM-dd" value="${user.dateOfBirth}" />
						</p>
					</div>
					<div class="information-content-text"></div>
					<div class="information-right-content-sub-line">
						<label>Giới tính : </label>
						<c:if test="${user.gender==1 }">
							<p>Nam</p>
						</c:if>
						<c:if test="${user.gender==0 }">
							<p>Nữ</p>
						</c:if>
						<p></p>
					</div>
					<div class="information-content-text"></div>
					<div class="information-right-content-sub-line">
						<label>Địa chỉ : </label>
						<p>${user.address}</p>
					</div>
					<div class="information-content-text"></div>
					<div class="information-right-content-sub-line">
						<label>Email : </label>
						<p>${user.email}</p>
					</div>
					<div class="information-content-text"></div>
					<div class="information-right-content-sub-line">
						<label>Số điện thoại : </label>
						<p>${user.numberPhone}</p>
					</div>
					<div class="information-content-text"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- cập nhậtthông tin -->
<%@ include file="updateInformation.jsp"%>
<!-- end cập nhậtthông tin -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="<c:url value='/template/web/js/ajax/edit.js' />"></script>
</body>
</html>

