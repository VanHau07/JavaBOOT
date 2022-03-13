<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<!DOCTYPE HTML>
<html lang="en">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/styles/cart_styles.css">
<style>
.cart_item_image {
	width: 100px;
	height: 100px;
	float: left;
}

.cart_item_image img {
	max-width: 100%;
}

.dinhtien {
	color: #CC3300;
	font-weight: bold;
	font-size: 30px";
}

.canhtren {
	margin-top: 25px;
}
.thanhtoan{
color: red;
font-weight: bold;
}
</style>
<body>

	<b class="screen-overlay"></b>


	<!-- ========================= SECTION CONTENT ========================= -->

	<div class="container">
		<div class="card mb-4 canhtren">
			<div class="card-body">
				<center>
					<h4 class="card-title mb-3">THÔNG TIN KHÁCH HÀNG</h4>
				</center>

				<table class="table table-borderless table-shopping-cart">
					<thead class="text-muted">
						<tr class="small text-uppercase">
							<th class="cart_item_title cart_info_col">Tên sản phẩm</th>
								<th class="cart_item_title cart_info_col">Màu</th>
							<th class="cart_item_title cart_info_col" >Số lượng</th>
							<th class="cart_item_title cart_info_col" >Thành Tiền</th>

						</tr>
					</thead>
					<tbody>

						<span> <c:choose>
								<c:when test="${cart.count > 0}"> Danh sách đã mua (  
					<b class="cart-cnt">${cart.count}</b> sản phẩm ) </c:when>
								<c:otherwise> Danh sách đã mua (  <b
										class="cart-cnt">0</b> sản phẩm ) </c:otherwise>
							</c:choose>

						</span>


						<c:forEach var="p"
							items="${sessionScope['scopedTarget.cartService'].items}">

							<tr data-id="${p.id}" data-price="${p.gia_goc}"
								data-discount="${p.ma_giam}">
								<td>
									<figure class="itemside">
										<div class="cart_item_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/${p.hinh_anh}">
										</div>
										<figcaption class="info">
											<a href="#" class="title text-dark">${p.ten}</a>
											<p class="text-muted small">
												Giá bán:



												<f:formatNumber value="${p.gia_goc}" pattern="#,###" />đ <br> Giảm giá: 	<f:formatNumber value="${p.ma_giam}" pattern="#,###" />%
											</p>
										</figcaption>
									</figure>
								</td>
								<td class="cart_item_text">
								<p>Mặc Định</p>
								</td>
								<td class="cart_item_text">${p.soluong}
								<td class="amt cart_item_text"
									>
									<f:formatNumber
										value="${p.soluong * p.gia_goc * (1 -( p.ma_giam/100))}"
										pattern="#,###" />đ
								</td>


							</tr>

						</c:forEach>
					</tbody>
				</table>
				<div class="dinhtien">
					<center>
						Tổng Tiền:
						<f:formatNumber value="${cart.amount}" pattern="#,###" />đ
					</center>
				</div>

				<div class="dang-nhap">
					<h4>${message}</h4>

					<form:form action="/order/checkout" modelAttribute="order"
						method="post">
						<div class="row">
							<div class="form-group col-md-3">
								<label>Tên Đăng Nhập</label>
								<form:input path="users.id_user" class="form-control" readonly="true" />
							</div>
							<div class="form-group col-md-3">
								<label>Người Nhận Hàng:</label>
								<form:input path="users.full_name" class="form-control"
								readonly="true" 	/>
							</div>
							<div class="form-group col-md-3">
								<label>Ngày đặt hàng:</label>
								<form:input path="ngaydat" class="form-control" readonly="true" />
							</div>												
						<div class="col-md-3">
							<label>Thanh Toán</label>
							<form:hidden path="tien" class="form-control" readonly="true" />
							<div class="form-control thanhtoan">
								<f:formatNumber value="${cart.amount}" pattern="#,###" />đ
							</div>
						</div>					
						</div>
						<div class="row">
							<div class="form-group col-md-4">
								<label>Số điện thoại(*):</label>
								<form:input path="phone" class="form-control" 	required="required" />
							</div>
							<div class="form-group col-md-4">
								<label>Email Theo Dõi Đơn Hàng:</label>
								<form:input path="email" class="form-control" />
							</div>
							<div class="form-group col-md-4">
								<label>Địa chỉ(*):</label>
								<form:input path="dia_chi" class="form-control" 	required="required"  />
							</div>
						</div>
						
						<div class="form-group">

							<form:hidden path="status" class="form-control" />
						</div>

						<div class="form-group">
							<label>Ghi chú:</label>
							<form:textarea path="chuthich" rows="3" class="form-control" />
						</div>
						<div class="form-group">
							<center>
								<h6>Thanh toán khi nhận hàng</h6>
							</center>

						</div>
						<div class="form-group">
							<center>
								<button class="btn btn-primary">ĐẶT HÀNG</button>
							</center>

						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- ========================= SECTION CONTENT END// ========================= -->
</body>
</html>