<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>用户注册页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">

<style>
span {
	margin-top: 10px;
	color: red;
	display: block;
}
</style>
<script>
	function renewEmailState() {
		document.getElementById("emailSpan").innerHTML = "";
	}
	
	function renewUsernameState() {
		document.getElementById("userSpan").innerHTML = "";
	}

	function checkUsername() {
		var username = $('#username').val();
		$
				.ajax({
					url : 'user/checkUsername.do',
					data : {'username' : username},
					type : 'post',
					success : function(result) {
						if (result != "pass") {
							document.getElementById("userSpan").innerHTML = "该用户名已经被注册";
							document.getElementById("username").value = "";
						}
					}
				})
	}

	function checkEmail() {
		//验证邮箱格式是否正确
		var email = $('#email').val();
		var re=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		if(re.test(email)){
			//验证邮箱是否重复注册
			$.ajax({
				url : 'user/checkEmail.do',
				data : {'email' : email},
				type : 'post',
				success : function(result) {
					if (result != "pass") {
						document.getElementById("emailSpan").innerHTML = "该邮箱已经被注册";
						document.getElementById("email").value = "";
					}
				}
			})
	    }else{
	    	document.getElementById("emailSpan").innerHTML = "该邮箱格式错误";
	    	document.getElementById("email").value = "";
	    }
		
	}
	
	function doSubmit() {
		if ($('#username').val() != "" && $('#email').val() != "" && $('.password').val() != "") {
			document.forms[0].submit();
		} else {
			document.getElementById("submitSpan").innerHTML = "请填完所有的用户信息再进行提交";
		}
	}
</script>

</head>
<body>
	<div class="page-container">
		<h1>米奥课堂</h1>
		<form action="${pageContext.request.contextPath}/user/regist.do"
			method="post">
			<div>
				<input type="text" name="userName" class="username" id="username"
					placeholder="用户名" onblur="checkUsername()"
					onfocus="renewUsernameState()" /> <span id="userSpan"></span>
			</div>
			<input type="text" name="nickName" class="nickname" placeholder="昵称" />
			<div>
				<input type="password" name="password" class="password"
					placeholder="密码" /> 
				<input type="text" name="className" placeholder="班级名  格式：2014级1班"/>
				<input type="email" name="email" class="email"
					id="email" placeholder="邮箱" onblur="checkEmail()"
					onfocus="renewEmailState()" />
				 <span id="emailSpan"></span>
			</div>
			<input type="radio" name="myrole" value="teacher" checked
				style="width: 35px; height: 10px" />教师 <br />
			 <input type="radio"
				name="myrole" value="student" style="width: 35px; height: 10px" />学生
			<input type="button" value="提交" onclick="doSubmit()" />
			<div>
				<span id="submitSpan"></span>
			</div>
			<div class="error">
				<span>+</span>
			</div>
		</form>
		<div class="connect">
			<p>欢迎加入米奥课堂</p>
			<br /> <br /> <br /> <br /> <br /> <br />
		</div>
	</div>
	<script src="assets/js/jquery-1.8.2.min.js"></script>
	<script src="assets/js/supersized.3.2.7.min.js"></script>
	<script src="assets/js/supersized-init.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>