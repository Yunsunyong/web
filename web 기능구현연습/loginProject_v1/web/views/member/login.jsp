<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<link rel="stylesheet" type="text/css" href="/login/resources/css/login.css">
<script type="text/javascript" src="/login/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#form_login").on("submit", function (){
			var userId = $("input:text").val();
			var userPwd = $("input:password").val();
			
			if(userId == "" && userId.length == 0){
				$("#login_div").after("<p>아이디를 입력해주세요.</p>");
			}
			
		});
	});
	
	function check(){
		
	}
</script>
</head>
<body>
<form action="/login/login" method="post" id="form_login">
<div id="logo_div"></div>
<div id="login_div">
	<span id="login_span">
		<input type="text" id="login_input" name="userid" maxlength="20" placeholder="아이디" />
	</span>
</div>
<div id="password_div">
	<span id="password_span">
		<input type="password" id="password_input" name="userpwd" maxlength="20" placeholder="비밀번호" />
	</span>
</div>
<div id="sign_div">
	<input type="submit" value="로그인" id="sign_input" />
</div>
</form>
</body>
</html>