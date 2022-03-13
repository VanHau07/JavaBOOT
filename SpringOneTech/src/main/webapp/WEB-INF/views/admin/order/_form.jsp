<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<h4 class="label label-success">${message}</h4>
<br>
<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" name="form" modelAttribute="entity">
			<div class="form-group col-sm-2">
				<label>ID:</label>
				<form:input path="id" class="form-control" readonly="true"
					placeholder="Auto" />
			</div>
			<div class="form-group col-sm-5">
				<label>Khách hàng:</label>
				<form:input path="users.id_user" class="form-control" readonly="true" />
			</div>
			<div class="form-group col-sm-5">
				<label>Ngày đặt hàng:</label>
				<form:input path="ngaydat" class="form-control" readonly="true" />
			</div>
			<div class="form-group col-sm-6">
				<label>Số điện thoại:</label>
				<form:input path="phone" class="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-6">
				<label>Email:</label>
				<form:input path="email" class="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-6">
				<label>Địa chỉ:</label>
				<form:input path="dia_chi" class="form-control" readonly="true"/>
			</div>
			<div class="form-group col-sm-6">
				<label>Tổng tiền:</label>
				<form:input path="tien" class="form-control" readonly="true" />
			</div>
			<div class="col-sm-12">
				<label>Trạng thái: </label> <span class="btn btn-warning"
					style="padding: 0px 10px 0px 10px"><form:radiobutton
						path="status" value="Đã nhận đơn hàng" checked="checked" /> Đã
					nhận đơn hàng </span> <span class="btn btn-info "
					style="padding: 0px 10px 0px 10px"><form:radiobutton
						path="status" value="Đã giao kho" /> Đã giao kho </span> <span
					class="btn btn-success" style="padding: 0px 10px 0px 10px"><form:radiobutton
						path="status" value="Đang vận chuyển" /> Đang vận chuyển </span> <span
					class="btn btn-primary" style="padding: 0px 10px 0px 10px"><form:radiobutton
						path="status" value="Giao hoàn tất" />Giao hoàn tất </span>
						
						 <span
					class="btn btn-danger" style="padding: 0px 10px 0px 10px"><form:radiobutton
						path="status" value="Đã hủy đơn hàng" />Đã hủy đơn hàng</span>
						
						 
				
			</div>
			<br />
			<div class="form-group col-sm-12">
				<label>Mô tả:</label>
				<form:textarea path="chuthich" class="form-control" readonly="true"/>
			</div>


			<div class="form-group col-sm-6">


				<button class="btn btn-warning" formaction="${base}/update">SỬA</button>
				<%-- 	<button class="btn btn-danger" formaction="${base}/delete">XÓA</button> --%>
				<a class="btn btn-default" href="${base}/index">Làm mới</a>

			</div>
		</form:form>
		<c:if test="${!empty details}">
			<jsp:include page="_details.jsp" />
		</c:if>
	</div>
</div>

