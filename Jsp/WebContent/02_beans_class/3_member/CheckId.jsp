<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="member.beans.MemberDao" %>   
 <%
 	String id = request.getParameter("userId");
 	//MemberDao.getInstance().isDuplicatedId(id);
 	
//  	MemberDao dao = MemberDao.getInstance();
//  	dao.isDuplicatedId(id);

	boolean result =MemberDao.getInstance().isDuplicatedId(id);
	
 %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 아이디 중복 확인 </title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript" >
  $(function(){
	  
	  
	 
	  $('#useId').click(function(){
		  //
		  var a = $('input[name="userId"]').val();
		  opener.$('input[name="id"]').val(a);
		   //opener.$('input[name="id"]').val($('input[name="userId"]').val());
		  //opener.frm.id.value = document.frm.userId.value;
		  window.close();
	  });
	  
	  
	  
  });
  
  
  
  </script>


</head>
<body>
<%
	if(result) {
%>
		사용중인 아이디가 있습니다. 다시 입력하여 주십시오.
<%  }else { %>
		사용할 수 있는 아이디입니다.
<%  } %>
<hr/>
<!-- 액션을 안걸면 기본적으로 submit 액션 자기자신 -->
<form name='frm'>
<input type = 'text' name = 'userId' value='<%= id %>'>
<input type = 'submit' id='submit' value = '중복확인'/>
<input type = 'button' id='useId' value = '아이디사용'/>

</form>
</body>
</html>