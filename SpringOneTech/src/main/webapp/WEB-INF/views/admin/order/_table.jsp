<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Bảng hiển thị dữ liệu</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="dataTable_wrapper">
					<table class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
								<th>ID</th>
								<th>Khách hàng</th>
								<th>Ngày đặt hàng</th>
								<th>Địa chỉ</th>
								<th>Tổng tiền</th>
								<th>Trạng thái đơn hàng</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="e" items="${list}">
								<tr class="odd gradeX">
									<td>${e.id}</td>
									<td>${e.users.full_name}</td>
									<td><f:formatDate value="${e.ngaydat}" pattern="dd/MM/yyy" /></td>

									<td>${e.dia_chi}</td>
									
									
									<td><f:formatNumber value="${e.tien}" pattern="#,###" />
										VNĐ</td>

									<td>${e.status}</td>



									<td><a class="btn btn-sm btn-info"
										href="${base}/edit/${e.id}">SỬA</a> <%-- <a
										class="btn btn-sm btn-danger" href="${base}/delete/${e.id}">XÓA</a> --%>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
</div>