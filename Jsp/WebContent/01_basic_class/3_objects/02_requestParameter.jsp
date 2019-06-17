<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	//1. 한글처리
	request.setCharacterEncoding("utf-8");
	//2. 폼의 입력값을 얻어오기
	String name = request.getParameter("name");
	String addr = request.getParameter("address");
	String[] pet = request.getParameterValues("pet");

	String result_pet = "";
	if(pet != null){
		
		for(int i=0;i<pet.length;i++){
			if(i == pet.length-1){
				result_pet+=(pet[i]);
			}else{
				result_pet+=(pet[i]+"/");
			}
			
		}
		
	}else{
		result_pet = "선택사항없음";
	}
%>
<!DOCTYPE html>
<html>
<head><title>요청 파라미터 출력</title></head>
<body>
<h5> 이전화면에서 사용자의 입력값을 출력 </h5>
	<%-- 3. 얻어온 입력값을 출력 --%>
이름 : <%= name %> <br>
주소 : <%= addr %> <br>
좋아하는 동물 : <%= result_pet %> <br>



</body>
</html>
