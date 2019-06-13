/**
 * 
 */

$(function(){
	$('a[rel="prettyPopin"]:eq(0)').prettyPopin({
		width : 550
	});
	
	$('a[rel="prettyPopin"]:eq(1)').prettyPopin({
		width : 600,
		callback: function(){ //팝업이 닫힐때.
			alert('팝업이 닫혔습니다.')
		}
	});
	
	
});