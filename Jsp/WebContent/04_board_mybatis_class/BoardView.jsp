<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mvc.board.model.*" %>  
<%@ page import="java.util.List" %>
<%
	// 1. 해당 게시물의 게시글번호값을 얻어온다
	String id = request.getParameter("article_id");

	//2.Commandview에 set된 Attribute를 get해온다.	
	BoardRec rec = (BoardRec)request.getAttribute("param");
	
%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 게시글 보기 </title>
</head>
<body>

	<h4> 게시판 글 보기 </h4><br/>
	<table border="1" bordercolor="red">
	<tr>
		<td> 제  목 : </td>
		<td><%=rec.getTitle() %></td>
	</tr>
	<tr>
		<td> 작성자 : </td>
		<td><%=rec.getWriterName() %></td>
	</tr>
	<tr>
		<td> 작성일자 : </td>
		<td><%=rec.getPostingDate() %></td>
	</tr>
	<tr>
		<td> 내  용 : </td>
		<td><%=rec.getContent() %></td>
	</tr>
		<tr>
		<td> 조회수: </td>
		<td><%=rec.getReadCount() %></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href ="board?cmd=list-page">목록보기</a>
			<a href ="board?cmd=reply-page&parent_id=<%=rec.getArticleId()%>">답변하기</a>
			<a href ="board?cmd=modify-page&article_id=<%=rec.getArticleId()%>">수정하기</a>
			<a href ="board?cmd=delete-page&id=<%=rec.getArticleId()%>">삭제하기</a>
		</td>
	</tr>
	</table>


</body>
</html>