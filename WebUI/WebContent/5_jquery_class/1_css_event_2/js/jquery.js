/**
 * 
 */

$(function(){
	$('.rollover').each(function(){
		var a = $(this);
		var img = a.find('img');
		
		// img에 속성 중에서 src 값 변경( attr() 이용 )
		// replace('a','b') 이용
		var b = img.attr('src'); //img의 src 속성을 가지고 와라.
		//alert(b); //imgs/menu01_off.png
		var c=b.replace("off","on"); // b의 off글씨를 on으로 변경해라.
		//alert(c); //imgs/menu01_on.png
		
		a.hover(function(){
		//img.attr('src','imgs/menu01_on.png');
			
			img.attr('src',c);
		},function(){
			img.attr('src',b);
		});
	});
});