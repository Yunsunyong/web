<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image</title>
<script type="text/javascript" src="/login/resources/js/jquery-3.3.1.min.js"></script>
<script>
	function insert(){
		var imageName = $(this).val().split("\\");
		var fileName = imageName[imageName.length-1];
		return fileName;
	}
</script>
</head>
<body>
<form action="/login/login" method="post" >
	<input type="file" name="file"/>
	<input type="submit" value="이미지전송" />
</form>
</body>
</html>