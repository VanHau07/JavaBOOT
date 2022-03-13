<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<div class="panel panel-default">
	<div class="panel-body">
		<form:form action="${base}/index" modelAttribute="entity"
			enctype="multipart/form-data">

			<div class="row">
				<div class="form-group col-sm-6">
					<label>ID:</label>
					<form:input path="id" class="form-control" readonly="true"
						placeholder="Auto Number" />
				</div>

				<div class="form-group col-sm-3">
					<label>Phần trăm giảm:</label>
					<form:input path="ma_giam" class="form-control" type="number"
						min="0" oninput="validity.valid||(value='');" step="1" />
				</div>
				<div class="form-group col-sm-3">
					<label>Số lượng:</label>
					<form:input path="soluong" class="form-control"
						type="number" required="required" min="0"
						oninput="validity.valid||(value='');" step="1" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<label>Tên sản phẩm:</label>
					<form:input path="ten" class="form-control" required="required"
						pattern=".{6,}" title="Tên sản phẩm phải từ 6 ký tự trở lên" />
				</div>
				<div class="form-group col-sm-3">
					<label>Giá bán:</label>
					<form:input path="gia_goc" class="form-control" type="number"
						required="required" min="0" />
				</div>
				<div class="form-group col-sm-3">
					<label>Giá nhập vào:</label>
					<form:input path="gia_nhap_vao" class="form-control" type="number"
						required="required" min="0" />
				</div>

			</div>
			<div class="row">
				<div class="form-group col-sm-3">
					<label>Loại:</label>
					<form:select path="categorys.id" class="form-control"
						required="required">

						<form:options items="${listscate}" itemLabel="ten" 
						itemValue="id" />
					</form:select>

				</div>
				<div class="form-group col-sm-3">
					<label>Đi kèm với:</label>
					<form:select path="chu_de" class="form-control">
						<form:options items="${listscate}" itemLabel="ten" itemValue="ten" />
					</form:select>
				</div>
				<div class="form-group col-sm-3">
					<label>Bán cuối tuần:</label>
					<div class="form-control">
						<form:radiobutton path="deal_week" value="true" label=" Đúng" />
						<form:radiobutton path="deal_week" value="false" label=" Không " />
					</div>

				</div>

				<div class="form-group col-sm-3">
					<label>Ngày thêm:</label>
					<form:input id="ngaytao" path="thoi_gian" class="form-control" />
				</div>

			</div>


			<div class="row">
				<div class="form-group col-sm-3">
					<label>Nổi Bật:</label>
					<div class="form-control">
						<form:radiobutton path="deal_best" value="true" label=" Đúng" />
						<form:radiobutton path="deal_best" value="false" label=" Không " />
					</div>
				</div>
				<div class="form-group col-sm-3">
					<label>Banner:</label>
					<div class="form-control">
						<form:radiobutton path="deal_new" value="true" label=" Đúng" />
						<form:radiobutton path="deal_new" value="false" label=" Không " />
					</div>
				</div>
				<div class="form-group col-sm-3">
					<label>Sale:</label>
					<div class="form-control">
						<form:radiobutton path="sale" value="true" label=" Đúng" />
						<form:radiobutton path="sale" value="false" label=" Không " />
					</div>
				</div>
				<div class="form-group col-sm-3">
					<label>Lượt xem:</label>

					<form:input path="luot_xem" class="form-control" type="number"
						min="0" oninput="validity.valid||(value='0');" step="1" />

				</div>
			</div>




			<div class="row">
				<div class="form-group col-sm-3">
					<label>Ảnh chính:</label> <input type="file" name="image_file"
						class="form-control" />
					<form:hidden path="hinh_anh" required="required" />
				</div>
				<div class="form-group col-sm-3">
					<label>Ảnh miêu tả</label> <input type="file" name="image_file1"
						class="form-control" />
					<form:hidden path="detail_image" />

				</div>
				<div class="form-group col-sm-3">

					<label>Tốt nhất</label>
					<div class="form-control">
						<form:radiobutton path="deal_best" value="true" label=" Đúng" />
						<form:radiobutton path="deal_best" value="false" label=" Không " />
					</div>

				</div>
				<div class="form-group col-sm-3">
					<label>Yêu thích</label>
					<div class="form-control">
						<form:radiobutton path="deal_favor" value="true" label=" Đúng" />
						<form:radiobutton path="deal_favor" value="false" label=" Không " />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-sm-3">
					<label>Ảnh kèm theo 1:</label> <input type="file"
						name="image_file2" class="form-control" />
					<form:hidden path="anh_1" required="required" />
				</div>
				<div class="form-group col-sm-3">
					<label>Ảnh kèm theo 2:</label> <input type="file"
						name="image_file3" class="form-control" />
					<form:hidden path="anh_2" />

				</div>
				<div class="form-group col-sm-3">
					<label>Ảnh kèm theo 3:</label> <input type="file"
						name="image_file4" class="form-control" />
					<form:hidden path="anh_3" />

				</div>
				<div class="form-group col-sm-3">
					<label>Chạy nhất</label>
					<div class="form-control">
						<form:radiobutton path="deal_hot" value="true" label=" Đúng" />
						<form:radiobutton path="deal_hot" value="false" label=" Không " />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-sm-12">
					<label>Miêu tả:</label>

					<form:textarea id="mieuta" name="mieuta" path="mo_ta_ngan"
						class="form-control" />
				</div>
				<div class="form-group col-sm-12">
					<label>Chi Tiết :</label>
					<form:textarea id="chitiet" name="chitiet" path="mo_ta"
						class="form-control" />
				</div>
				<div class="form-group col-sm-12">
					<button class="btn btn-primary" formaction="${base}/create">Thêm</button>
					<button class="btn btn-warning" formaction="${base}/update">Sửa</button>
					<button class="btn btn-danger" formaction="${base}/delete">Xóa</button>
					<a class="btn btn-default" href="${base}/index">Cập Nhật Lại</a>
				</div>
			</div>
		</form:form>
	</div>
</div>




