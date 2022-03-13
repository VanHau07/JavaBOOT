<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!doctype html>
<html lang="vi">

<tiles:insertAttribute name="head"></tiles:insertAttribute>


<body>
<div class="super_container">
	
	<tiles:insertAttribute name="header"></tiles:insertAttribute>
	<!-- section-header.// -->


		<tiles:insertAttribute name="body" />

	<!-- ========================= FOOTER ========================= -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
<!-- ========================= FOOTER END // ========================= -->


</div>
</body>

</html>