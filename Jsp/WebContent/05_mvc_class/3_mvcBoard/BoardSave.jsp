<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mvc.board.model.*" %>  
<%@ page import="java.util.List" %>
<%@ page import="java.util.*,java.text.*" %>

<%
	// 0. 넘겨받는 한글 깨지지 않도록 지정
	request.setCharacterEncoding("utf-8");
%>

<%
	
	
	//BoardRec result = service.write(rec);
	BoardRec result = (BoardRec)request.getAttribute("param");
	
	//3. 화면을 리다이렉트로 바꾸기
	System.out.println("board?cmd=view-page&article_id="+ result.getArticleId());
	response.sendRedirect("board?cmd=view-page&article_id="+ result.getArticleId());

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판글저장</title>
</head>
<body>
입력되었는지 확인해보시구염...<br/>

만일 안되어도..환장하지 맙시다 !!! ^^<br/><br/>
</body>
</html>