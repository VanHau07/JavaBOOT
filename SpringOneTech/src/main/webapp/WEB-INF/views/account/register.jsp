<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/roboto-font.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/fonts/font-awesome-5/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/css/style.css">


<body class="form-v5">
	<div class="page-content">
		<div class="form-v5-content">

			<form:form action="/account/register" class="form-detail"
				modelAttribute="form" enctype="multipart/form-data">
				<h2>Trang Đăng Ký</h2>
				<h6>${message}</h6>
				<div class="form-row">
					<label for="id_user">Tên đăng nhập</label>
					<form:input path="id_user" class="input-text" required="required"
						pattern=".{6,}" title="Tên đăng nhập phải từ 6 ký tự trở lên" />
				</div>
				<div class="form-row">
					<label for="full_name">Họ và tên</label>
					<form:input path="full_name" class="input-text" required="required"
						pattern=".{6,}" title="Họ tên phải từ 6 ký tự trở lên" />
				</div>
				<div class="form-row">
					<label for="password">Mật khẩu</label>
					<form:input path="password" type="password" class="input-text"
						required="required" pattern=".{6,}"
						title="Mật khẩu phải từ 6 ký tự trở lên" />
				</div>
				<div class="form-row">
					<label for="phone">Số điện thoại</label>
					<form:input path="phone" type="number" class="input-text"
						required="required" title=" Số điện thoại gồm 10 số" />
				</div>
				<div class="form-row">
					<label for="email">Email của bạn</label>
					<form:input path="email" class="input-text" required="required"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
						title="Email không hợp lệ" />
				</div>
				<div class="form-row">
					<label for="address">Địa chỉ của bạn</label>
					<form:input path="address" class="input-text" required="required"						
						title="Nhập địa chỉ không hợp lệ" />
				</div>
				<div class="form-row">
					<label>Ảnh:</label> <input type="file" name="photo_file" />
					<form:hidden path="images" class="input-text" />
				</div>
				<div class="form-row-last">
					<input type="submit" name="register" class="register"
						value="ĐĂNG KÝ">
				</div>
			</form:form>
			<p class="text-center mt-2">
				Bạn đã có tài khoản? <a href="/account/login">ĐĂNG NHẬP NGAY</a>
			</p>
			<br> <br>
		</div>
	</div>
</body>
</html>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/webapp/static/resources/account/js/account.js">
