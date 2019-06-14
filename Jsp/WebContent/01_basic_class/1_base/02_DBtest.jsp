<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8"%>
<!-- 에러페이지 지정, 아래처럼 매 페이지마다 지정하지 않고, 원래는 tomcat에 한번만 지정. -->
<%@ page errorPage="02_NormalErrorPage.jsp" %>
<%
	// 서블릿으로 변환될때 이미 예외처리가 되기때문에 따로 예외처리 안해도 됨.
	
	// 1. 드라이버 로딩
	String driver = "oracle.jdbc.driver.OracleDriver";
		String url ="jdbc:oracle:thin:@192.168.0.117:1521:orcl";
		String user = "scott";
		String pass = "tiger";
		
		Connection con = null;
		Class.forName(driver);
	// 2. 연결객체 얻어오기
	con = DriverManager.getConnection(url, user ,pass);
	// 3. sql 문장 만들기
	String sql = "SELECT *FROM emp";
	// 4. 전송 객체 얻어오기
	Statement st = con.createStatement(); 
	// 5. 전송
	ResultSet rs = st.executeQuery(sql); 

%>

<!DOCTYPE html>
<html><head><title> 디비 테스트 </title>
</head>
<body>
 
<div align=center>
<table border=2 cellSpacing=3>

  <tr class="title">
    <td>사번</td>
    <td>사원명</td>
    <td>업무</td>
    <td>관리자사번</td>
    <td>입사일</td></tr>

<% while(rs.next()) { %>
	  <tr>
	  	<td><%=rs.getInt("EMPNO") %></td>
		<td><%=rs.getString("ENAME") %></td>
		<td><%=rs.getString("JOB") %></td>
		<td><%=rs.getString("MGR") %></td>
		<td><%=rs.getString("HIREDATE") %></td>
	  </tr>
<%} //end of while %>

</table>
</div>
</body>
</html>
<%st.close();
con.close(); %>

