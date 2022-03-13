<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>



<!DOCTYPE html>
<html lang="en">

<jsp:include page="head_admin.jsp" />
<body>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Trang quản trị</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-trophy fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${product.size()}</div>
							<div>Sản phẩm</div>
						</div>
					</div>
				</div>
				<a href="/admin/product/index">
					<div class="panel-footer">
						<span class="pull-left">Thêm nhanh</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-green">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-shopping-cart fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${order.size()}</div>
							<div>Đơn hàng</div>
						</div>
					</div>
				</div>
				<a href="/admin/order/index">
					<div class="panel-footer">
						<span class="pull-left">Xem</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-user fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.size()}</div>
							<div>Tài khoản</div>
						</div>
					</div>
				</div>
				<a href="/admin/customer/index">
					<div class="panel-footer">
						<span class="pull-left">Thêm nhanh</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-red">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-thumbs-o-up fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"></div>
							<div>Phản hồi</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">Xem</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Bảng hiển thị dữ liệu</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="dataTable_wrapper">
					<table class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
								<th> Ngày</th>
								<th>Bán ra</th>
								<th>Lợi nhuận</th>
							
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="e" items="${data2}">
								<tr>
									<td>${e[0]}</td>
										<td><f:formatNumber value="${e[1]}" pattern="#,###" />đ</td>		
									<td><f:formatNumber value="${e[2]}" pattern="#,###" />đ</td>
														
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
 
















	<div class="row">
		<article class="card">

			<div class="card-body">

				<div class="track">
					<div class="step active">
						<span class="icon"> <i class="fa fa-check"></i>
						</span> <span class="text">Đã nhận đơn hàng</span>
					</div>
					<div class="step active">
						<span class="icon"> <i class="fa fa-group"></i>
						</span> <span class="text">Đã giao kho</span>
					</div>
					<div class="step">
						<span class="icon"> <i class="fa fa-truck"></i>
						</span> <span class="text">Đang vẫn chuyển</span>
					</div>
					<div class="step">
						<span class="icon"> <i class="fa fa-inbox"></i>
						</span> <span class="text">Giao hàng hoàn tất</span>
					</div>
				</div>
				<hr>
				<ul class="row">
					<li class="col-md-4">
						<figure class="itemside mb-3">
							<div class="aside">
								<img src="https://i.imgur.com/iDwDQ4o.png" class="img-sm border">
							</div>
							<figcaption class="info align-self-center">
								<p class="title">
									Dell Laptop with 500GB HDD <br> 8GB RAM
								</p>
								<span class="text-muted">$950 </span>
							</figcaption>
						</figure>
					</li>
					<li class="col-md-4">
						<figure class="itemside mb-3">
							<div class="aside">
								<img src="https://i.imgur.com/tVBy5Q0.png" class="img-sm border">
							</div>
							<figcaption class="info align-self-center">
								<p class="title">
									HP Laptop with 500GB HDD <br> 8GB RAM
								</p>
								<span class="text-muted">$850 </span>
							</figcaption>
						</figure>
					</li>
					<li class="col-md-4">
						<figure class="itemside mb-3">
							<div class="aside">
								<img src="https://i.imgur.com/Bd56jKH.png" class="img-sm border">
							</div>
							<figcaption class="info align-self-center">
								<p class="title">
									ACER Laptop with 500GB HDD <br> 8GB RAM
								</p>
								<span class="text-muted">$650 </span>
							</figcaption>
						</figure>
					</li>
				</ul>
				<hr>
				<a href="#" class="btn btn-warning" data-abc="true"> <i
					class="fa fa-chevron-left"></i> Back to orders
				</a>
			</div>
		</article>
	</div>
	<style>
@import
	url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');

.track {
	position: relative;
	background-color: #ddd;
	height: 7px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	margin-bottom: 60px;
	margin-top: 50px
}

.track .step {
	-webkit-box-flex: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	width: 25%;
	margin-top: -18px;
	text-align: center;
	position: relative
}

.track .step.active:before {
	background: #FF5722
}

.track .step::before {
	height: 7px;
	position: absolute;
	content: "";
	width: 100%;
	left: 0;
	top: 18px
}

.track .step.active .icon {
	background: #ee5435;
	color: #fff
}

.track .icon {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	position: relative;
	border-radius: 100%;
	background: #ddd
}

.track .step.active .text {
	font-weight: 400;
	color: #000
}

.track .text {
	display: block;
	margin-top: 7px
}

.itemside {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	width: 100%
}

.itemside .aside {
	position: relative;
	-ms-flex-negative: 0;
	flex-shrink: 0
}

.img-sm {
	width: 80px;
	height: 80px;
	padding: 7px
}

ul.row, ul.row-sm {
	list-style: none;
	padding: 0
}

.itemside .info {
	padding-left: 15px;
	padding-right: 7px
}

.itemside .title {
	display: block;
	margin-bottom: 5px;
	color: #212529
}

p {
	margin-top: 0;
	margin-bottom: 1rem
}

.btn-warning {
	color: #ffffff;
	background-color: #ee5435;
	border-color: #ee5435;
	border-radius: 1px
}

.btn-warning:hover {
	color: #ffffff;
	background-color: #ff2b00;
	border-color: #ff2b00;
	border-radius: 1px
}
</style>




<div class="row">
	<div class="col-lg-6">
		<h2 class="page-header">Doanh Thu Theo Sản Phẩm</h2>
	</div>
	<div class="col-lg-6">
		<h2 class="page-header">Doanh Thu Theo Hãng</h2>
	</div>
	<!-- /.col-lg-12 -->
</div>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i> SỐ LƯỢNG NHẬP VÀO

					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div id="morris-area-chart"></div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>

			<div class="col-lg-4">
				<!-- /.panel -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i>THEO DÕI NGÂN SÁCH
					</div>
					<div class="panel-body">
						<div id="morris-donut-chart"></div>

					</div>
					<!-- /.panel-body -->
				</div>
			</div>




		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i> TỔNG KẾT HÀNG THÁNG

					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="row">

							<div class="col-lg-12">
								<div id="morris-bar-chart"></div>
							</div>
							<!-- /.col-lg-8 (nested) -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.panel-body -->
				</div>
			</div>
		</div>
	</div>

	

</body>
</html>
