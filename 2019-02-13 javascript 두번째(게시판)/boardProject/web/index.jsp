<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="resources/css/test1.css">
<% 
request.setCharacterEncoding("UTF-8");
	int idx = 1;
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String date = request.getParameter("date");
	int count = 1000;
	String content = request.getParameter("content");
%>
</head>
<body>
<h2 id="h2">게시판 목록</h2>
<table>
	<tr>
		<th>글번호</th>
		<th>글제목</th>
		<th>작성자</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	<tr>
		<td><%=idx %></td>
		<td><%=title %></td>
		<td><%=writer %></td>
		<td><%=date %></td>
		<td><%=count %></td>
	</tr>
</table>
<a href="views/test/board.jsp">글쓰기</a>
</body>
</html>