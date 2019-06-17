<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<title> 우리 페이지 </title>
</head>
<body>

<%
	String user = null;
	//##########
	// 1. 요청을 통해 전송된 쿠키들을 얻어오기
	Cookie[] c = request.getCookies();
	// 2. 내가 지정한 이름의 쿠키를 찾기
	// 3. 해당하는 그 쿠키의 값을 얻어와 user 변수에 저장
	for(int i=0; c!=null && i<c.length;i++){
		
	if((c[i].getName()).equals("yourId")){
	 user = c[i].getValue();
	}
		}
	
	
	
	if(user == null){
		// 쿠키가 없다면, 아이디 페스워드 없는 것이기 때문에 로그인페이지로 다시 변경
		//로그인하기 전에는 메인을 실행해도 항상 로그인 화면이 뜨도록!
		response.sendRedirect("02_LoginForm.jsp");

	}
	
%>

	<h2> 이 페이지는 로그인을 하셔야만 볼 수 있는 페이지 입니다 </h2><br/><br/><br/>
	<%=user %>님, 로그인 중입니다.
		

</body>
</html>