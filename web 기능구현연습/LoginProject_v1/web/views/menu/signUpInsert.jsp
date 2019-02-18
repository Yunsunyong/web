<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보등록</title>
</head>
<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String date = request.getParameter("date");
	String[] genders = request.getParameterValues("gender");
	String gender = "";
	if(genders[0] == 'M'){
		gender = 'M';
	}else{
		gender = 'F';
	}
	String email = request.getParameter("email");
	String adress = request.getParameter("adress");
	String phone = request.getParameter("phone");
	
	String query = "insert into sign_up values('"
			+userid+"'
			+)"
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin@localhost:1521:XE","login","login");
		Statement stmt = conn.createStatement();
		rest = 
		 
		
	}catch(){
		
	}
%>
<body>

</body>
</html>