
$(function(){
	var anchors = $('.tabSet').find('a');
	var panelDivs = $('.tabSet').find('div.panel');
	
		
	anchors.show();
	panelDivs.hide();
	
	var lastAnchor = anchors.filter('.on');
	var lastPanel = $(lastAnchor.attr('href'));
	lastPanel.show();
	//alert(lastAnchor.attr());
	
	
	anchors.click(function(){
		lastPanel.hide();
		
		lastAnchor.removeAttr('class');
		$(this).attr('class','on');
		
//		lastAnchor.removeClass('on');
//		$(this).addClass('on');
		
		lastAnchor = anchors.filter('.on');
		lastPanel = $(lastAnchor.attr('href'));
		lastPanel.show();
		
	});
	
	
	
});