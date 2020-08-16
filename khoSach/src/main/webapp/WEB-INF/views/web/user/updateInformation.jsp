<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp"%>
<div class="container mt-3">
	<div class="modal fade" id="editInfoModal">
		<div class="modal-dialog">
			<div class="modal-content" style="width: 700px">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Cập nhật thông tin cá nhân</h4>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div style="height: 34px; padding: 5px; padding-left: 13px;"  id="alertCategory">
						
					</div>
					<form:form modelAttribute="user" id="formSubmit">
						<div class="row">
							<div class="col-sm-3">
								<div class="form-group">
									<label>Mã khách hàng</label>
									<form:input path="id" id="idModel" cssClass="text form-control" readonly="true"/>
								</div>
							</div>
							<div class="col-sm-5">
								<div class="form-group">
									<label>Tên khách hàng</label>
									<form:input path="fullName" id="fullName"
										cssClass="text form-control " />
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<label>Tên đăng nhập</label>
									<form:input path="userName" id="userName"  readonly="true"
										cssClass="text form-control " />
								</div>
							</div>
						</div>
						<div class="row p-2 pt-3">
							<div class="col-sm-5">
								<div class="form-group">
									<label>Ngày sinh</label> <input type="date"
										class="text form-control"
										value='<fmt:formatDate pattern = "yyyy-MM-dd"  value = "${user.dateOfBirth}" />'
										placeholder="Ngày sinh" required name="dateOfBirth">
								</div>
							</div>
							<div class="col-sm-5">
								<div class="form-group">
									<label style="width: 100%;">Giới tính</label>
									<form:radiobutton path="gender" value="1"
										style="margin-right: 10px;" />
									Nam
									<form:radiobutton path="gender" value="0" />
									Nữ

								</div>
							</div>
						</div>
						<div class="row p-2 pt-3">
							<div class="col-sm-10">
								<label>Địa chỉ </label>
								<form:input path="address" id="address"
									cssClass="text form-control " />
							</div>
						</div>
						<div class="row p-2 pt-3">
							<div class="col-sm-5">
								<label>Email </label>
								<form:input path="email" id="email"
									cssClass="text form-control " />
							</div>
							<div class="col-sm-5">
								<label>Số điện thoại </label>
								<form:input path="numberPhone" id="numberPhone"
									cssClass="text form-control " />
							</div>
						</div>
						<h1 style="text-align: right; margin-top: 10px;">
							<button style="font-size: 14px;"type="button" onclick="submitEdit('${userURL}')"
								class="btn btn-success mb-3">Cập nhật</button>
							<a  style="font-size: 14px; color: #fff"
								class="btn btn-danger ml-3 mb-3" style="color: #fff"
								data-dismiss="modal">Hủy</a>
						</h1>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

