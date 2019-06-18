<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" >
$(function(){
	
	$('input[name="join"]').click(function(){
		alert("회원가입");
		<% response.sendRedirect("../02_beans_class/3_member/MemberForm.jsp"); %>
		
	});
	
});
</script>
</head>
<body>
	
<form action="LoginService.jsp" method="get">
사용자: <input name='User' type='text'><br/>
비밀번호: <input name='Pass' type='password'><br/>
<input type='submit' name='login' value='로그인'> 
<input type='button' name='join' value='회원가입'><br/>
<input type='button' name='find' value='아이디/비밀번호 찾기'> 


</form>
</body>
</html>