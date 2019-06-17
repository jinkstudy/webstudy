<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>

<%@ page import= "info.beans.InfoBean" %>

<jsp:useBean id="bean" class="info.beans.InfoBean">
	<jsp:setProperty name='bean' property='*'/>

</jsp:useBean>
<% /*
	InfoBean bean = new InfoBean();
	String name = request.getParameter("name");
	bean.setName("name");
	String id = request.getParameter("id");
	bean.setName("id");
*/%>




<!DOCTYPE html>
<html>
<body>
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <jsp:getProperty name='bean' property='name'/> <br/>
	주민번호 : <jsp:getProperty name='bean' property='id'/> <br/><br/>
	성  별   : <jsp:getProperty name='bean' property='gender'/> <br/><br/>  
	
<%-- 		이   름  : <%= bean.getName() %> <br/> --%>
<%-- 	주민번호 :<%= bean.getId() %> <br/><br/> --%>
<%-- 	성  별   : <%= bean.getGender() %> <br/><br/>  --%>
	맞습니까????
</body>
</html>