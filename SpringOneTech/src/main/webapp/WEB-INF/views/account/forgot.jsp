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
				<h2 class="login mt-5">QUÊN MẬT KHẨU</h2>
			<h4 style="text-align: center; color: orange;">${message}</h4>
				
			<form class="form-detail" action="/account/forgot" method="post">

				<div class="form-row">
					<label for="id_user">Tên đăng nhập</label> <input name="id" class="form-control"/>
				</div>

				<div class="form-row">
					<label for="EMAIL">Nhập email của bạn</label> <input name="email" 
					class="form-control"  />
				</div><br>
				<div class="form-row-last">
						<button class="btn btn-success">Gửi thông tin</button>						
				</div>
			</form>			
			<h4  style="text-align: center;"><button class="btn btn-white"><a href="/home">Về trang chủ</a></button></h4>
		</div>

	</div>
</body>
</html>