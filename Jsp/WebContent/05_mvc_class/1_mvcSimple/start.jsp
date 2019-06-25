<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String projectName = "/Jsp"; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 패턴 이해하기</title>

</head>
<body>

기존 모델1 방식으로 연결
<a href="<%=projectName%>/05_mvc_class/1_mvcSimple/simpleView.jsp">기존방식</a> <br/>
<hr/>
MVC 방식으로 연결
<a href = "<%=projectName%>/xxxx.bjk">MVC 요청</a> <br/>
<a href = "<%=projectName%>/simple?type=first">MVC 요청2</a> <br/>
<a href = "<%=projectName%>/SimpleControl">MVC 요청3</a> <br/>

</body>
</html>