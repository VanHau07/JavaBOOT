<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<!DOCTYPE HTML>
<html lang="en">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/styles/cart_styles.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/styles/cart_responsive.css">
<style>
.khungcard {
	border: solid 1px #e8e8e8;
	box-shadow: 0px 1px 5px rgb(0 0 0/ 10%);
}

.dsl {
	width: 50px;
}

.cacitemcart {
	width: 1000px;
}

.dkxl1 {
	font-weight: bold;
	width: 100px;
	height: 38px;
	margin-top: 5px;
	border-radius: 15px;
	background: red;
	color: #fff;
	width: 100px;
}

.dkxl2 {
	font-weight: bold;
	width: 100px;
	height: 38px;
	margin-top: 5px;
	border-radius: 15px;
	background: blue;
	color: #fff;
}
</style>
<body>
			
	<!-- Cart -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1 khungcard">
					<div class="cart_container">
						<div class="cart_title">Giỏ Hàng Của Bạn</div>

						<table class="table table-borderless table-shopping-cart">
							<thead class="text-muted">
								<tr class="small text-uppercase">
									<th class="cart_item_title cart_info_col">Sản phẩm</th>
									<th class="cart_item_title cart_info_col">Số lượng</th>
									<th class="cart_item_title cart_info_col">Màu</th>
									<th class="cart_item_title cart_info_col">Giá</th>
									<th class="cart_item_title cart_info_col"></th>
								</tr>
							</thead>
							<tbody>

								<span> <c:choose>
										<c:when test="${cart.count > 0}">
											<b class="cart-cnt">${cart.count}</b> sản phẩm  </c:when>
										<c:otherwise>
											<b class="cart-cnt">Chưa có sản phẩm trong giỏ hàng</b>
										</c:otherwise>
									</c:choose>

								</span>


								<c:forEach var="p"
									items="${sessionScope['scopedTarget.cartService'].items}">

									<tr data-id="${p.id}" data-price="${p.gia_goc}"
										data-discount="${p.ma_giam}" class="cart_list">
										<td>

											<div class="cart_item_image">
												<img width="100px" height="100px"
													src="${pageContext.request.contextPath}/webapp/static/resources/images/${p.hinh_anh}"
													class="img-sm">
											</div> ${p.ten}</br> <small class="cart_item_title"> Giá: <f:formatNumber
													value="${p.gia_goc}" pattern="#,###" />đ </br> Giảm giá:
												<f:formatNumber
													value="${p.ma_giam}" pattern="#,###" />%
										</small>



										</td>
										<td class="cart_item_text"><input
											class="cart_item_text dsl" id="num" value="${p.soluong}"
											type="number" min="1"></td>

										<td class="cart_item_text">
										
										
										
										
										
										<select style="color: black" id="gender1">
										<option >Mặc định</option>
												<option >Xanh Lá</option>
												<option>Xanh Dương</option>
												<option>Cam</option>
												<option>Xanh Đậm</option>
										</select>
							

								</td>

								<td class="amt cart_item_text"><f:formatNumber
										value="${p.soluong * p.gia_goc * (1 -( p.ma_giam/100))}"
										pattern="#,###" />đ</td>

								<td class="cart_item_text"><a
									class="btn btn-light btn-cart-remove dkxl dkxl1"> XÓA </a></br> <a
									onclick="tai_lai_trang()" class="btn btn-light  dkxl dkxl2">
										CẬP NHẬT </a></td>
								</tr>

								</c:forEach>




							</tbody>
						</table>



						<div class="cart_buttons">
							<button type="button"
								class="button cart_button_clear btn-cart-clear">XÓA GIỎ
								HÀNG</button>

							<c:choose>
								<c:when test="${empty sessionScope.user }">

									<button type="button" class="button cart_button_checkout ">
										<a href="/account/login">ĐẶT HÀNG</a>
									</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="button cart_button_checkout ">
										<a href="/order/checkout">ĐẶT HÀNG</a>
									</button>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	</div>
	</div>

	<script>
		function tai_lai_trang() {
			location.reload();
		}
	</script>

</body>
</html>