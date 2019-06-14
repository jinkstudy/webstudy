<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--     전역변수로 됨 . 잘 안씀-->
  <%!
  	String msg = "짝꿍 점심은?";
   %>
   <!--     지역변수로 됨 -->
   <%
   	String name = "홍길동";
   %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 두번째</title>
</head>
<body>
<% if(name.equals("홍길동")){ %>
	이름 : <%=name %>
	
	<%} else {%>
	
	할 일 : <%= msg %><hr/>
	<%} %>
	
	
</body>
</html>