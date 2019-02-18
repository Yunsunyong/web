<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login success or fail</title>
</head>
<%
	String id = request.getParameter("userId");
	String pwd = request.getParameter("pwd");
	ResultSet rest = null;
	
	String query = "select * from login_sf where id = '" + id + "' and pwd = '" + pwd+"'";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","login","login");
		Statement stmt = conn.createStatement();
		rest = stmt.executeQuery(query);
		
		if(rest.next()){
			out.println("<script> open('/','testWindow','width=300, height=300','_blank'); </script>");
			out.println("<script> location.href='/login/index.jsp'; </script>");
		}else{
			out.println("<script> alert('로그인실패!'); </script>");
			out.println("<script> location.href='login.jsp'; </script>");
		}
		conn.close();
		stmt.close();
%>
<body>

</body>
<%
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</html>