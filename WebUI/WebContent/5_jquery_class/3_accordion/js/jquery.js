/**
 * 
 */

$(document).ready(function(){
	
	$('.accordion').each(function(){
		var allDt = $(this).find('dt');
		var allDd = $(this).find('dd');
		
		allDd.hide();
		allDt.css('cursor','pointer');
		
		allDt.click(function(){
			//alert('ok');
			//$(this).closest('dd').show(); //왜안되징?
			//allDd.hide();
			$(this).next().toggle();
		})
	});
	
});