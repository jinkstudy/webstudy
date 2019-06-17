<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>		
<html>
<head><title>쿠키</title></head>
<body>

<b>Simple Cookie Example</b><hr>

<%	
	// 1. Cookie 객체 생성
	Cookie c = new Cookie("yourId","xxxxx11");
	// 2. 속성 부여
	c.setMaxAge(1*60*60);  // 	한시간동안 유효하도록 하겠습니다. 지정하지않아도 됨

	// 3. 클라이언트에 쿠키 전송
	response.addCookie(c);
%>



<br><a href="01_GetCookie.jsp"> 쿠키검색 </a>

</body></html>