<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import='member.beans.Member' %>
 <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1. 자바객체<br/>
<% 
	Member m = new Member();
	m.setName("홍길자");
	m.setAddr("대한민국");
	
%>
이름:<%= m.getName() %>/ 주소 : <%= m.getAddr() %><br/>
이름: ${m.name} / 주소 :${m.addr}<br/><hr/> <!-- 안됨 -->

2.c:set 변수 지정<br/>
<c:set var='m2' value = '<%=m %>'/>
이름: ${m2.name} / 주소 :${m2.addr}<br/><hr/>
</body>
</html>