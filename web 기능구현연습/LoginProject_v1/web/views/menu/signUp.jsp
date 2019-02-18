<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입화면</title>
<script type="text/javascript">
	function validate() {
		
		var userid = document.getElementById("userid");
		var pwd1 = document.getElementById("pwd1");
		var pwd2 = document.getElementById("pwd2");
		//아이디 검사
		if(!check(/^[a-z][a-z0-9]{3,13}$/,userid,"첫글자는 반드시 영어소문자로, (숫자포함)4~14글자로 입력하세요.")){
			return false;
		}
		//비밀번호 검사
		if(!check(/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,15}$/,pwd1,"숫자,대소문자,특수문자 포함 8~16자로 입력해주세요.\n"
				+"특수문자는(!@#$%^&*)만 사용가능")){
			return false;
		}
		if(!check(/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,15}$/,pwd2,"숫자,대소문자,특수문자 포함 8~16자로 입력해주세요.")){
			return false;
		}
		if(pwd1.value != pwd2.value){
			alert("암호가 일치하지 않습니다. 다시입력하십시오.");
			pwd1.focus();
			return false;
		}
		
		//이름 검사
		var name = document.getElementById("name");
		if(!check(/^[가-힣]{2,}$/,name,"한글로만 2글자이상 입력해주세요.")){
			return false;
		}
		
		//이메일 검사
		var email = document.getElementById("email");
		if(/^[\w]{4,}@[\w]+(\.[\w+]{1,3}$)/,email,"이메일 입력양식이 잘못되었습니다."){
			return false;
		}
		
		//핸드폰번호 검사
		var phone = document.getElementById("phone");
		if(/^[0-9]{1,3}$/,phone,"숫자만 입력하세요."){
			return false;
		}
		return true;
	}
	
	function check(re, element, message){
		if(re.test(element.value)){
			return true;
		}
		alert(message);
		element.value="";
		element.focus();
		
		return false;
	}
</script>
<link rel="stylesheet" type="text/css" href="/login/css/signUp.css">
</head>
<header id="hd1">회원정보입력</header>
<body>
<form action="#" method="post" name="join_form" onsubmit="return validate();">
	<table id="tb1">
		<tr>
			<td colspan="2"><font color="gray"><b>※기본정보</b></font>
		<tr>
		<tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">아이디&nbsp;</font>
			<td bgcolor="#fff">
				<input type="text" maxlength="14" name="userid" id="userid" autofocus>
				<font color="orange">(4~14자 숫자,대소문자 포함)</font>
		</tr>
		<tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">비밀번호&nbsp;</font>
			<td bgcolor="#fff">
				<input type="password" maxlength="16" name="pwd1" id="pwd1">
				<font color="orange">(8~16자 숫자, 대소문자, 특수문자 포함)</font>
			</td>
		</tr>
		<tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">비밀번호확인&nbsp;</font>
			<td bgcolor="#fff">
				<input type="password" maxlength="16" name="pwd2" id="pwd2">
				<font color="orange">(위 비밀번호와 같이 입력하세요)</font>
			</td>
		</tr>
		<tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">이름</font></td>
			<td bgcolor="#fff">
				<input type="text" maxlength="30" name="name" id="name"  placeholder="Ex)홍길동">
			</td>
		</tr>
		<!-- <tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">성별</font></td>
			<td bgcolor="#fff">
				<input type="radio" name="gender" value="M">남자
				<input type="radio" name="gender" value="F">여자
		</tr> -->
		<tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">생년월일/성별</font>
			<td bgcolor="#fff">
				<input type="date" name="date" id="date">
				<input type="radio" name="gender" value="M">남자
				<input type="radio" name="gender" value="F">여자  
		</tr>
		<tr>
			<td id="t1"><span id="red">*&nbsp;</span><font id="f1">이메일</font></td>
			<td bgcolor="#fff">
				<input type="email" name="email" id="eamil" placeholder="Ex)asd123@naver.com">
			</td>
		</tr>	
		<tr>
			<td colspan="2"><font color="gray"><b>※개인신상정보</b></font>
		</tr>
		<tr>
			<td id="t1"><font id="f1">주소</font></td>
			<td id="t2" bgcolor="#fff">
				<input type="text" maxlength="3" size="3" id="zipcode" name="zipcode">-<input type="text" maxlength="3" size="3" name="zipcode" id="zipcode">&nbsp;
				<input type="button" value="우편번호검색"><br>
				<input type="text" maxlength="50" size="50" name="adress" id="adress">
			</td>
		</tr>
		<tr>
			<td id="t1"><font id="f1">핸드폰번호</font></td>
			<td bgcolor="#fff">
				<input type="hidden" name="phone" id="phone" form="join_form">
				<select>
					<option value="">선택</option>
					<option value="011">011</option>
					<option value="010">010</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
				<input type="tel" maxlength="4" name="phone1" id="phone" size="4">-
				<input type="tel" maxlength="4" name="phone2" id="phone" size="4">
			</td>
		</tr>
	</table>
	<input type="submit" value="회원가입">
	<div id="d1">
		<a href="../../index.jsp">회원가입</a>
	</div>
</form>
</body>
</html>