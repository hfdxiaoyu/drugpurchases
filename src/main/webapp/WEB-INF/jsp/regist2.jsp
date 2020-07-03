<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="css/样式.css" />
		<link rel="stylesheet" type="text/css" href="css/登录注册.css" />
	</head>
	<body>
			<div class="reg">
			<form action="registss" method="post">
				<h1><a href="login4"><img src="img/logo.png"></a></h1>
			&nbsp;&nbsp;
			用户名：<input type="text" name="username" id="username" onblur="user_vali()" onfocus="user_focus()" placeholder="请输入用户名" />
			<div id="box1"></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			密码：<input type="password" name="password1" id="password1" placeholder="请输入密码" />
			<div id="box2"></div>
			确认密码：<input type="password" name="password2" id="password2" onblur="pass2_vali()" onfocus="pass2_focus()" placeholder="请再次输入密码" />
			<div id="box3"></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			手机号：<input type="text" name="phone" id="phone" />
			<div id="box5"></div>
			&nbsp;&nbsp;&nbsp;
			地址：<input type="text" name="email" id="email" />
			<div id="box4"></div>
			&nbsp;&nbsp;&nbsp;
			验证码：<input type="text" name="code" id="code" />
			<div id="box6"></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" name="btn" value="注册" onclick="isReg()">
			</p>
		</form>
		<script>
			
				var username = document.getElementById("username");
				var password1 = document.getElementById("password1");
				var password2 = document.getElementById("password2");
				var email = document.getElementById("email");
				var phone = document.getElementById("phone");
				var code = document.getElementById("code");
				var btn = document.getElementById("btn");
				
				var box1 = document.getElementById("box1");
				var box2 = document.getElementById("box2");
				var box3 = document.getElementById("box3");
				var box4 = document.getElementById("box4");
				var box5 = document.getElementById("box5");
				var box6 = document.getElementById("box6");
				
				//用户名效验
				function user_vali(){
					var user = username.value;
					//用户名只能为字母和数字,且必须以字母开头.长度为6-20;
					if(user.length>=6 && user.length<=20){
						if((user.charCodeAt(0)>=65 && user.charCodeAt(0)<=90) || (user.charCodeAt(0)>=97 && user.charCodeAt(0)<=122)){
							for (var i = 1;i<user.length;i++) {
								var useri = user.charCodeAt(i);
								if((useri>=48 && useri<=57) || (useri>=65 && useri<=90) || (useri>=97 && useri<=122)){
									console.log("用户名第"+(i+1)+"位核验通过");
								} else{
									box1.innerHTML = "用户名必须由字母和数字组成"
									break;
								}
							}
							return true;
						} else{
							box1.innerHTML = "用户名必须以字母开头";
						}
					} else{
						box1.innerHTML = "用户名大于6位小于20位";
					}
				}
				
				function user_focus(){
					box1.innerHTML = "";
				}
				
				//两次输入密码效验
				function pass2_vali(){
					var pass1 = password1.value;
					var pass2 = password2.value;
					if (pass1 == pass2) {
						box3.innerHTML = "";
						return true;
					} else{
						box3.innerHTML = "两次输入密码不一致";
					}
				}
				
				function pass2_focus(){
					box3.innerHTML = "";
				}
				
				function isReg(){
					var b1 = user_vali();
					var b2 = pass2_vali();
					if (b1 && b2) {
						window.location = "registss";
					}
				}
		</script>
	</body>
</html>