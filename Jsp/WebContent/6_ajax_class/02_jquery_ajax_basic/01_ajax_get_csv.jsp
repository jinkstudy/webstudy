<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script  type="text/javascript"  src="libs/jquery-1.9.1.min.js"> </script>
<script type="text/javascript">
$(function(){
	//var data = "cate=book&name=hong";
	var data = {'cate':'book','name':'홍'}; //json 객체.
	$.get("01_server.jsp",data, parseData); //$.get(get방식)('어느파일로',무엇을,어떻게(함수)data가 parseDate함수의 인자로.);
	
});

function parseData(strText){
	//alert(strText);
	var ary = strText.split('|'); // ary[0] :cate=서버에서book변경 // ary[1]:  name=변경된hong
	for(var i=0; i<ary.length; i++){
		var param = ary[i].split('=');
				
		if(param[0].trim() == 'cate'){
			$('#cate').val(param[1]);
		}
		if(param[0].trim() == 'name'){
			$('#name').val(param[1]);
			
		}
	}
	
}
</script>
</head>


<body>
서버로부터 넘겨받은 데이터<br/>
첫번째 데이터 : <input type="text" name="" id="cate"/><br/>
두번째 데이터 : <input type="text" name="" id="name"/><br/>
</body>
</html>


