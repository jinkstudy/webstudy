<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String projectName = "/Jsp"; %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href='<%= projectName %>/board?cmd=list-page&page=1'>목록보기</a>
<hr/>
<a href='<%= projectName %>/board?cmd=input-page'>게시글 쓰기</a>
<hr/>
<a href='<%= projectName %>/board?cmd=view-page&article_id=12'>2번글 내용보기</a>
</body>
</html>