


$(function(){
	//이벤트
	if($.cookie('check') != 'check'){
		window.open("9_promotion.html","","width=400, height=360");	
	}
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
		var tab = $('#tabmenu dt a').find('img');
		//var list =$('#tabmenu dd ul').find('li') ;
		var list =$('#tabmenu').find('dd')
		list.hide();
		
		var lasttab = $('.tab_btn1').find('img');
		var alt = lasttab.attr('alt');
		//alert(alt);
		var lastlist = $('dd:contains("'+alt+'")');
		lastlist.show();
		//alert(lasttab.attr('src'));
		//탭 클릭 시 ,
		tab.click(function(){
			//클릭 된 탭의 alt 값을 읽어온다.
			
			list.hide();
			
			lasttab.attr('src',(lasttab.attr('src')).replace('over','out'));
			$(this).attr('src',($(this).attr('src')).replace('out','over'));
			
			lasttab = $(this);
			alt = $(this).attr('alt');
			//alert(alt);
			
		    lastlist = $('#tabmenu dd:contains("'+alt+'")');
			console.log(lastlist);
		    lastlist.css('display','block');

	});
		
	// 슬라이드쇼
		$(function(){
			$('#best_bg ul').bxSlider({
				minSlides : 6,
				maxSlides : 8,
				slideMargin : 80,
				slideWidth : 250,
				auto :true,
				speed :100,
				moveSlides:2
			});
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