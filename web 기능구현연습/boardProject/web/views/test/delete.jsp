<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제</title>
</head>
<%
	String bid = request.getParameter("bid");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","board","board");
	out.println("Oracle 데이터베이스에 성공!!");
	ResultSet rest = null;
	Statement stmt = conn.createStatement();
	String query = "delete from boardlist where bid = " + bid;
	
	stmt.executeUpdate(query);

	conn.close();
%>
<body>
	<script>
		alert("삭제되었습니다.");
		location.href="redirect.jsp";
	</script>

<%
}catch(Exception e){
	// out.println("Oracle Database Connection Problem <hr>");
%>
		<script>
		alert("삭제가 안되었어요.");
		location.href("redirect.jsp");
		</script>
<%
out.println(e.getMessage());
e.printStackTrace();
}
%>
</body>
</html>