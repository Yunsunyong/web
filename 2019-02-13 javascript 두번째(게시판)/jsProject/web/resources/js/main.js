/**main.js
2019-02-12 작성
자바스크립트 테스트용
*/ 

function testShow(){
	window.alert("main.js 안에 있는 testShow() 실행됨.");
}

function changeImage() {
	document.getElementById("image1").src = 
		"../../resources/images/qr.jpg";
}
function rain() {
	var hometown = prompt("고향이 어디십니까?");
	alert("오늘 밤 " +hometown+ "에 비가 올겁니다.");
}