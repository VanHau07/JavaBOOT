<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<c:set var="cart" value="${sessionScope['scopedTarget.cartService']}" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/login.css">

<header class="header">


	<!-- Top Bar -->
	<div class="top_bar">
		<div class="container">
			<div class="row">
				<div class="col d-flex flex-row">
					<div class="top_bar_contact_item">
						<div class="top_bar_icon">
							<img
								src="${pageContext.request.contextPath}/webapp/static/resources/images/phone.png"
								alt="">
						</div>
						+84 347310659
					</div>
					<div class="top_bar_contact_item">
						<div class="top_bar_icon">
							<img
								src="${pageContext.request.contextPath}/webapp/static/resources/images/mail.png"
								alt="">
						</div>
						<a href="mailto:fastsales@gmail.com">haunguyenvanit07@gmail.com</a>
					</div>
					<div class="top_bar_content ml-auto">
						<div class="top_bar_menu">
							<ul class="standard_dropdown top_bar_dropdown">
								<li><a href="#">Việt Nam<i class="fas fa-chevron-down"></i></a>
									<ul>
										<li><a href="#">Tiếng Anh</a></li>
									</ul></li>
								<li><a href="#">VNĐ<i class="fas fa-chevron-down"></i></a>
									<ul>
										<li><a href="#">$ Dolar</a></li>
									</ul></li>
							</ul>
						</div>


						<c:if test="${empty infor }">
							<div class="top_bar_user">
								<div class="user_icon">
									<img
										src="${pageContext.request.contextPath}/webapp/static/resources/images/user.svg"
										alt="">
								</div>
								<div>
									<a href="<c:url value="/account/register"/>">Đăng ký</a>
								</div>
								<div>
									<a href="<c:url value="account/login"/>">Đăng nhập</a>
								</div>
							</div>
						</c:if>

						<c:if test="${not empty infor }">


							<c:choose>
								<c:when test="${sessionScope.user.admin == true }">

									<div class="top_bar_user">
										<ul class="standard_dropdown top_bar_dropdown">
											<li><a href="#">${infor.id_user}<i
													class="fas fa-chevron-down"></i></a>
												<ul>
													<li><a href="/admin"><i class="fas fa-user"></i>Admin</a></li>
													<li><a href="/account/profile">Thông tin</a></li>
													<li><a href="/account/logout">Đăng xuất</a></li>
												</ul></li>
										</ul>
									</div>
									<div class="user_icon">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/user.svg"
											alt="">
									</div>
								</c:when>
								<c:otherwise>

									<div class="top_bar_user">
										<ul class="standard_dropdown top_bar_dropdown">
											<li><a href="#">${infor.id_user}<i
													class="fas fa-chevron-down"></i></a>
												<ul>
													<li><a href="/account/profile">Thông tin</a></li>
													<li><a href="/account/logout">Đăng xuất</a></li>
												</ul></li>
										</ul>
									</div>
									<div class="user_icon">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/user.svg"
											alt="">
									</div>
								</c:otherwise>
							</c:choose>








						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Header Main -->

	<div class="header_main">
		<div class="container">
			<div class="row">

				<!-- Logo -->
				<div class="col-lg-2 col-sm-3 col-3 order-1">
					<div class="logo_container">
						<div class="logo">
							<a href="/">OneTech</a>
						</div>
					</div>
				</div>

				<!-- Search -->
				<div
					class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
					<div class="header_search">
						<div class="header_search_content">
							<div class="header_search_form_container">
								<form action="#" class="header_search_form clearfix">
									<input type="search" required="required"
										class="header_search_input"
										placeholder="Tìm kiếm sản phẩm ở đây...">
									<div class="custom_dropdown">
										<div class="custom_dropdown_list">
											<span class="custom_dropdown_placeholder clc">Tất cả
												thể loại</span> <i class="fas fa-chevron-down"></i>
											<ul class="custom_list clc">

												<c:forEach var="all" items="${listpr }">
													<li><a class="clc" href="#">${all.ten }</a></li>
												</c:forEach>

											</ul>
										</div>
									</div>
									<button type="submit" class="header_search_button trans_300"
										value="Submit">
										<img
											src="${pageContext.request.contextPath}/webapp/static/resources/images/search.png"
											alt="">
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>

				<!-- Wishlist -->
				<div
					class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
					<div
						class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
						<div
							class="wishlist d-flex flex-row align-items-center justify-content-end">
							<div class="wishlist_icon">
								<img
									src="${pageContext.request.contextPath}/webapp/static/resources/images/heart.png"
									alt="">
							</div>
							<div class="wishlist_content">
								<div class="wishlist_text">
									<a href="#">Lượt thích</a>
								</div>
								<center>
									<div class="wishlist_count">${favo.size()}</div>
								</center>
							</div>
						</div>

						<!-- Cart -->
						<div class="cart">
							<div
								class="cart_container d-flex flex-row align-items-center justify-content-end">
								<div class="cart_icon">
									<img
										src="${pageContext.request.contextPath}/webapp/static/resources/images/cart.png"
										alt="">
									<div class="cart_count cart-cnt">
										<c:choose>
											<c:when test="${cart.count > 0}">
												<span>${cart.count}</span>
											</c:when>
											<c:otherwise>
												<span>0</span>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="cart_content">
									<div class="cart_text">
										<a href="cart/view">Giỏ hàng</a>
									</div>
									<div class="cart_price">
									<c:if test="${empty cart.amount}"><medium>0₫</medium></c:if>
									<c:if test="${not empty cart.amount}"><medium><f:formatNumber value="${cart.amount}"
											pattern="#,###" />₫</medium></c:if>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Main Navigation -->

	<nav class="main_nav">
		<div class="container">
			<div class="row">
				<div class="col">

					<div class="main_nav_content d-flex flex-row">

						<!-- Categories Menu -->

						<div class="cat_menu_container">
							<div
								class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
								<div class="cat_burger">
									<span></span><span></span><span></span>
								</div>
								<div class="cat_menu_text">THỂ LOẠI</div>
							</div>

							<ul class="cat_menu">
								<c:forEach var="item" items="${listpr }">
									<%-- 				<li><a href="#">${item.ten} <i
											class="fas fa-chevron-right ml-auto"></i></a></li> --%>


									<li class="hassubs"><a href="#">${item.ten}<i
											class="fas fa-chevron-right"></i></a>

										<ul>
											<c:forEach var="cr" items="${listchildren }">
												<li class="hassubs"><a href="#">${cr.ten}<i
														class="fas fa-chevron-right"></i></a></li>
											</c:forEach>
										</ul></li>
								</c:forEach>
							</ul>
						</div>

						<!-- Main Nav Menu -->

						<div class="main_nav_menu ml-auto">
							<ul class="standard_dropdown main_nav_dropdown">
								<c:forEach var="menu" items="${listMenu }">
									<li><a href="${menu.link }">${menu.name }<i
											class="fas fa-chevron-down"></i></a></li>
									<!-- <li class="hassubs">
										<a href="#">Super Deals<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li>
												<a href="#">Menu Item<i class="fas fa-chevron-down"></i></a>
												<ul>
													<li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
													<li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
													<li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
												</ul>
											</li>
											<li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fas fa-chevron-down"></i></a></li>
										</ul>
									</li> -->
								</c:forEach>
							</ul>
						</div>


						<!-- Menu Trigger -->

						<div class="menu_trigger_container ml-auto">
							<div
								class="menu_trigger d-flex flex-row align-items-center justify-content-end">
								<div class="menu_burger">
									<div class="menu_trigger_text">menu</div>
									<div class="cat_burger menu_burger_inner">
										<span></span><span></span><span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>

	<!-- Menu -->


	<div class="page_menu">
		<div class="container">
			<div class="row">
				<div class="col">

					<div class="page_menu_content">

						<div class="page_menu_search">
							<form action="#">
								<input type="search" required="required"
									class="page_menu_search_input"
									placeholder="Search for products...">
							</form>
						</div>
						<ul class="page_menu_nav">
							<li class="page_menu_item has-children"><a href="#">Language<i
									class="fa fa-angle-down"></i></a>
								<ul class="page_menu_selection">
									<li><a href="#">English<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item has-children"><a href="#">Currency<i
									class="fa fa-angle-down"></i></a>
								<ul class="page_menu_selection">
									<li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">GBP British Pound<i
											class="fa fa-angle-down"></i></a></li>
									<li><a href="#">JPY Japanese Yen<i
											class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item"><a href="#">Home<i
									class="fa fa-angle-down"></i></a></li>
							<li class="page_menu_item has-children"><a href="#">Super
									Deals<i class="fa fa-angle-down"></i>
							</a>
								<ul class="page_menu_selection">
									<li><a href="#">Super Deals<i class="fa fa-angle-down"></i></a></li>
									<li class="page_menu_item has-children"><a href="#">Menu
											Item<i class="fa fa-angle-down"></i>
									</a>
										<ul class="page_menu_selection">
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
										</ul></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item has-children"><a href="#">Featured
									Brands<i class="fa fa-angle-down"></i>
							</a>
								<ul class="page_menu_selection">
									<li><a href="#">Featured Brands<i
											class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item has-children"><a href="#">Trending
									Styles<i class="fa fa-angle-down"></i>
							</a>
								<ul class="page_menu_selection">
									<li><a href="#">Trending Styles<i
											class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item"><a href="blog.html">blog<i
									class="fa fa-angle-down"></i></a></li>
							<li class="page_menu_item"><a href="contact.html">contact<i
									class="fa fa-angle-down"></i></a></li>
						</ul>

						<div class="menu_contact">
							<div class="menu_contact_item">
								<div class="menu_contact_icon">
									<img
										src="${pageContext.request.contextPath}/webapp/static/resources/images/phone_white.png"
										alt="">
								</div>
								+38 068 005 3570
							</div>
							<div class="menu_contact_item">
								<div class="menu_contact_icon">
									<img
										src="${pageContext.request.contextPath}/webapp/static/resources/images/mail_white.png"
										alt="">
								</div>
								<a href="mailto:fastsales@gmail.com">fastsales@gmail.com</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</header>

<script
	src="${pageContext.request.contextPath}/webapp/static/resources/js/account.js"></script>
