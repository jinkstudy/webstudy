<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>
<!-- 변수 선언 -->
<c:set var='gender' value='male'/>

<!-- 조건문 -->
<c:if test="${gender eq 'male' }">당신은 남자입니다.</c:if> <%-- ${gender == 'male' } ==대신 eq --%>
<c:if test="${gender eq 'female' }">당신은 여자입니다.</c:if>

<!-- age 변수 선언( 값은 아무거나 지정) -->
<c:set var='age' value='22'></c:set>
<!--switch case문 처럼 -->
<c:choose>
	<c:when test="${age le 10 }">어린이입니다</c:when> <%-- 10세 이하 --%>
	<c:when test="${(age gt 10) && (age lt 20)}">청소년입니다.</c:when> <%-- 10세 초과부터 20살 미만 --%>
	<c:otherwise>성인입니다.</c:otherwise> 
</c:choose>

<c:set var='sum' value='0'/>
<c:forEach var='i' begin='1' end='100'>
	<c:set var='sum' value='${sum+i}'/>
</c:forEach>
<hr/>
1~100까지의 합 : ${sum} <br/>


<!-- 1~100까지의 홀수의 합과 짝수의 합을 출력 -->
<c:forEach var='i' begin='1' end='100'>

	<c:if test="${i % 2 eq 0}">
	<c:set var='sum_even' value='${sum_even+i}'/>
	</c:if>
	<c:if test="${i % 2 ne 0}">
	<c:set var='sum_odd' value='${sum_odd+i}'/>
	</c:if>
</c:forEach>
<hr/>
1~100까지의 짝수 합 : ${sum_even} <br/>
1~100까지의 홀수 합 : ${sum_odd} <br/>
</body>
</html>
