<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> 고객관리 프로그램 </title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" >
// $(function(){
	
	var insertCustomer = function(){
		$.ajax({
			type :'get' ,
			url: 'DataInput.jsp',
			data :{
				name : $('#name').val(),
				age : $('#age').val(),
				tel : $('#tel').val(),
				addr : $('#addr').val()
			},
			dataType: 'text',
			success: function(){
				alert("입력성공"),
				$('#name').val(null);
				 $('#age').val(null);
				 $('#tel').val(null);
				 $('#addr').val(null);
				
			},
			error : function(){
				alert("입력실패");
			}
			
		});
	};
	
	var getData = function(){
		
		$.ajax({
			
			type : 'get',
			url: 'DataSelect.jsp',
			dataType:'xml',
			success : function(data){
			var col = $(data).find('person');
			//alert($(col[0]).text());
			// for문 이용
// 			for (var i = 0; i < col.length; i++) {
// 				var tr =$('<tr/>'); 
// 				var td1 =$('<td/>').text($(col[i]).find('name').text());
// 				var td2 =$('<td/>').text($(col[i]).find('age').text());
// 				var td3 =$('<td/>').text($(col[i]).find('tel').text());
// 				var td4 =$('<td/>').text($(col[i]).find('addr').text());

// 				tr.append(td1);
// 				tr.append(td2);
// 				tr.append(td3);
// 				tr.append(td4);
// 				$('#listTable').append(tr);
// 			}
			
			// each 이용 
			col.each(function(){
				var tr =$('<tr/>'); 
				var td1 =$('<td/>').text($(this).find('name').text());
				var td2 =$('<td/>').text($(this).find('age').text());
				var td3 =$('<td/>').text($(this).find('tel').text());
				var td4 =$('<td/>').text($(this).find('addr').text());

				tr.append(td1);
				tr.append(td2);
				tr.append(td3);
				tr.append(td4);
				$('#listTable').append(tr);
			})
				
			
			},
			error: function(){
				alert("에러");
			}
			
		});
	};
	
	
// });

</script>

</head>


<!-- <body> -->
<body>

<h2> 고객정보 입력 </h2>

<form name="inForm" method="post">
<table border = 1>
	<tr>
		<td width="80" align="center">Name</td>
		<td width="50" align="center">Age</td>
		<td width="100" align="center">Tel</td>	
		<td width="250" align="center">Addr</td>
	</tr>
	<tr>
		<td align="center"><input type="text" size="8" name="name" id="name"></td>
		<td align="center"><input type="text" size="4" name="age" id="age"></td>
		<td align="center"><input type="text" size="12" name="tel" id="tel"></td>
		<td align="center"><input type="text" size="30" name="addr" id="addr"></td>
	</tr>
	<tr>
		<td colspan="4" align="center"> 
			<input type="button" value="입력" onclick="insertCustomer()">
		</td>
	</tr>
</table>

<br>
<hr>

<h2> 고객정보 목록보기  </h2>
<table border='0' width="510"> 
	<tr>
		<td align="right"><input type="button" value="가져오기" onclick="getData()"></td>
	</tr>
</table>
<table border = 1 id="listTable">
	<tr>
		<td width="80" align="center">Name</td>
		<td width="50" align="center">Age</td>
		<td width="100" align="center">Tel</td>	
		<td width="250" align="center">Addr</td>
	</tr>
</table>
<div id="myDiv"> </div>

</form>
</body>
</html>