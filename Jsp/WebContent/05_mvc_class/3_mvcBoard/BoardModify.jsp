<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mvc.board.model.*" %>

<%
	// 0. 넘겨받는 데이타의 한글 처리
	request.setCharacterEncoding("utf-8");
%>



<%
int result =(Integer)request.getAttribute("result");
BoardRec rec = (BoardRec)request.getAttribute("param");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판글수정</title>
</head>
<body>

<%  // 게시글 수정이 성공적으로 되었다면 그 해당 게시글을 보여주는 페이지로 이동하고
if(result>0){
	response.sendRedirect("board?cmd=view-page&article_id="+rec.getArticleId());
%>
	
<%}else{  // 그렇지 않다면, "암호가 잘못 입력되었습니다"를 출력%>

	 
	 암호가 잘못 입력되었습니다.<br/>
<%} %>

</body>
</html>