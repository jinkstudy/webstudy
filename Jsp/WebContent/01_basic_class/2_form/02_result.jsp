<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name"); //대소문자 지켜줘야함.
	String gender = request.getParameter("gender");
	String occupation = request.getParameter("occupation");
	String[] hobby = request.getParameterValues("hobby");
	//String msg = "해당사항 없음";
	
	String hobbystr ="";
	if(hobby !=null){

		for(int i =0; i<hobby.length; i++){
			hobbystr += hobby[i];
		}
	}
	
	
	
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_result.jsp</title>
</head>
<body>
<h4>입력한 값을 확인하세요</h4>

이름:<%=name %><br/>
성별:<%=gender %><br/>
직업:<%=occupation %><br/>

취미:
<%-- <% if(hobby.length != 0){%>  --%>
<%--  <% for(int i=0; i<hobby.length;i++){%> --%>
<%-- <%= hobby[i] %> --%>
<%-- <%}} %>  --%>
<%-- <%-- <% }else if(hobby.length == 0){ %> --%> --%>
<%-- <%-- <%= msg %> --%> --%>
<%-- <%-- <%} %>  --%> --%>

<!-- 선생님 코딩 -->
<%=hobbystr %>

 

</body>
</html>