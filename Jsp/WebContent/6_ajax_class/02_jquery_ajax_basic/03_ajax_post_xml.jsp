<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	
	<script  type="text/javascript"  src="libs/jquery-1.9.1.min.js"> </script>
	<script type="text/javascript">
	$(document).ready(function(){
		var param = {cate:'책',name:'홍길동'};
		$.ajax({
			type : 'post',
			data : param, //보낼데이터 형식
			url : '03_server.jsp',
			dataType : 'xml', //받는 데이터 형식
			//성공했을때 parseData함수 호출
			success : parseData 
			});
		
// 		$.post('03_server.jsp',param,parseData,'xml');
// 위에것의 축약형
		
		function parseData(xmlInfo){
			$('#cate').val($(xmlInfo).find('first').text());
			
		}
		
});
	</script>
</head>

<body>
서버로부터 넘겨받은 데이터<br/>
첫번째 데이터 : <input type="text" name="" id="cate"/><br/>
두번째 데이터 : <input type="text" name="" id="name"/><br/>
</body>
</html>


