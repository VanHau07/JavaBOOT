<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <c:set var="base" value="/admin/customer" scope="request" />

<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/home"><img
			style="z-index: 0; margin-top: -10px; padding: 0px 0px 0px 20px"
			src="${pageContext.request.contextPath}/webapp/static/admin/img/logo.png"
			width="18%" /></a>
	</div>
	<!-- /.navbar-header -->

	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown"><c:choose>
				<c:when test="${empty sessionScope.user }">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
					</a>
				</c:when>
				<c:otherwise>
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-user fa-fw"></i> <i>Xin chào:
							${sessionScope.user.id_user}</i>
					</a>
				</c:otherwise>
			</c:choose>

			<ul class="dropdown-menu dropdown-user">
				<li><a href="/home"><i class="fa fa-user fa-fw"></i> Quay
						lại trang chủ</a></li>
			</ul> <!-- /.dropdown-user --></li>
		<!-- /.dropdown -->
	</ul>
	<!-- /.navbar-top-links -->

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div> <!-- /input-group -->
				</li>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
					</c:when>
					<c:otherwise>
						<li><a href="/admin"><i
								class="fa fa-institution fa-fw"></i> Trang quản trị</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
					</c:when>
					<c:otherwise>
						<li><a href="/admin/category/index"><i
								class="fa fa-tags fa-fw"></i> Quản lý loại sản phẩm</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
					</c:when>
					<c:otherwise>
						<li><a href="/admin/product/index"><i
								class="fa fa-inbox fa-fw"></i> Quản lý sản phẩm</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
					</c:when>
					<c:otherwise>
						<li><a href="/admin/customer/index"><i
								class="fa fa-users fa-fw"></i> Quản lý người dùng</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
					</c:when>
					<c:otherwise>
						<li><a href="/admin/order/index"><i
								class="fa fa-shopping-cart fa-fw"></i> Quản lý đơn hàng</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
					</c:when>
					<c:otherwise>
						<li><a id="navbarDropdownLink" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><i
								class="fa fa-dashboard fa-fw"></i> Quản lý thống kê<span
								class="fa arrow"></span></a>


							<ul class="nav dropdown-menu"
								aria-labelledby="navbarDropdownLink">						
								<li><a href="/admin/revenue/customer">Doanh thu theo
										khách hàng</a></li>
								<li><a href="/admin/revenue/month">Doanh thu theo tháng</a></li>
								<!-- 	<li><a href="/admin/revenue/quarter">Doanh thu theo quý</a></li> -->
								<li><a href="/admin/revenue/year">Doanh thu theo năm</a></li>
							</ul> <!-- /.nav-second-level --></li>














					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>



