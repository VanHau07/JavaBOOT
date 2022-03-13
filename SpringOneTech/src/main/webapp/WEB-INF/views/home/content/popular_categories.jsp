<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<div class="popular_categories">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="popular_categories_content">
							<div class="popular_categories_title">Danh mục phổ biến</div>
							<div class="popular_categories_slider_nav">
								<div class="popular_categories_prev popular_categories_nav">
									<i class="fas fa-angle-left ml-auto"></i>
								</div>
								<div class="popular_categories_next popular_categories_nav">
									<i class="fas fa-angle-right ml-auto"></i>
								</div>
							</div>
							<div class="popular_categories_link">
								<a href="#">tất cả danh mục</a>
							</div>
						</div>
					</div>

					<!-- Popular Categories Slider -->

					<div class="col-lg-9">
						<div class="popular_categories_slider_container">
							<div class="owl-carousel owl-theme popular_categories_slider">

								<!-- Popular Categories Item -->
								<div class="owl-item">
									<div
										class="popular_category d-flex flex-column align-items-center justify-content-center">
										<div class="popular_category_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/popular_1.png"
												alt="">
										</div>
										<div class="popular_category_text">Điện thoại và mấy tính bảng</div>
									</div>
								</div>

								<!-- Popular Categories Item -->
								<div class="owl-item">
									<div
										class="popular_category d-flex flex-column align-items-center justify-content-center">
										<div class="popular_category_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/popular_2.png"
												alt="">
										</div>
										<div class="popular_category_text">Máy tính bàn và Laptop</div>
									</div>
								</div>

								<!-- Popular Categories Item -->
								<div class="owl-item">
									<div
										class="popular_category d-flex flex-column align-items-center justify-content-center">
										<div class="popular_category_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/popular_3.png"
												alt="">
										</div>
										<div class="popular_category_text">Dụng cụ</div>
									</div>
								</div>

								<!-- Popular Categories Item -->
								<div class="owl-item">
									<div
										class="popular_category d-flex flex-column align-items-center justify-content-center">
										<div class="popular_category_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/popular_4.png"
												alt="">
										</div>
										<div class="popular_category_text">Trò chơi và bảng điều khiển</div>
									</div>
								</div>

								<!-- Popular Categories Item -->
								<div class="owl-item">
									<div
										class="popular_category d-flex flex-column align-items-center justify-content-center">
										<div class="popular_category_image">
											<img
												src="${pageContext.request.contextPath}/webapp/static/resources/images/popular_5.png"
												alt="">
										</div>
										<div class="popular_category_text">Mạng xã hội</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	