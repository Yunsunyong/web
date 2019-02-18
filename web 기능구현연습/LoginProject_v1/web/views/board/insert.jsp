<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% 
request.setCharacterEncoding("UTF-8");

	String btitle = request.getParameter("btitle");
	String bwriter = request.getParameter("bwriter");
	String bdate = request.getParameter("bdate");
	String content = request.getParameter("content");
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","login","login");
		out.println("Oracle 데이터베이스 접속");
		Statement stmt = conn.createStatement();
		String query = "insert into boardlist values (seq_bid.nextval, '"+btitle+"','"+bwriter+"','"+bdate+"','"+content+"','1')";
		
		stmt.executeUpdate(query);
		
		conn.close();
	} catch(Exception e){
		out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	out.println("<script> location.href='boardList.jsp'; </script>");
%>
<body>

</body>
</html>