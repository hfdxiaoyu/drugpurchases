<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册成功</title>
    <meta http-equiv=Content-Type content="text/html; charset=utf-8">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" "rel="stylesheet" />
    <!-- DataTables CSS -->
    <link href="css/dataTables.bootstrap.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet"/>
    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" type="text/css"/>
    <link href="css/boot-crm.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"><font size=6 color="red"><B>药品采购系统</B></font></a>
        </div>
       
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">注册成功，<a href="login4">
                            <i class="fa fa-edit fa-fw"></i> 登录
                        </a></div>
                    
                        
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
    function clearEmployee() {
        $("#new_name").val("");
        
    }

    
</script>
</body>
</html>
