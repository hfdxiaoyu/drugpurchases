<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>登录</title>
		<link rel="stylesheet" type="text/css" href="css/样式.css" />
		<link rel="stylesheet" type="text/css" href="css/登录注册.css" />
	</head>

	<body>
		<!-------------------login-------------------------->
		<div class="login">
			<form action="#" method="post">
				<h1><a href="首页.html"><img src="img/logo.png"></a></h1>
				<p></p>
				<div class="msg-warn hide"><b></b>公共场所不建议自动登录，以防账号丢失</div>
				<p><input type="text" name="username" value="" placeholder="昵称/邮箱/手机号"></p>
				<p><input type="password" name="password" value="" placeholder="密码"></p>
				<p><a href="首页.html"><input type="button" name="btn" value="登录" onclick="首页.HTML"></a></p>
				<p class="txt">
					<a href="管理用户界面.html">管理员界面</a>
					<a class="" href="regist4">免费注册</a>
					<a href="#">忘记密码？</a>
				</p>
			</form>
		</div>

	</body>

</html>