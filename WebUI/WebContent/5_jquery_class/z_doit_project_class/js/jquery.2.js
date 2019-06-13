


$(function(){
	// 날짜 표시.
	var today = new Date();
	
	$('#date_wrap .year' ).text(today.getFullYear());
	$('#date_wrap .month' ).text(today.getMonth()+1);
	$('#date_wrap .date' ).text(today.getDate());
	
	// 검색창 커서 입력 시 그림 숨기기

	
	$('#keyword').focus(function(){
		//alert("체크");
		
			$('#keyword').css('background', 'white');
	
	});
	$('#keyword').blur(function(){
		
		$('#keyword').css('background', 'url("../../images/sch_guide.gif")');
	});
	
	// 탭메뉴
		var tab = $('#tabmenu dt').find('a');
		var list =$('#tabmenu dd ul').find('li') ;
		
		list.hide();
		
		var lasttab = $('.tab_btn1');
		var alt = lasttab.find('img').attr('alt');
		
		
		//탭 클릭 시 ,
		tab.click(function(){
			//클릭 된 탭의 alt 값을 읽어온다.
			//alert(alt);
			
			alt = lasttab.find('img').attr('alt');
			var lastlist = $('li:contains("'+alt+'")');
			//var lastlist = $('"'+text+':contains("'+alt+'")').parent();
			alert('li:contains("'+alt+'")');
			lastlist.show();
			
		 
//		
//		 alert(text);
		// alert('text:contains("'+alt+'")');
	
	});
		

	
	
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