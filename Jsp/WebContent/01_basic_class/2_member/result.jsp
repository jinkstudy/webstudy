<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>



<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name"); //대소문자 지켜줘야함.
String email = request.getParameter("email");
String website = request.getParameter("website");
String password = request.getParameter("password");
String passwordf = request.getParameter("passwordf");


String driver = "oracle.jdbc.driver.OracleDriver";
String url ="jdbc:oracle:thin:@192.168.0.91:1521:orcl";
String user = "hr";
String pass = "hr";

Connection con = null;
Class.forName(driver);
// 2. 연결객체 얻어오기
con = DriverManager.getConnection(url, user ,pass);
// 3. sql 문장 만들기
String sql = "insert INTO memberjoin (member_name, member_mail, member_url, member_pw) values (?,?,?,?)";
// 4. 전송 객체 얻어오기
PreparedStatement st = con.prepareStatement(sql); // 완성되지않은 SQL문
			
			st.setString(1, name);
			st.setString(2,email);
			st.setString(3,website);
			st.setString(4, password);
			
// 5. 전송
int result = st.executeUpdate(); 

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= "회원가입 완료" %>
</body>
</html>
