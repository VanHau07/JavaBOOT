<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="new_arrivals">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="tabbed_container">
					<div class="tabs clearfix tabs-right">
						<div class="new_arrivals_title">Phụ kiện, linh kiện</div>
						<ul class="clearfix">
							<li class="active">Linh kiện</li>
							<li>Phụ kiện</li>
							<li>Vật dụng</li>
						</ul>
						<div class="tabs_line">
							<span></span>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-9" style="z-index: 1;">

							<!-- Product Panel -->
							<div class="product_panel panel active">
								<div class="arrivals_slider slider">
									<c:forEach var="item" items="${listNew }">
										<!-- Slider Item -->
										<div class="arrivals_slider_item">
											<div class="border_active"></div>
											<div
												class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
												<div
													class="product_image d-flex flex-column align-items-center justify-content-center">
													<a href="<c:url value="chi-tiet/${item.id }"/>"><img
														src="${pageContext.request.contextPath}/webapp/static/resources/images/${item.hinh_anh}"
														alt=""></a>
												</div>
												<div class="product_content">
													<div class="product_price">
														<span style="color: red;"><fmt:formatNumber
																value="${item.gia_nhap_vao}" type="number"
																maxIntegerDigits="14" />(VNĐ)</span>
													</div>
													<div class="product_name">
														<div>
															<a href="<c:url value="chi-tiet/${item.id }"/>">${item.ten}</a>
														</div>
													</div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color"
																style="background: #b19c83"> <input type="radio"
																name="product_color" style="background: #000000">
															<input type="radio" name="product_color"
																style="background: #999999">
														</div>
														<button class="product_cart_button">THÊM VÀO GIỎ</button>
													</div>
												</div>
												<div class="product_fav">
													<i class="fas fa-heart"></i>
												</div>
												<ul class="product_marks">
													<li class="product_mark product_discount">${item.soluong}</li>
													<li class="product_mark product_new">Mới</li>
												</ul>
											</div>
										</div>
									</c:forEach>
								</div>

								<div class="arrivals_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->
							<div class="product_panel panel">
								<div class="arrivals_slider slider">

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_1.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount">-25%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_2.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button active">Add to
														Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_3.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_4.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_5.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_6.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_7.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount">-25%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_8.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_1.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_2.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_3.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_4.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_5.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_6.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_7.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_8.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="arrivals_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->
							<div class="product_panel panel">
								<div class="arrivals_slider slider">

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_1.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount">-25%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_2.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button active">Add to
														Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_3.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_4.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_5.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_6.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_7.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount">-25%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_8.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_1.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_2.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_3.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_4.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_5.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_6.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_7.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$379</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>

									<!-- Slider Item -->
									<div class="arrivals_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/new_8.jpg"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price">$225</div>
												<div class="product_name">
													<div>
														<a href="product.html">Huawei MediaPad...</a>
													</div>
												</div>
												<div class="product_extras">
													<div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>
													<button class="product_cart_button">Add to Cart</button>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount"></li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="arrivals_slider_dots_cover"></div>
							</div>

						</div>
						<c:forEach var="hot" items="${listHot }">
							<div class="col-lg-3">
								<
								<div class="arrivals_single clearfix">
									<div
										class="d-flex flex-column align-items-center justify-content-center">
										<div class="arrivals_single_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/${hot.hinh_anh}"
												alt="">
										</div>
										<div class="arrivals_single_content">
											<div class="arrivals_single_category">
												<a href="#">${hot.ten}</a>
											</div>
											<div class="arrivals_single_name_container clearfix">
												<div class="arrivals_single_name">
													<a href="#"></a>
												</div>
												<medium class="arrivals_single_price text-right"><fmt:formatNumber
															value="${hot.gia_goc}" type="number"
															 maxIntegerDigits="14" /> (VNĐ)</medium>
											</div>
											<div class="rating_r rating_r_4 arrivals_single_rating">
							
											</div>
											<form action="#">
												<button class="arrivals_single_button">Thêm vào giỏ</button>
											</form>
										</div>
										<div class="arrivals_single_fav product_fav active">
											<i class="fas fa-heart"></i>
										</div>
										<ul class="arrivals_single_marks product_marks">
											<li class="arrivals_single_mark product_mark product_new">new</li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
