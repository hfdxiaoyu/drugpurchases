<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL标签和自定义分页标签 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="itheima" uri="http://itheima.com/common/"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>药品管理</title>
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
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">

			<div class="navbar-header">
				<a class="navbar-brand" href="#"><font size=6
					color="lightsalmon"><B>药品采购系统</B></font></a>
			</div>

			<!-- 导航栏右侧图标部分 -->
			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="搜索内容..." aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
					</form>
				</li>
				<!-- 邮件通知 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
						<svg class="bi bi-envelope-fill" width="1em" height="1em"
							viewBox="0 0 16 16" fill="currentColor"
							xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
								d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z" />
</svg>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>张经理</strong> <span class="pull-right text-muted">
										<em>昨天</em>
									</span>
								</div>
								<div>今天晚上开会，讨论一下下个月工作的事...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>查看全部消息</strong>
								<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>
				<!-- 邮件通知 end -->
				<!-- 任务通知 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <svg class="bi bi-card-text"
							width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
							xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
								d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
  <path fill-rule="evenodd"
								d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z" />
</svg> <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">完成40%</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">完成20%</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>查看所有任务</strong>
								<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>
				<!-- 任务通知 end -->
				<!-- 消息通知 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <svg class="bi bi-bell-fill"
							width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
							xmlns="http://www.w3.org/2000/svg">
  <path
								d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z" />
</svg> <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> 新回复 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> 新消息 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> 新任务 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> 服务器重启 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
								<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>
				<!-- 消息通知 end -->
				<!-- 用户信息和系统设置 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <svg class="bi bi-person-fill"
							width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
							xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
								d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
</svg> <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"><svg
										class="bi bi-person-square" width="1em" height="1em"
										viewBox="0 0 16 16" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
											d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
  <path fill-rule="evenodd"
											d="M2 15v-1c0-1 1-4 6-4s6 3 6 4v1H2zm6-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
</svg></i> 用户：<!--${USER_SESSION.user_name}--> </a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"><svg
										class="bi bi-gear-wide" width="1em" height="1em"
										viewBox="0 0 16 16" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
											d="M8.932.727c-.243-.97-1.62-.97-1.864 0l-.071.286a.96.96 0 0 1-1.622.434l-.205-.211c-.695-.719-1.888-.03-1.613.931l.08.284a.96.96 0 0 1-1.186 1.187l-.284-.081c-.96-.275-1.65.918-.931 1.613l.211.205a.96.96 0 0 1-.434 1.622l-.286.071c-.97.243-.97 1.62 0 1.864l.286.071a.96.96 0 0 1 .434 1.622l-.211.205c-.719.695-.03 1.888.931 1.613l.284-.08a.96.96 0 0 1 1.187 1.187l-.081.283c-.275.96.918 1.65 1.613.931l.205-.211a.96.96 0 0 1 1.622.434l.071.286c.243.97 1.62.97 1.864 0l.071-.286a.96.96 0 0 1 1.622-.434l.205.211c.695.719 1.888.03 1.613-.931l-.08-.284a.96.96 0 0 1 1.187-1.187l.283.081c.96.275 1.65-.918.931-1.613l-.211-.205a.96.96 0 0 1 .434-1.622l.286-.071c.97-.243.97-1.62 0-1.864l-.286-.071a.96.96 0 0 1-.434-1.622l.211-.205c.719-.695.03-1.888-.931-1.613l-.284.08a.96.96 0 0 1-1.187-1.186l.081-.284c.275-.96-.918-1.65-1.613-.931l-.205.211a.96.96 0 0 1-1.622-.434L8.932.727zM8 12.997a4.998 4.998 0 1 0 0-9.995 4.998 4.998 0 0 0 0 9.996z" />
</svg></i> 系统设置</a></li>
						<li class="divider"></li>
						<li><a
							href="${pageContext.request.contextPath }/logout.action"> <i
								class="fa fa-sign-out fa-fw"> <svg
										class="bi bi-box-arrow-right" width="1em" height="1em"
										viewBox="0 0 16 16" fill="currentColor"
										xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
											d="M11.646 11.354a.5.5 0 0 1 0-.708L14.293 8l-2.647-2.646a.5.5 0 0 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0z" />
  <path fill-rule="evenodd"
											d="M4.5 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5z" />
  <path fill-rule="evenodd"
											d="M2 13.5A1.5 1.5 0 0 1 .5 12V4A1.5 1.5 0 0 1 2 2.5h7A1.5 1.5 0 0 1 10.5 4v1.5a.5.5 0 0 1-1 0V4a.5.5 0 0 0-.5-.5H2a.5.5 0 0 0-.5.5v8a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5v-1.5a.5.5 0 0 1 1 0V12A1.5 1.5 0 0 1 9 13.5H2z" />
</svg>
							</i>退出登录
						</a></li>
					</ul></li>
				<!-- 用户信息和系统设置结束 -->
			</ul>

			<!-- 左侧显示列表部分 start-->
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">

						<!--
                    	作者：offline
                    	时间：2020-06-19
                    	描述：导航栏
                    -->

						<li><a href="drug.html"> <i class="fa fa-edit fa-fw"></i>
								药品管理
						</a></li>
						<li><a href="buy.html"> <i class="fa fa-dashboard fa-fw"></i>
								采购管理
						</a></li>
						<li><a href="#"> <i class="fa fa-dashboard fa-fw"></i>
								退货管理
						</a></li>
						<li></li>
					</ul>
				</div>
			</div>
			<!-- 左侧显示列表部分 end-->
		</nav>
		<!-- 列表查询部分  start-->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<b><font size="6" color="skyblue">药品管理</font></b>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" method="post"
						action="${pageContext.request.contextPath }/medicin/list.action">
						<div class="form-group">
							<label for="name">药品名字</label> <input type="text"
								class="form-control" id="name" value="${medName} "
								name="medName" />
						</div>
						<div class="form-group">
							<label for="price">价格</label> <input type="text"
								class="form-control" id="price" value="${medPrice}"
								name="medPrice" />
						</div>
						<div class="form-group">
							<label for="product">药品生产商</label> <select class="form-control"
								id="product" name="medProduct">
								<option value="${medProduct}">--请选择--</option>
								<c:forEach items="${medProduct}" var="item">
									<!-- <option value="${item.dict_item_name}"
                                        <c:if test="${item.dict_item_name == sex}">selected</c:if>>
                                        ${item.dict_item_name }
                                </option>-->
								</c:forEach>
							</select>

						</div>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<a href="#" class="btn btn-primary" data-toggle="modal"
				data-target="#newDialog" onclick="clearMedicin()">新建表</a>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">药品表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>药品id</th>
									<th>药品名字</th>
									<th>规格（ml、g）</th>
									<th>价格</th>
									<th>药品生产商</th>
									<th>生产日期</th>
									<th>有效期</th>
									<th>人员id</th>
									<th>采购编号</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td align="center">${row.medid}</td>
										<td align="center">${row.medname}</td>
										<td align="center">${row.medspe}</td>
										<td align="center">${row.medprice}</td>
										<td align="center">${row.medproduct}</td>
										<td align="center">${row.medsdate}</td>
										<td align="center">${row.medvalidity}</td>
										<td align="center">${row.mobile}</td>
										<td align="center"></td>
										<td align="center"><a href="#"
											class="btn btn-primary btn-xs" data-toggle="modal"
											data-target="#editDialog" onclick="edit(${row.medid})">修改</a>
											<a href="#" class="btn btn-danger btn-xs"
											onclick="deleteMedicin(${row.medid})">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 自定义分页表签，根据药品数以及设定的页数数据显示内容 -->
						<div class="col-md-12 text-right">
							<itheima:page
								url="${pageContext.request.contextPath }/medicin/list.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- 列表查询部分  end-->
	</div>

	<!-- 修改药品模态框 -->




	<!-- 引入js文件 -->
	<!-- jQuery -->
	<script src="jquery-1.11.3.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="bootstrap.min.js"></script>
	<!-- Metis Menu Plugin JavaScript -->
	<script src="metisMenu.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="jquery.dataTables.min.js"></script>
	<script src="../bootstrap-4.5.0-dist/js/bootstrap.bundle.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="sb-admin-2.js"></script>
	<!-- 编写js代码 -->
	<script type="text/javascript">
    //清空新建表窗口中的数据
    function clearMedicin() {
        $("#new_name").val("");
        
    }

    // 创建药品
    function create() {
        $.post("<%=basePath%>medicin/create.action",
            $("#new_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("创建成功！");
                    window.location.reload();
                } else {
                    alert("创建失败！");
                    window.location.reload();
                }
            });
    }

    // 通过id获取修改的药品信息
    function edit(id) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>medicin/getById.action",
            data: {"id": id},
            success: function (data) {
                $("#edit_id").val(data.id);
                
            }
        });
    }

    // 执行修改药品操作
    function update() {
        $.post("<%=basePath%>medicin/update.action", $("#edit_form").serialize(), function (data) {
            if (data == "OK") {
                alert("信息更新成功！");
                window.location.reload();
            } else {
                alert("信息更新失败！");
                window.location.reload();
            }
        });
    }

    // 删除药品
    function deleteMedicin(id) {
        if (confirm('确实要删除该药品吗?')) {
            $.post("<%=basePath%>medicin/delete.action", {"id": id},
                function (data) {
                    if (data == "OK") {
                        alert("药品删除成功！");
                        window.location.reload();
                    } else {
                        alert("药品删除失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>

</body>
</html>