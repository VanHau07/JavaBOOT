<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />
<!-- Single Product -->


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/user/styles/product_styles.css">
	
<style>
.monyweek {
	color: red;
}

.monyweek2 {
	color: red;
	display: flex;
	justify-content: center;
}

.giagiam {
	text-decoration-line: line-through;
	font-size: 14px;
}

.phantram {
	font-size: 14px;
}

.butmua {
	display: flex;
	justify-content: center;
}
</style>
<div class="single_product">
	<div class="container">
		<div class="row">

			<!-- Images -->
			<div class="col-lg-2 order-lg-1 order-2">
				<ul class="image_list">
					<li
						data-image="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.anh_1}"><img
						src="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.anh_1}"
						alt=""></li>
					<li
						data-image="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.anh_2}"><img
						src="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.anh_2}"
						alt=""></li>
					<li
						data-image="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.anh_3}"><img
						src="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.anh_3}"
						alt=""></li>
				</ul>
			</div>
			<!-- Selected Image -->
			<div class="col-lg-5 order-lg-2 order-1">
				<div class="image_selected">
					<img
						src="${pageContext.request.contextPath}/webapp/static/resources/images/${prod.hinh_anh}"
						alt="">
				</div>
			</div>

			<!-- Description -->
			<div class="col-lg-5 order-3">
				<div class="product_description">
					<div class="product_category">${prod.chu_de}</div>
					<div class="product_name">${prod.ten}</div>
					<div class="rating_r rating_r_4 product_rating">
						<i></i><i></i><i></i><i></i><i></i>
					</div>
					<div class="product_text">
						<p>${prod.mo_ta}</p>
					</div>
					<div class="order_info d-flex flex-row">
						<form action="#">
							<div class="clearfix" style="z-index: 1000;">

								<!-- Product Quantity -->
								<div class="product_quantity clearfix">
									<span>Số lượng: </span> <input id="quantity_input" type="text"
										pattern="[0-9]*" value="1">
									<div class="quantity_buttons">
										<div id="quantity_inc_button"
											class="quantity_inc quantity_control">
											<i class="fas fa-chevron-up"></i>
										</div>
										<div id="quantity_dec_button"
											class="quantity_dec quantity_control">
											<i class="fas fa-chevron-down"></i>
										</div>
									</div>
								</div>

								<!-- Product Color -->
								<ul class="product_color">
									<li><span>Màu: </span>
										<div class="color_mark_container">
											<div id="selected_color" class="color_mark"></div>
										</div>
										<div class="color_dropdown_button">
											<i class="fas fa-chevron-down"></i>
										</div>

										<ul class="color_list">
											<li><div class="color_mark" style="background: #999999;"></div></li>
											<li><div class="color_mark" style="background: #b19c83;"></div></li>
											<li><div class="color_mark" style="background: #000000;"></div></li>
										</ul></li>
								</ul>

							</div>
							<div class="product_price">

								<c:choose>
									<c:when test="${prod.ma_giam >0}">
										<strong class="monyweek"><f:formatNumber
												value="${prod.gia_goc * (1 -( prod.ma_giam/100))}"
												pattern="#,###" />₫</strong>
										<small class="giagiam"><f:formatNumber
												value="${prod.gia_goc}" pattern="#,###" />₫</small>
										<small class="phantram"> -(<f:formatNumber
												value="${prod.ma_giam}" pattern="#,###" />%)
										</small>


									</c:when>
									<c:otherwise>
										<strong class="monyweek2"><f:formatNumber
												value="${prod.gia_goc}" pattern="#,###" />₫</strong>
									</c:otherwise>
								</c:choose>
							</div>


							<div data-id="${prod.id}" class="button_container ">

								<button type="button" class="cart-button btn-add-to-cart">
									<span id="btn" class="add-to-cart" onclick="tai_lai_trang()">MUA NGAY</span> <span
										class="added">ĐÃ MUA</span> <i class="fa fa-shopping-cart"></i>
									<i class="fa fa-square"></i>
								</button>
								<a href="/cart/view">
									<button type="button" class="cart-button">
										<span> <i class="fa fa-shopping-cart"></i>VÀO GIỎ HÀNG
										</span>
									</button>
								</a>
							</div>
						</form>
					</div>


				</div>
			</div>
		</div>
<script>
document.addEventListener("DOMContentLoaded", function(event) {


	const cartButtons = document.querySelectorAll('.cart-button');

	cartButtons.forEach(button => {

	button.addEventListener('click',cartClick);

	});

	function cartClick(){
	let button =this;
	button.classList.add('clicked');
	}
	 
	});
</script>
<script type="text/javascript">
function tai_lai_trang(){
    location.reload();
}</script>
<script
	src="${pageContext.request.contextPath}/webapp/static/resources/js/custom.js"></script>
	
	</div>
</div>


