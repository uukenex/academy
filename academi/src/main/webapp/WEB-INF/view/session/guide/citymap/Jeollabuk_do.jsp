<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.list0 {
	clear: both;
	position: relative;
	z-index: 1;
	top: -35px;
	left: -5px;
}

.list1 {
	clear: both;
	position: absolute;
	z-index: 1;
	top: 260px;
	left: 110px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 210px;
	left: 250px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 222px;
	left: 325px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 275px;
	left: 425px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 253px;
	left: 532px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 330px;
	left: 185px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 339px;
	left: 310px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 375px;
	left: 467px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 408px;
	left: 349px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 517px;
	left: 393px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 523px;
	left: 254px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 417px;
	left: 192px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 395px;
	left: 85px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 510px;
	left: 75px;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	//군산
	$(".list1").on("click",function(){
		var lat = "35.9676772";
		var lng = "126.7366293";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//익산
	$(".list2").on("click",function(){
		var lat = "35.9482858";
		var lng = "126.9575991";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//완주
	$(".list3").on("click",function(){
		var lat = "35.8912490";
		var lng = "127.2544065";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//진안
	$(".list4").on("click",function(){
		var lat = "35.7917297";
		var lng = "127.4248356";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//무주
	$(".list5").on("click",function(){
		var lat = "36.0068191";
		var lng = "127.6607805";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//김제
	$(".list6").on("click",function(){
		var lat = "35.8036079";
		var lng = "126.8808872";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//전주
	$(".list7").on("click",function(){
		var lat = "35.6472767";
		var lng = "127.5211363";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//장수
	$(".list8").on("click",function(){
		var lat = "35.6472767";
		var lng = "127.5211363";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//임실
	$(".list9").on("click",function(){
		var lat = "35.6110549";
		var lng = "127.2826599";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//남원
	$(".list10").on("click",function(){
		var lat = "35.4163570";
		var lng = "127.3904877";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//순창
	$(".list11").on("click",function(){
		var lat = "35.3744136";
		var lng = "127.1375968";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//정읍
	$(".list12").on("click",function(){
		var lat = "35.5698855";
		var lng = "126.8558955";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//부안
	$(".list13").on("click",function(){
		var lat = "35.7315661";
		var lng = "126.7334651";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//고창
	$(".list14").on("click",function(){
		var lat = "35.4358216";
		var lng = "126.7020806";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});

});


</script>
<script>
	//-----------------------------------------------------------------------------------------
	/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
	mus1on = new Image();
	mus1off = new Image();
	mus2on = new Image();
	mus2off = new Image();
	mus3on = new Image();
	mus3off = new Image();
	mus4on = new Image();
	mus4off = new Image();
	mus5on = new Image();
	mus5off = new Image();
	mus6on = new Image();
	mus6off = new Image();
	mus7on = new Image();
	mus7off = new Image();
	mus8on = new Image();
	mus8off = new Image();
	mus9on = new Image();
	mus9off = new Image();
	mus10on = new Image();
	mus10off = new Image();
	mus11on = new Image();
	mus11off = new Image();
	mus12on = new Image();
	mus12off = new Image();
	mus13on = new Image();
	mus13off = new Image();
	mus14on = new Image();
	mus14off = new Image();


	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "군산", "익산", "완주", "진안", "무주", "김제", "전주", "장수",
			"임실", "남원", "순창", "정읍", "부안", "고창");
	function mus_on(musName) {
		if (cMuName != musName) {
			document[musName].src = eval(musName + 'on.src');
		}
	}
	function mus_off(musName) {
		if (cMuName != musName)
			document[musName].src = eval(musName + 'off.src');
	}

	function smenu_click(musName) {
		cMuName = musName;
		document[musName].src = eval(musName + 'on.src');
	}

	//-----------------------------------------------------------------------------------------
</script>
<script>
 
 $(document).on("ready",function(){
		/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
		mus1off.src = './map/전북/1전북-군산.png';
		mus2off.src = './map/전북/1전북-익산.png';
		mus3off.src = './map/전북/1전북-완주.png';
		mus4off.src = './map/전북/1전북-진안.png';
		mus5off.src = './map/전북/1전북-무주.png';
		mus6off.src = './map/전북/1전북-김제.png';
		mus7off.src = './map/전북/1전북-전주.png';
		mus8off.src = './map/전북/1전북-장수.png';
		mus9off.src = './map/전북/1전북-임실.png';
		mus10off.src = './map/전북/1전북-남원.png';
		mus11off.src = './map/전북/1전북-순창.png';
		mus12off.src = './map/전북/1전북-정읍.png';
		mus13off.src = './map/전북/1전북-부안.png';
		mus14off.src = './map/전북/1전북-고창.png';

		mus1on.src = './map/전북/1전북-군산(변환).png';
		mus2on.src = './map/전북/1전북-익산(변환).png';
		mus3on.src = './map/전북/1전북-완주(변환).png';
		mus4on.src = './map/전북/1전북-진안(변환).png';
		mus5on.src = './map/전북/1전북-무주(변환).png';
		mus6on.src = './map/전북/1전북-김제(변환).png';
		mus7on.src = './map/전북/1전북-전주(변환).png';
		mus8on.src = './map/전북/1전북-장수(변환).png';
		mus9on.src = './map/전북/1전북-임실(변환).png';
		mus10on.src = './map/전북/1전북-남원(변환).png';
		mus11on.src = './map/전북/1전북-순창(변환).png';
		mus12on.src = './map/전북/1전북-정읍(변환).png';
		mus13on.src = './map/전북/1전북-부안(변환).png';
		mus14on.src = './map/전북/1전북-고창(변환).png';
	

	 if("${first}"=="군산시"||"${second}"=="군산시"||"${third}"=="군산시"){ 
		 	mus1off.src='/map/전북/1전북-군산(hot).png';
		 	$('.list1')[0].src='/map/전북/1전북-군산(hot).png';
		}else{
			$('.list1')[0].src='/map/전북/1전북-군산.png';
		}
	 if("${first}"=="익산시"||"${second}"=="익산시"||"${third}"=="익산시"){ 
		 	mus2off.src='/map/전북/1전북-익산(변환)(hot).png';
		 	$('.list2')[0].src='/map/전북/1전북-익산(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/전북/1전북-익산.png';
		}
	 if("${first}"=="완주군"||"${second}"=="완주군"||"${third}"=="완주군"){ 
		 	mus3off.src='/map/전북/1전북-완주(hot).png';
		 	$('.list3')[0].src='/map/전북/1전북-완주(hot).png';
		}else{
			$('.list3')[0].src='/map/전북/1전북-완주.png';
		}
	 if("${first}"=="진안군"||"${second}"=="진안군"||"${third}"=="진안군"){ 
		 	mus4off.src='/map/전북/1전북-진안(hot).png';
		 	$('.list4')[0].src='/map/전북/1전북-진안(hot).png';
		}else{
			$('.list4')[0].src='/map/전북/1전북-진안.png';
		}
	 if("${first}"=="무주군"||"${second}"=="무주군"||"${third}"=="무주군"){ 
		 	mus5off.src='/map/전북/1전북-무주(hot).png';
		 	$('.list5')[0].src='/map/전북/1전북-무주(hot).png';
		}else{
			$('.list5')[0].src='/map/전북/1전북-무주.png';
		}
	 if("${first}"=="김제시"||"${second}"=="김제시"||"${third}"=="김제시"){ 
		 	mus6off.src='/map/전북/1전북-김제(hot).png';
		 	$('.list6')[0].src='/map/전북/1전북-김제(hot).png';
		}else{
			$('.list6')[0].src='/map/전북/1전북-김제.png';
		}
	 if("${first}"=="전주시"||"${second}"=="전주시"||"${third}"=="전주시"){ 
		 	mus7off.src='/map/전북/1전북-전주(hot).png';
		 	$('.list7')[0].src='/map/전북/1전북-전주(hot).png';
		}else{
			$('.list7')[0].src='/map/전북/1전북-전주.png';
		}
	 if("${first}"=="장수군"||"${second}"=="장수군"||"${third}"=="장수군"){ 
		 	mus8off.src='/map/전북/1전북-장수(hot).png';
		 	$('.list8')[0].src='/map/전북/1전북-장수(hot).png';
		}else{
			$('.list8')[0].src='/map/전북/1전북-장수.png';
		}
	 if("${first}"=="임실군"||"${second}"=="임실군"||"${third}"=="임실군"){ 
		 	mus9off.src='/map/전북/1전북-임실(hot).png';
		 	$('.list9')[0].src='/map/전북/1전북-임실(hot).png';
		}else{
			$('.list9')[0].src='/map/전북/1전북-임실.png';
		}
	 if("${first}"=="남원시"||"${second}"=="남원시"||"${third}"=="남원시"){ 
		 	mus10off.src='/map/전북/1전북-남원(hot).png';
		 	$('.list10')[0].src='/map/전북/1전북-남원(hot).png';
		}else{
			$('.list10')[0].src='/map/전북/1전북-남원.png';
		}
	 if("${first}"=="순창군"||"${second}"=="순창군"||"${third}"=="순창군"){ 
		 	mus11off.src='/map/전북/1전북-순창(hot).png';
		 	$('.list11')[0].src='/map/전북/1전북-순창(hot).png';
		}else{
			$('.list11')[0].src='/map/전북/1전북-순창.png';
		}
	 if("${first}"=="정읍시"||"${second}"=="정읍시"||"${third}"=="정읍시"){ 
		 	mus12off.src='/map/전북/1전북-정읍(hot).png';
		 	$('.list12')[0].src='/map/전북/1전북-정읍(hot).png';
		}else{
			$('.list12')[0].src='/map/전북/1전북-정읍.png';
		}
	 if("${first}"=="부안군"||"${second}"=="부안군"||"${third}"=="부안군"){ 
		 	mus13off.src='/map/전북/1전북-부안(hot).png';
		 	$('.list13')[0].src='/map/전북/1전북-부안(hot).png';
		}else{
			$('.list13')[0].src='/map/전북/1전북-부안.png';
		}
	 if("${first}"=="고창군"||"${second}"=="고창군"||"${third}"=="고창군"){ 
		 	mus14off.src='/map/전북/1전북-고창(hot).png';
		 	$('.list14')[0].src='/map/전북/1전북-고창(hot).png';
		}else{
			$('.list14')[0].src='/map/전북/1전북-고창.png';
		}
 })
 </script>

</head>
<body>
	<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">
	<a href='/latlng?lat=35.9676772&lng=126.7366293' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/전북/1전북-군산.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=35.9482858&lng=126.9575991' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/전북/1전북-익산.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=35.8912490&lng=127.2544065' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/전북/1전북-완주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=35.7917297&lng=127.4248356' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/전북/1전북-진안.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=36.0068191&lng=127.6607805' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/전북/1전북-무주.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=35.8036079&lng=126.8808872' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/전북/1전북-김제.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=35.8254949&lng=127.0965806' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/전북/1전북-전주.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=35.6472767&lng=127.5211363' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/전북/1전북-장수.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=35.6110549&lng=127.2826599' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/전북/1전북-임실.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=35.4163570&lng=127.3904877' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/전북/1전북-남원.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=35.3744136&lng=127.1375968' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/전북/1전북-순창.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=35.5698855&lng=126.8558955' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/전북/1전북-정읍.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=35.7315661&lng=126.7334651' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/전북/1전북-부안.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=35.4358216&lng=126.7020806' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/전북/1전북-고창.png' alt='' border='0' name='mus14' class='list14' ></a>
</div>
</body>
</html>