


$(function(){
	// 날짜 표시.
	
	$('#date_wrap .year' ).text('2019');
	
	
	//로그인 버튼 클릭 시
	$('#util_menu .login_wrap img').click(function(){
		//alert("체크"); //이벤트 확인.
		
		//로그인 폼 위치 top 20px로 조정.
		$('#login_f').animate({
			top: "20"
		})	
	});
	
	//로그인폼의 닫기 버튼 클릭 시.
	$('.login_close_btn').click(function(){
		$('#login_f').animate({
			top: "-500"
		})	
	});
	
	//전체메뉴 버튼 클릭 시.
	$('#total_btn').click(function(){
		$('#total_menu').css("display","block");
		});	
	
	//전체 메뉴의 닫기 버튼 클릭 시
	$('#total_close').click(function(){
		$('#total_menu').css("display","none");
		});

});