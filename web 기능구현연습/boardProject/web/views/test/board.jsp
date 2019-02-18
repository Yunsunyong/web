<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<script>
	function formCheck() {
		var title = document.forms[0].title.value;
		var writer = document.forms[0].writer.value;
		var date = document.forms[0].date.value;
		var content = document.forms[0].content.value;
		
		if(title == null || title== ""){
			alert('제목을 입력하세요');
			document.forms[0].title.focus();
			return false;
		}
		if(writer == null || writer== ""){
			alert('작성자을 입력하세요');
			document.forms[0].writer.focus();
			return false;
		}
		if(date == null || date== ""){
			alert('날짜를 입력하세요');
			document.forms[0].date.focus();
			return false;
		}
		if(content == null || content== ""){
			alert('글내용을 입력하세요');
			document.forms[0].content.focus();
			return false;
		}
	}	
</script>
</head>
<body>
<h2>글작성</h2>
<form action="insert.jsp" method="post" onsubmit="return formCheck();">
<label for="btitle">글제목 : </label>
<input type="text" id="btitle" name="btitle" size="30">
<br>
<label for="bwriter">작성자 : </label>
<input type="text" id="bwriter" name="bwriter" size=10;>
<br>
<label for="bdate">날짜 : </label> &nbsp;
<input type="text" id="bdate" name="bdate"><br>
글내용 : <textarea rows="10" cols="20" name="content"></textarea><br>
<input type="submit" value="쿼리 전송">
</form>

</body>
</html>