<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mvc.board.model.*" %>

<%
	request.setCharacterEncoding("UTF-8");
%>


 
<%
	// 1. 부모게시물의 게시번호를 넘겨받기
	//String pId=request.getParameter("parentId");
	// 2. Service에 reply() 호출하여 답변글 등록하기
	BoardRec reRec = (BoardRec)request.getAttribute("param");
	
	

%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 답변 글 저장하기 </title>
</head>
<body>

답변글을 등록하였습니다. <br/><br/>

<a href="board?cmd=list-page"> 목록보기 </a> &nbsp;
<a href="board?cmd=view-page&article_id=<%=reRec.getArticleId()%>"> 게시글 읽기 </a>

</body>
</html>