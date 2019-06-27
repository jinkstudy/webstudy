<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 데이타 받는 페이지 </title>
</head>
<body>

<!-- String data = request.getParameter("data"); -->
전 페이지의 값 :${param.data}  <br/> 

<!--session.getAttribute("") -->
세션의 값 : ${sessionScope.login} <br/>
<!--Cookie[] c = request.getCookies() -->
쿠키의 값 :	 ${cookie.isFlag.value} <br/>
<%-- ${cookie.isFlag} 만 하면 주소가 나옴. --%>

<hr>


</body>
</html>