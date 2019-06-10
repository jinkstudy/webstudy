window.onload = function(){

//		var frm = document.getElementById('frm');
//		var inputs = document.querySelectorAll("input");
		
	var frm = document.querySelector('#frm');
	var inputs = document.querySelectorAll("input");
		
//	frm.onsubmit = function(e){
		frm.onclick = function(e){
//			e.preventDefault();
//			e.stopPropagation();
			var agree = frm.agree;
			//alert(agree.checked);
			if(!agree.checked){
				alert('반드시 확인하셔야 합니다.')
				return;
			}
		var nick= ['babo','geni','idiot','gdb'];
		
				if(!nick.includes(frm.nickname.value)){
					alert('다시!!!')
					return;
				}
		
			
			
			
			
			frm.submit();
		}


	}