<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<br/>
<div class="container" style="background-color: #fff; margin-bottom: 20px">
	<div class="container">
		
		<center><h3>Thông tin đơn hàng</h3></center>
			<form:form action="/order/checkout" modelAttribute="order">
			<div class="row">
				<div class="form-group col-md-2">
					<label>Mã đơn hàng:</label>
					<form:input path="id" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-md-5">
					<label>Họ và tên:</label>
					<form:input path="users.full_name" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-md-2">
					<label>Ngày mua:</label>
					<form:input path="ngaydat" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-md-3">
					<label>Số điện thoại:</label>
					<form:input path="users.phone" class="form-control" readonly="true" />
				</div>
				
				
				<div class="form-group col-md-4">
					<label>Email:</label>
					<form:input path="email" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-md-4">
					<label>Địa chỉ:</label>
					<form:input path="dia_chi" class="form-control" readonly="true" />
				</div>
				<div class="form-group col-md-4">
					<label>Tổng tiền:</label>
					<form:input path="tien" class="form-control" readonly="true" />
				</div>
			
				</div>
				<div class="form-group ">
					<label>Ghi chú:</label>
					<form:textarea path="chuthich" rows="3" class="form-control"
						readonly="true" />
				</div>

			</form:form>
	

		<h4>Sản phẩm</h4>
		<div class="row">
		<div class="col-md-12">
		<table class="table table-striped table-bordered table-hover" id="dataTables-example">
			<thead>
				<tr>
					<th>Mã sản phẩm</th>
					<th>Tên sản phẩm</th>
					<th>Màu</th>
					<th>Giá bán</th>
					<th>Phần trăm giảm</th>
					<th>Số lượng</th>
					<th>Tổng tiền</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${details}">
					<tr>
						<td>${d.products.id}</td>
						<td>${d.products.ten}</td>
						<td>${d.orders.mau}</td>
						<td><f:formatNumber value="${d.giaban}" pattern="#,###" /> VNĐ</td>
						<td>${d.giamgia}%</td>
						<td>${d.soluongban}</td>
						<td>
							<f:formatNumber value="${d.soluongban * d.giaban * (1 - (d.giamgia / 100))}" pattern="#,###" /> VNĐ
						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
		</div>
		</div>
	</div>
</div>

<style>
.dang-nhap{
	background-color: white;
	padding: 30px 120px;
	margin: 0 auto;
	width: 60%;
	margin-bottom: 25px;
}
</style>