<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "member.beans.*" %>   
<!DOCTYPE html>
<html>
<head>
<title> 로그인확인 </title>
</head>
<body>
<%

	
	
	// 이전화면 폼에서 넘겨받는 값
	String user = request.getParameter("User");
	String pass = request.getParameter("Pass");
	
	
	//String saveUser = "bae";
	String savePass="";
	// 실제로는 DB에서 가져와야하는 값
	boolean check= MemberDao.getInstance().isDuplicatedId(user);
	
	if(check){
		
		savePass = MemberDao.getInstance().getMember(user);
		
		//System.out.println(savePass);
		//System.out.println(pass.equals(savePass));
		if( pass.equals(savePass) ){
			   session.setAttribute("id", user);
				System.out.println("수행");	
				response.sendRedirect("MainPage.jsp");
		} else {

			// #1. 로그인에 실패하면 바로 LoginForm.jsp을 요청
				//response.sendRedirect("LoginForm.jsp");
			response.sendRedirect("LoginForm.jsp");

		}			
	}else{%>
	<script>
		alert("회원이 아닙니다. ID를 확인하거나 회원가입하세요.");
	
	</script>
		
		
	<% 	response.sendRedirect("LoginForm.jsp"); }
// 	 response.sendRedirect("../3_member/MemberForm.jsp");
	// user, password가 같을 때 로그인 성공, 그렇지 않으면 로그인 실패
	
%>
	
</body>
</html>