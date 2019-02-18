<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="../../css/test1.css">
<% 
	try{
		ResultSet rset = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","login","login");
		out.println("Oracle Database Connection Success");
		Statement stmt = conn.createStatement();
		String query = "select * from boardlist order by bid desc";
		rset = stmt.executeQuery(query);
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
<%
	while(rset.next()){
		out.print("<tr>");
		out.print("<td>" + rset.getString("bid") + "</td>");
		out.print("<td> <a href='views/board/content.jsp?bid="+rset.getString("bid")+"'>" + rset.getString("btitle") + "</a></td>");
		out.print("<td>" + rset.getString("bwriter") + "</td>");
		out.print("<td>" + rset.getString("bdate") + "</td>");
		out.print("<td>" + rset.getString("count") + "</td>");
		out.print("</tr>");
	}
%>
</table>
<a href="board.jsp">글쓰기</a>
<%
	conn.close();
	}catch (Exception e){
		out.println("Oracle Database Connection Something Problem <hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>