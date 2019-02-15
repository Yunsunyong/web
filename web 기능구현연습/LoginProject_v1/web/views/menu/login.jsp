<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login화면</title>
<link rel="stylesheet" type="text/css" href="/login/css/login.css">
</head>
<body>
<h4>보노보노 로그인연습</h4>
<form action="login_sf.jsp" method="post" id="login-form">
	<input type="text" id="userId" name="userId" placeholder="아이디" maxlength="20"><br>
	<input type="password" id="pwd" name="pwd" placeholder="비밀번호" maxlength="16"><br>
	<input type="submit" id="b_login" value="로그인">
</form>

</body>
</html>