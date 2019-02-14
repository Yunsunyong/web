<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판내용</title>
</head>
<%
	String bid = request.getParameter("bid");
	
	try{
		ResultSet rest = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","board","board");
		out.println("Oracle 데이터베이스에 성공적으로 접속!!");
		
		Statement stmt = conn.createStatement();
		String query = "select * from boardlist where bid =" + bid;
		
		rest = stmt.executeQuery(query);
		while(rest.next()){
	
%>

<body>
	<h1>게시글</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<td><%=rest.getString("bid") %></td>
			<th>작성자</th>
			<td><%=rest.getString("bwriter") %></td>
			<th>날짜</th>
			<td><%=rest.getString("bdate") %></td>
			<th>조회수</th>
			<td><%=rest.getString("count") %></td>
		</tr>
		<tr>
			<th colspan="2">제목</th>
			<td colspan="6"><%=rest.getString("btitle") %></td>
		</tr>
		<tr>
			<th colspan="2">내용</th>
			<td colspan="6"><%= rest.getString("content") %></td>
		</tr>
		
	</table>
	<a href="delete.jsp?bid=<%=rest.getString("bid") %>">게시글 삭제</a>
	<a href="../../index.jsp">목록으로</a>
</body>
<% 
	}
	conn.close();
	}catch(Exception e){
		out.println("Oracle 데이터베이스 접속 문제있음. <hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
</html>