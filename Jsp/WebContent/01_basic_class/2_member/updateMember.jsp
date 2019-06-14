<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>



<%
//form 사용자 입력 값 가져오기.
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name"); //대소문자 지켜줘야함.
String email = request.getParameter("email");
String website = request.getParameter("website");
String password = request.getParameter("password");

// 1.drive 설정
String driver = "oracle.jdbc.driver.OracleDriver";
String url ="jdbc:oracle:thin:@192.168.0.91:1521:orcl";
String user = "hr";
String pass = "hr";

Connection con = null;

Class.forName(driver);
// 2. 연결객체 얻어오기
con = DriverManager.getConnection(url, user ,pass);
// 3. sql 문장 만들기
String sql = "update memberjoin set member_name =?, member_mail =?, member_url =?, member_pw =? where member_mail =? ";
// 4. 전송 객체 얻어오기
PreparedStatement st = con.prepareStatement(sql); // 완성되지않은 SQL문
			
			st.setString(1, name);
			st.setString(2,email);
			st.setString(3,website);
			st.setString(4, password);
			st.setString(5,email);
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
<%= "수정성공" %>
</body>
</html>