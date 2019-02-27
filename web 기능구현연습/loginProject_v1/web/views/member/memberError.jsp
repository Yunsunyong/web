<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러메시지</title>
<script type="text/javascript" src="/login/resources/js/jquery-3.3.1.min.js">
</script>
<script type="text/javascript"></script>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");

String name = (String)request.getAttribute("message"); 

out.print("<script>alert('"+name+"');history.back();</script>");
%>
<h1>다시 로그인 창</h1>
</body>
</html>