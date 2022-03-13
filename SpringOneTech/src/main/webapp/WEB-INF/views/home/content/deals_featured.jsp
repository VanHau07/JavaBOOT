<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="deals_featured">
	<div class="container">
		<div class="row">
			<div
				class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

				<!-- Deals -->

				<div class="deals">
					<div class="deals_title">Lượt xem nhiều nhất tuần</div>
					<div class="deals_slider_container">

						<!-- Deals Slider -->
						<div class="owl-carousel owl-theme deals_slider">

							<!-- Deals Item -->
							<c:forEach var="view" items="${listView}">
								<div class="owl-item deals_item">
									<div class="deals_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/${view.hinh_anh}"
											alt="">
									</div>

									<div class="deals_content">
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_category">
												<a href="#">${view.chu_de}</a>
											</div>
											<div class="deals_item_price_a ml-auto">${view.gia_goc}</div>
										</div>
										<div
											class="deals_info_line d-flex flex-row justify-content-start">
											<div class="deals_item_name">${view.ten}</div>
											<div class="deals_item_price ml-auto">${view.gia_nhap_vao}</div>
										</div>
										<div class="available">
											<div
												class="available_line d-flex flex-row justify-content-start">
												<div class="available_title">
													Đã bán: <span>${view.soluong}</span>
												</div>
												<div class="sold_title ml-auto">
													Đã bán: <span>${view.soluong}</span>
												</div>
											</div>

											<div class="available_bar">
												<span style="width: 99%"></span>
											</div>
										</div>
										<div
											class="deals_timer d-flex flex-row align-items-center justify-content-start">
											<div class="deals_timer_title_container">
												<div class="deals_timer_title">Nhanh tay</div>
												<div class="deals_timer_subtitle">Kết thúc sau:</div>
											</div>
											<div class="deals_timer_content ml-auto">
												<div class="deals_timer_box clearfix" data-target-time="">
													<div class="deals_timer_unit">
														<div id="deals_timer1_hr" class="deals_timer_hr"></div>
														<span>Giờ</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer1_min" class="deals_timer_min"></div>
														<span>Phút</span>
													</div>
													<div class="deals_timer_unit">
														<div id="deals_timer1_sec" class="deals_timer_sec"></div>
														<span>Giây</span>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>

							</c:forEach>
						</div>

					</div>

					<div class="deals_slider_nav_container">
						<div class="deals_slider_prev deals_slider_nav">
							<i class="fas fa-chevron-left ml-auto"></i>
						</div>
						<div class="deals_slider_next deals_slider_nav">
							<i class="fas fa-chevron-right ml-auto"></i>
						</div>
					</div>
				</div>

				<!-- Featured -->
				<div class="featured">
					<div class="tabbed_container">
						<div class="tabs">
							<ul class="clearfix">
								<li class="active">ĐIỆN THOẠI</li>
								<li>LAPTOP</li>
								<li>MÁY TÍNH BẢNG</li>
								<li>ĐỒNG HỒ</li>
								<li>LOA</li>
							</ul>
							<div class="tabs_line">
								<span></span>
							</div>
						</div>

						<!-- Product Panel -->

						<!-- Product Panel -->
						<div class="product_panel panel active">
							<div class="featured_slider slider">
								<c:forEach var="item" items="${listPhone}">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<a href="<c:url value="chi-tiet/${item.id }"/>"><img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/${item.hinh_anh}"
													alt=""></a>
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<a href="<c:url value="chi-tiet/${item.id }"/>"> <span
														style="text-decoration-line: line-through;"><fmt:formatNumber
																value="${item.gia_goc}" type="number"
																maxIntegerDigits="14" />(VNĐ)</span> <br /> <fmt:formatNumber
															value="${item.gia_nhap_vao}" type="number"
															maxIntegerDigits="14" /> (VNĐ)
													</a>
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
													<a href="cart"><button class="product_cart_button">THÊM
															VÀO GIỎ</button></a>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<c:if test="${item.giam_gia == 0 }">

											</c:if>
											<c:if test="${item.giam_gia > 0 }">
												<ul class="product_marks">
													<li class="product_mark product_discount">-${item.giam_gia}%</li>
													<li class="product_mark product_new"></li>
												</ul>
											</c:if>

										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

						<!-- Product Panel -->

						<div class="product_panel panel">
							<div class="featured_slider slider">
								<c:forEach var="laptop" items="${listLaptop}">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
													<a href="<c:url value="chi-tiet/${laptop.id }"/>"><img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/${laptop.hinh_anh}"
													alt=""></a>
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<span style="text-decoration-line: line-through;"><fmt:formatNumber
															value="${laptop.gia_goc}" type="number"
															maxIntegerDigits="14" />(VNĐ)</span> <br />
													<fmt:formatNumber value="${laptop.gia_nhap_vao}" type="number"
														maxIntegerDigits="14" />
													(VNĐ)
												</div>
												<div class="product_name">
													<div>
														<a href="<c:url value="chi-tiet/${laptop.id }"/>">${laptop.ten}</a>
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
													<a href="cart/view"><button class="product_cart_button">THÊM
															VÀO GIỎ</button></a>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<li class="product_mark product_discount">-${laptop.giam_gia}%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

						<!-- Product Panel -->

						<div class="product_panel panel">
							<div class="featured_slider slider">
								<c:forEach var="ipad" items="${listIpad }">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<a href="<c:url value="chi-tiet/${ipad.id }"/>"><img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/${ipad.hinh_anh}"
													alt=""></a>
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<span style="text-decoration-line: line-through;"><fmt:formatNumber
															value="${ipad.gia_goc}" type="number"
															maxIntegerDigits="14" />(VNĐ)</span> <br />
													<fmt:formatNumber value="${ipad.gia_nhap_vao}" type="number"
														maxIntegerDigits="14" />
													(VNĐ)
												</div>
												<div class="product_name">
													<div>
														<a href="<c:url value="chi-tiet/${ipad.id }"/>">${ipad.ten}</a>
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
												<li class="product_mark product_discount">-${ipad.giam_gia}%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

						<!-- Product Panel -->

						<div class="product_panel panel">
							<div class="featured_slider slider">
								<c:forEach var="watch" items="${listWatch }">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<a href="<c:url value="chi-tiet/${watch.id }"/>"><img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/${watch.hinh_anh}"
													alt=""></a>
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<span style="text-decoration-line: line-through;"><fmt:formatNumber
															value="${watch.gia_goc}" type="number"
															maxIntegerDigits="14" />(VNĐ)</span> <br />
													<fmt:formatNumber value="${watch.gia_nhap_vao}" type="number"
														maxIntegerDigits="14" />
													(VNĐ)
												</div>
												<div class="product_name">
													<div>
														<a href="<c:url value="chi-tiet/${watch.id }"/>">${watch.ten}</a>
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
												<li class="product_mark product_discount">-${watch.giam_gia}%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

						<!-- Product Panel -->

						<div class="product_panel panel">
							<div class="featured_slider slider">
								<c:forEach var="sound" items="${listSound }">
									<!-- Slider Item -->
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<a href="<c:url value="chi-tiet/${sound.id }"/>"><img
													src="${pageContext.request.contextPath}/webapp/static/resources/images/${sound.hinh_anh}"
													alt=""></a>
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<span style="text-decoration-line: line-through;"><fmt:formatNumber
															value="${sound.gia_goc}" type="number"
															maxIntegerDigits="14" />(VNĐ)</span> <br />
													<fmt:formatNumber value="${sound.gia_nhap_vao}" type="number"
														maxIntegerDigits="14" />
													(VNĐ)
												</div>
												<div class="product_name">
													<div>
														<a href="<c:url value="chi-tiet/${sound.id }"/>">${sound.ten}</a>
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
												<li class="product_mark product_discount">-${sound.giam_gia}%</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>


					</div>
				</div>

			</div>
		</div>
	</div>
</div>
