<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//# 1."id"로 저장된 세션값을 얻어온다.
	//# 2. 값이 null이라면 LoginForm.jsp로 페이지 이동
	//# 3. null이 아니라면 String 형변환하여 변수에 지정
	Object obj = session.getAttribute("id"); 
	
	// 얻어온 obj값이 없다면, 계속 로그인화면이 나오도록. 
	if(obj == null){
		response.sendRedirect("LoginForm.jsp");
		return; // 밑에 코드 더이상 수행 안하도록.
	}

	String user = (String)obj;
	//바로 형변환 하지 않는 이유 ==> nullpoint에러 방지. id가 없다면 null. null 형변환 에러.
			
			
	
	
%>
    
<!DOCTYPE html>
<html>
<head>
<title> 우리 페이지 </title>
</head>
<body>
	<h2> 이 페이지는 로그인을 하셔야만 볼 수 있는 페이지 입니다 </h2><br/><br/><br/>
	<%= user %>님, 로그인 중입니다.
		

</body>
</html>