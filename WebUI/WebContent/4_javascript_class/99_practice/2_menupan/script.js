/**
 * 
 */

window.onload = function (){
//
//	var price = [1000,2000,3000,2000,1000,1500];
//	var content = ['아메리카노','카페라떼','쥬스','과자','엿','땅콩'];

	//#### 1. TD에 이벤트 발생
		
var td = document.getElementsByClassName('menu') ;
//alert(td.length);
var total = document.getElementById('total') ;
var content = document.getElementById('content') ;

var ordered_food=[];
var ordered_cnt=[];
var ordered_price=[];

for (var i = 0; i < td.length; i++) {
	td[i].onchange = function(){
		
		ordered_food.push(this.childNodes[0].nodeValue);
		ordered_price.push(this.childNodes[2].nodeValue);
		ordered_cnt.push(this.childNodes[5].value)
		
		//alert(ordered_food+ordered_price+ordered_cnt);
	
	}
	

	
}
var btn = document.getElementById('btn') ;
var sum = 0;
var result = "";
btn.onclick = function(){

for (var i = 0; i < ordered_price.length; i++) {
	sum= sum+(parseInt(ordered_price[i])*ordered_cnt[i]);
    result = result + ordered_food[i]+"/" + ordered_cnt[i]+ "/" +(parseInt(ordered_price[i])*ordered_cnt[i])+'<br/>' ;
}

total.value = sum;


content.innerHTML = result



} 
	
}
	//#####  2. 확인 버튼 클릭시 선택한 TD의 색을 다시 흰색으로
	//#####  3. 값 계산하여 총합 구하기 - 각각 TD 클릭시 배열에 저장하였다가 계산

