<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>采购管理</title>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>


<!-- 引入css样式文件 -->
<!-- Bootstrap Core CSS-->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<!-- MetisMenu CSS -->
<link href="css/metisMenu.min.css" "rel="stylesheet" />
<!-- DataTables CSS -->
<link href="css/dataTables.bootstrap.css" rel="stylesheet" />
<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet" />
<!-- Custom Fonts -->
<link href="css/font-awesome.min.css" type="text/css" />
<link href="css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="wrapper">
		<!-- 导航栏部分 -->
		<%@include file="head.jsp"%>
		<!-- 列表查询部分  start-->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<b><font size="6" color="skyblue">采购管理</font></b>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- 左侧显示列表部分 end-->
			</nav>
			<!-- 创建采购表 -->
			<div class="panel panel-default ">
				<h4 class="panel-title ">新建采购信息</h4>
				<div class="panel-body ">
					<from class="form-horizontal ">
					<div class="form-group ">
						<label for="new_drugName " class="col-sm-10 custom-control-label ">药品名字</label>
						<div class="col-sm-10 ">
							<input type="text " class="form-control " id="new_drugName "
								placeholder="药品名称 " name="drug_name " />
						</div>
					</div>
					<div class="form-group ">
						<label for="new_drugPrice "
							class="col-sm-10 custom-control-label ">价格</label>
						<div class="col-sm-10 ">
							<input type="text " class="form-control " id="new_drugPrice "
								placeholder="价格 " name="drug_price " />
						</div>
					</div>

					<div class="form-group ">
						<label for="new_From " class="col-sm-10 "
							style="float: left; padding: 7px 15px 0 27px;">药品生产商</label>
						<div class="col-sm-10 ">
							<select class="form-control " id="new_drugFrom "
								name="drug_source ">
								<option value=" ">--请选择--</option>

							</select>
						</div>
					</div>



					<div class="form-group ">
						<label for="new_drugDate " class="col-sm-10 custom-control-label ">生产日期</label>
						<div class="col-sm-10 ">
							<input type="text " class="form-control " id="new_drugDate "
								placeholder="生产日期 " name="drug_date " />
						</div>
					</div>

					<div class="form-group ">
						<label for="new_drugNumber "
							class="col-sm-10 custom-control-label ">采购数量</label>
						<div class="col-sm-10 ">
							<input type="text " class="form-control " id="new_Number "
								placeholder="采购数量 " name="drug_Number " />
						</div>
					</div>

					</form>
				</div>
				<div class="panel-footer" align="right">
					<button type="button" class="btn btn-default" data-dismiss="panel">关闭</button>
					<button type="button" class="btn btn-primary" onclick="createBuy()">创建</button>

				</div>
			</div>



		</div>
	</div>




</body>
</html>
