<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!-- /.row -->
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
												<th>ID</th>
												<th>Ảnh</th>
												<th>Tên sản phẩm</th>
												<th>Loại</th>
												<th>Giá bán</th>
												<th>Giảm giá</th>
												<th>Thao tác</th>
											</tr>
										</thead>
										<tbody>
							<c:forEach var="e" items="${list}">
								<tr class="odd gradeA">
									<td>${e.id}</td>
										<td><img alt="" src="${pageContext.request.contextPath}/webapp/static/resources/images/${e.hinh_anh}" width="50px" height="50px	"></td>
									<td>${e.ten}</td>
									<td>${e.categorys.ten}</td>
									<td><f:formatNumber value="${e.gia_goc}" pattern="#,###" />
										VNĐ</td>
									<td>${e.ma_giam}</td>
								


									<td><a class="btn btn-sm btn-info"
										href="${base}/edit/${e.id}">SỬA</a> <a
										class="btn btn-sm btn-danger" href="${base}/delete/${e.id}">XÓA</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
									</table>
								
				</div>
			</div>
		</div>
	</div>
</div>
   <script>
        $(document).ready(function () {
            $('#"dataTables-example"').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
    </script>
    
    <script type="text/javascript" src="https://cdn.datatables.net/tabletools/2.2.4/js/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/tabletools/2.2.2/swf/copy_csv_xls_pdf.swf"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.flash.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.print.min.js"></script>
