/**
 * 
 */


$(function(){
	//(1) 테이블의 홀수행 배경색 + 글자색을 변경
	
	//Css로 지정해주면 고정됨. 즉, css 파일에 있는 클래스를 불러와서 적용해도 안먹힘.
//	$('#celebs tbody tr:even').css(
//			{'background':'pink','color':'white'});
	// 똑같이 css파일의 클래스 불러와서 적용하면, 나중에 적용한 것도 변경된다.
	$('#celebs tbody tr:even').addClass('table_striping');
	//(2) 테이블에 마우스 올라가면 색 변경(css 파일에 있는 td_mouseover 클래스 지정)
	
	
	
	$('#celebs tr').mouseover(function(){
		$(this).addClass('td_mouseover');
		
	}).mouseout(function(){
		$(this).removeClass('td_mouseover');
	});
	
	
	//(3)감추기/보이기 누를시에 감췄다가 보여지는 이벤트 적용.
	
	$('#hideButton').click(function(){
		$('#intro').fadeOut();
		//$('#intro').css('display','none');
	});
	
	$('#showButton').click(function(){
		$('#intro').fadeIn();
	});
	
	$('#toggleButton').click(function(){
		//$('#intro').toggle(); //hide()+ show()
		//$('#intro> img').slideToggle(); //slideUp()+ slideDown()
		//$('#intro> img').fadeToggle();//fadeIn()+ fadeOut()
		
		var img = $('#intro > img');
		if( img.is(':visible')){
			img.fadeOut(1000);
		}else{
			img.fadeIn(1000);
		}
	});

});

