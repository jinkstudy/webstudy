<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입  </title>

<style type = "text/css">
table {
border-collapse:collapse;
	font-size:12px;
	margin:0 20px 20px 20px;
	border-top:2px solid #015287;
	width:480px;
}
button {
  margin-top: 10px;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function openWin(){
		var id = document.frm.id.value;
		window.open("CheckId.jsp?userId="+id,"","width=200, height=150");
		//window.open("","width=200, height=150");
	}
	
	function check(){
		 var passCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); 
		
		 //아이디, 비밀번호 유효성 검사.
		 if(!passCheck.test($('input["name=password"]').val())){
			 alert("형식에 맞지 않습니다.");
		 }
	}
	
</script>
</head>
<body>

<h1>회원가입서 작성하기</h1>
 
	<form action="InsertMember.jsp" method="post" name="frm">
		<table>
			<tr>
				<td width="100">
				<font color="blue">아이디</font>
				</td>
				<td width="100">
				<input type="text" name="id">
				<input type="button" value="중복확인" onclick="openWin()"><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호</font>
				</td>
				<td width="100">
				<input type="password" name="password"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호확인</font>
				</td>
				<td width="100">
				<input type="password" name="repassword"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">이름</font>
				</td>
				<td width="100">
				<input type="text" name="name"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">전화번호</font>
				</td>
				<td>
				<input type="text" size="15" name="tel"/>
				<br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">주소</font>
				</td>
				<td>
				<input type="text" size="50" name="addr"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				 <!--로그인 버튼-->
				 <input type="submit" value="회원가입" >
				</td>
				<td width="100">
				<input type="reset" name="cancel" value="취소"><br/>
				</td>
			</tr>
		</table>
	</form>



 </body>
</html>
    