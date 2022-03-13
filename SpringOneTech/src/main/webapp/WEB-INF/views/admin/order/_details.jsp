<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Mã SP</th>
			<th>Tên sản phẩm</th>
			<th>Giá tiền</th>
			<th>Giảm giá</th>
			<th>Số lượng</th>
			<th>Màu</th>
			<th>Thành tiền</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="e" items="${details}">
			<tr>
				<td>${e.products.id}</td>
				<td>${e.products.ten}</td>
				<td><f:formatNumber value="${e.products.gia_goc}" pattern="#,###" />đ</td>
				<td><f:formatNumber value="${e.products.ma_giam}" pattern="#,###" />%</td>
				<td>${e.soluongban}</td>
				<td>${e.orders.mau}</td>
				<td><f:formatNumber value="${e.products.gia_goc * (1 -( e.products.ma_giam/100))}" pattern="#,###" />đ</td>
				
				
			</tr>
		</c:forEach>
	</tbody>
		
</table>
