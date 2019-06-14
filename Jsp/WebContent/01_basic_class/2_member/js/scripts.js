/**
 * 
 */

$(function(){
	$('#signup form').validate({
		rules : {
			name : {
				required:true
			},
			email : {
				required :true,
				email : true
			},
			website : {
				url : true
			},
			password : {
				required : true,
				minlength:6
			},
			passconf : {
				equalTo:'#password'
			}
		},
		success :function(label){
			label.addClass('valid');
			label.text('성공');
		}
		
	});
//	$('.check-all').change(function(){
//		if($('.check-all').is(":checked")){
//			$('.agree').prop('checked',true);
//		}else{
//			$('.agree').prop('checked',false);
//		} 
//		
//	});
	//$('.agree').attr('checked','checked');
	
	$('.check-all').change(function(){
		if($('.check-all').is(":checked")){
			$('.agree').attr('checked','checked');
		}else{
			$('.agree').removeAttr('checked');
		} 
		
	});
	
});
