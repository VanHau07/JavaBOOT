<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/style.css">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/roboto-font.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/fonts/font-awesome-5/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/style.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/login.css">


<body class="form-v5">
	<div class="page-content">
		<div class="form-v5-content">
			<h2 class="login mt-5">Trang Đăng Nhập</h2>
			<h4 style="text-align: center; color: red; ">${message}</h4>
				<div class="face">
					<a href="#" class="btn btn-facebook btn-primary"> <i
						class="fab fa-facebook-f"></i> Đăng nhập bằng Facebook
					</a>
				</div>
				<div class="face">
					<a href="#" class="btn btn-google btn-danger"> <i
						class="fab fa-google"></i> Đăng nhập bằng Google
					</a>
				</div>
		

			<form class="form-detail" action="/account/login" method="post">

				<div class="form-row">
					<label for="id_user">Tên đăng nhập</label> <input name="id" class="form-control"
					value="${uid}" />
				</div>

				<div class="form-row">
					<label for="password">Mật khẩu</label> <input name="pw" type="password"
					class="form-control" value="${pwd}" />
				</div>


				<div class="form-row-last">
					<input type="submit" name="register" class="register"
						value="ĐĂNG NHẬP">
				</div>
			</form>
			<p class="text-center">
				<a href="/account/forgot">Quên mật khẩu</a><i
						class="fas fa-lock"></i>
			</p>
			<p class="text-center">
				Bạn chưa có tài khoản? <a href="/account/register">ĐĂNG KÝ NGAY</a>
			</p>
			<br> <br>
		</div>

	</div>
</body>
</html>