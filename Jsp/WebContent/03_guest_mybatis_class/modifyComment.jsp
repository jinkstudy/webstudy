<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
    1. import
    2. 이전화면에서 넘어오는 cId값을 얻어오기
    3. Service에 함수로 호출
    
-->

<%@ page import="mybatis.guest.model.Comment" %> 
<%@ page import="mybatis.guest.service.CommentService" %> 
<% 
 	request.setCharacterEncoding("utf-8");
 %>
   <jsp:useBean id="comment" class="mybatis.guest.model.Comment">
 	<jsp:setProperty name="comment" property="*"/>
 </jsp:useBean> 
  
 <%
	//long cId = Long.parseLong(request.getParameter("cId"));

	//System.out.println(cId); 
  int result =  CommentService.getInstance().modifyComment(comment); 
     System.out.println(result);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(result >0){%>
	수정완료되었습니다.
	
<%}else{  //end of if%>
수정실패
<%}%>
</body>
</html>