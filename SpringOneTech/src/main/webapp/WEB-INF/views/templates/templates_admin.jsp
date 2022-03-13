<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">

<tiles:insertAttribute name="head" />

<body>

	<div id="wrapper">

	<tiles:insertAttribute name="menu" /> 

		<div id="page-wrapper">
			<tiles:insertAttribute name="body" />
		</div>

	</div>

	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/dist/js/sb-admin-2.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->


<!-- Morris Charts JavaScript -->
<script
	src="${pageContext.request.contextPath}/webapp/static/admin1/js/raphael.min.js"></script>
<script
	src="${pageContext.request.contextPath}/webapp/static/admin1/js/morris.min.js"></script>
<script
	src="${pageContext.request.contextPath}/webapp/static/admin1/js/morris-data.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="//cdn.ckeditor.com/4.15.1/basic/ckeditor.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script
	src="${pageContext.request.contextPath}/webapp/static/admin1/jqueryui/jquery-ui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/webapp/static/admin1/js/estore.admin.js"></script>


	<script
		src="${pageContext.request.contextPath}/webapp/static/ckeditor/ckeditor.js"></script>


	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

	<script>
		$(document).ready(function() {
			var editor = '';
			editor = CKEDITOR.replace('chuthich');

		});
	</script>
	<script>
		$(document).ready(function() {
			var editor = '';
			editor = CKEDITOR.replace('mieuta');

		});
	</script>
	<script>
		$(document).ready(function() {
			var editor = '';
			editor = CKEDITOR.replace('chitiet');

		});
	</script>
	<!-- Flot Charts JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/flot/excanvas.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/flot/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/flot/jquery.flot.time.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/js/flot-data.js"></script>





	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/vip/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/vip/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/vip/js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/vip/js/dataTables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/vip/js/dataTables/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath}/webapp/static/admin1/vip/js/startmin.js"></script>







</body>
</html>