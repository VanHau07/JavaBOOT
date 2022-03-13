<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-6">
						<form:form action="${base}/index" modelAttribute="entity"
							role="form">
							<div class="form-group col-md-3">
							
								<label>ID:</label>
								<form:input path="id" class="form-control" readonly="true"
									placeholder="     Auto" />
							</div>
							
							<div class="form-group col-md-9">
								<label>Hình ảnh:</label>
								<form:input path="hinh_anh" class="form-control"/>
							</div>
							<div class="form-group col-md-12">
								<label>Tên loại:</label>
								<form:input path="ten" class="form-control"/>
							</div>
							<div class="form-group ">
								<button class="btn btn-primary" formaction="${base}/create">THÊM
									MỚI</button>
								<button class="btn btn-warning" formaction="${base}/update">SỬA</button>
								<button class="btn btn-danger" formaction="${base}/delete">XÓA</button>
								<a class="btn btn-default" href="${base}/index">CẬP NHẬT</a>
							</div>

						</form:form>
					</div>
					<!-- /.col-lg-6 (nested) -->
				</div>
				<!-- /.row (nested) -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>