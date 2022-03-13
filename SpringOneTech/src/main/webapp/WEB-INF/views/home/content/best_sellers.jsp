<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="best_sellers">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="tabbed_container">
					<div class="tabs clearfix tabs-right">
						<div class="new_arrivals_title">Hot Best Sellers</div>
						<ul class="clearfix">
							<li class="active">Top 20</li>
							<li>Audio & Video</li>
							<li>Laptops & Computers</li>
						</ul>
						<div class="tabs_line">
							<span></span>
						</div>
					</div>

					<div class="bestsellers_panel panel active">

						<!-- Best Sellers Slider -->

						<div class="bestsellers_slider slider">
							<c:forEach var="item" items="${listBest }">
								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/${item.hinh_anh}"
												alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">${item.chu_de}</a>
											</div>
											<div class="bestsellers_name">
												<a href="product.html">${item.ten}</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<i></i><i></i><i></i><i></i><i></i>
											</div>
											<div class="bestsellers_price discount">
												<span><fmt:formatNumber value="${item.gia_goc}"
														type="number" maxIntegerDigits="14" />(VNĐ)</span>
												<fmt:formatNumber value="${item.gia_nhap_vao}" type="number"
													maxIntegerDigits="14" />
												(VNĐ)
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>
							</c:forEach>
						</div>
					</div>

					<div class="bestsellers_panel panel">

						<!-- Best Sellers Slider -->

						<div class="bestsellers_slider slider">

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_1.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_2.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_3.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_4.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_5.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_6.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_1.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_2.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_3.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_4.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_5.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_6.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

						</div>
					</div>

					<div class="bestsellers_panel panel">

						<!-- Best Sellers Slider -->

						<div class="bestsellers_slider slider">

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_1.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_2.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_3.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_4.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_5.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_6.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_1.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_2.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_3.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_4.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item discount">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_5.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

							<!-- Best Sellers Item -->
							<div class="bestsellers_item">
								<div
									class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
									<div class="bestsellers_image">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/best_6.png"
											alt="">
									</div>
									<div class="bestsellers_content">
										<div class="bestsellers_category">
											<a href="#">Headphones</a>
										</div>
										<div class="bestsellers_name">
											<a href="product.html">Xiaomi Redmi Note 4</a>
										</div>
										<div class="rating_r rating_r_4 bestsellers_rating">
											<i></i><i></i><i></i><i></i><i></i>
										</div>
										<div class="bestsellers_price discount">
											$225<span>$300</span>
										</div>
									</div>
								</div>
								<div class="bestsellers_fav active">
									<i class="fas fa-heart"></i>
								</div>
								<ul class="bestsellers_marks">
									<li class="bestsellers_mark bestsellers_discount">-25%</li>
									<li class="bestsellers_mark bestsellers_new">new</li>
								</ul>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
