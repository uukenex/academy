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
	top: 230px;
	left: 80px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 165px;
	left: 120px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 197px;
	left: 220px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 260px;
	left: 363px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 274px;
	left: 445px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 322px;
	left: 555px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 385px;
	left: 490px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 385px;
	left: 365px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 382px;
	left: 333px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 336px;
	left: 269px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 415px;
	left: 195px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 315px;
	left: 122px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 425px;
	left: 80px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 500px;
	left: 190px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 510px;
	left: 275px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 580px;
	left: 350px;
}

.list17 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 590px;
	left: 150px;
}

.list18 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 570px;
	left: 430px;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	//함양
	$(".list1").on("click",function(){
		var lat = "35.5204614";
		var lng = "127.7251763";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//거창
	$(".list2").on("click",function(){
		var lat = "35.6867229";
		var lng = "127.9095155";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//합천
	$(".list3").on("click",function(){
		var lat = "35.5665758";
		var lng = "128.1657995";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//창녕
	$(".list4").on("click",function(){
		var lat = "35.5445563";
		var lng = "128.4922143";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//밀양
	$(".list5").on("click",function(){
		var lat = "35.5037598";
		var lng = "128.7464415";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//양산
	$(".list6").on("click",function(){
		var lat = "35.3350072";
		var lng = "129.0371689";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//김해
	$(".list7").on("click",function(){
		var lat = "35.2285451";
		var lng = "128.8893517";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//창원 
	$(".list8").on("click",function(){
		var lat = "35.2176696";
		var lng = "128.5650009";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//함안
	$(".list9").on("click",function(){
		var lat = "35.2725591";
		var lng = "128.4064797";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//의령
	$(".list10").on("click",function(){
		var lat = "35.3221896";
		var lng = "128.2616580";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//진주
	$(".list11").on("click",function(){
		var lat = "35.1799817";
		var lng = "128.1076213";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//산청
	$(".list12").on("click",function(){
		var lat = "35.4155885";
		var lng = "127.8734981";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//하동
	$(".list13").on("click",function(){
		var lat = "35.0672108";
		var lng = "127.7512687";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//사천
	$(".list14").on("click",function(){
		var lat = "35.0037788";
		var lng = "128.0641850";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//고성
	$(".list15").on("click",function(){
		var lat = "34.9731490";
		var lng = "128.3222456";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//통영
	$(".list16").on("click",function(){
		var lat = "34.8544227";
		var lng = "128.4331820";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//남해
	$(".list17").on("click",function(){
		var lat = "34.8376721";
		var lng = "127.8924234";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//거제
	$(".list18").on("click",function(){
		var lat = "34.8806427";
		var lng = "128.6210824";
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
	mus15on = new Image();
	mus15off = new Image();
	mus16on = new Image();
	mus16off = new Image();
	mus17on = new Image();
	mus17off = new Image();
	mus18on = new Image();
	mus18off = new Image();


	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "함양", "거창", "합천", "창녕", "밀양", "양산", "김해", "창원",
			"함안", "의령", "진주", "산청", "하동", "사천", "고성", "통영", "남해", "거제");
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
		mus1off.src = './map/경남/1경남-함양.png';
		mus2off.src = './map/경남/1경남-거창.png';
		mus3off.src = './map/경남/1경남-합천.png';
		mus4off.src = './map/경남/1경남-창녕.png';
		mus5off.src = './map/경남/1경남-밀양.png';
		mus6off.src = './map/경남/1경남-양산.png';
		mus7off.src = './map/경남/1경남-김해.png';
		mus8off.src = './map/경남/1경남-창원.png';
		mus9off.src = './map/경남/1경남-함안.png';
		mus10off.src = './map/경남/1경남-의령.png';
		mus11off.src = './map/경남/1경남-진주.png';
		mus12off.src = './map/경남/1경남-산청.png';
		mus13off.src = './map/경남/1경남-하동.png';
		mus14off.src = './map/경남/1경남-사천.png';
		mus15off.src = './map/경남/1경남-고성.png';
		mus16off.src = './map/경남/1경남-통영.png';
		mus17off.src = './map/경남/1경남-남해.png';
		mus18off.src = './map/경남/1경남-거제.png';

		mus1on.src = './map/경남/1경남-함양(변환).png';
		mus2on.src = './map/경남/1경남-거창(변환).png';
		mus3on.src = './map/경남/1경남-합천(변환).png';
		mus4on.src = './map/경남/1경남-창녕(변환).png';
		mus5on.src = './map/경남/1경남-밀양(변환).png';
		mus6on.src = './map/경남/1경남-양산(변환).png';
		mus7on.src = './map/경남/1경남-김해(변환).png';
		mus8on.src = './map/경남/1경남-창원(변환).png';
		mus9on.src = './map/경남/1경남-함안(변환).png';
		mus10on.src = './map/경남/1경남-의령(변환).png';
		mus11on.src = './map/경남/1경남-진주(변환).png';
		mus12on.src = './map/경남/1경남-산청(변환).png';
		mus13on.src = './map/경남/1경남-하동(변환).png';
		mus14on.src = './map/경남/1경남-사천(변환).png';
		mus15on.src = './map/경남/1경남-고성(변환).png';
		mus16on.src = './map/경남/1경남-통영(변환).png';
		mus17on.src = './map/경남/1경남-남해(변환).png';
		mus18on.src = './map/경남/1경남-거제(변환).png';
	

	 if("${first}"=="함양군"||"${second}"=="함양군"||"${third}"=="함양군"){ 
		 	mus1off.src='/map/경남/1경남-함양(hot).png';
		 	$('.list1')[0].src='/map/경남/1경남-함양(hot).png';
		}else{
			$('.list1')[0].src='/map/경남/1경남-함양.png';
		}
	 if("${first}"=="거창군"||"${second}"=="거창군"||"${third}"=="거창군"){ 
		 	mus2off.src='/map/경남/1경남-거창(변환)(hot).png';
		 	$('.list2')[0].src='/map/경남/1경남-거창(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/경남/1경남-거창.png';
		}
	 if("${first}"=="합천군"||"${second}"=="합천군"||"${third}"=="합천군"){ 
		 	mus3off.src='/map/경남/1경남-합천(hot).png';
		 	$('.list3')[0].src='/map/경남/1경남-합천(hot).png';
		}else{
			$('.list3')[0].src='/map/경남/1경남-합천.png';
		}
	 if("${first}"=="창녕군"||"${second}"=="창녕군"||"${third}"=="창녕군"){ 
		 	mus4off.src='/map/경남/1경남-창녕(hot).png';
		 	$('.list4')[0].src='/map/경남/1경남-창녕(hot).png';
		}else{
			$('.list4')[0].src='/map/경남/1경남-창녕.png';
		}
	 if("${first}"=="밀양시"||"${second}"=="밀양시"||"${third}"=="밀양시"){ 
		 	mus5off.src='/map/경남/1경남-밀양(hot).png';
		 	$('.list5')[0].src='/map/경남/1경남-밀양(hot).png';
		}else{
			$('.list5')[0].src='/map/경남/1경남-밀양.png';
		}
	 if("${first}"=="양산시"||"${second}"=="양산시"||"${third}"=="양산시"){ 
		 	mus6off.src='/map/경남/1경남-양산(hot).png';
		 	$('.list6')[0].src='/map/경남/1경남-양산(hot).png';
		}else{
			$('.list6')[0].src='/map/경남/1경남-양산.png';
		}
	 if("${first}"=="김해시"||"${second}"=="김해시"||"${third}"=="김해시"){ 
		 	mus7off.src='/map/경남/1경남-김해(hot).png';
		 	$('.list7')[0].src='/map/경남/1경남-김해(hot).png';
		}else{
			$('.list7')[0].src='/map/경남/1경남-김해.png';
		}
	 if("${first}"=="창원시"||"${second}"=="창원시"||"${third}"=="창원시"){ 
		 	mus8off.src='/map/경남/1경남-창원(hot).png';
		 	$('.list8')[0].src='/map/경남/1경남-창원(hot).png';
		}else{
			$('.list8')[0].src='/map/경남/1경남-창원.png';
		}
	 if("${first}"=="함안군"||"${second}"=="함안군"||"${third}"=="함안군"){ 
		 	mus9off.src='/map/경남/1경남-함안(hot).png';
		 	$('.list9')[0].src='/map/경남/1경남-함안(hot).png';
		}else{
			$('.list9')[0].src='/map/경남/1경남-함안.png';
		}
	 if("${first}"=="의령군"||"${second}"=="의령군"||"${third}"=="의령군"){ 
		 	mus10off.src='/map/경남/1경남-의령(hot).png';
		 	$('.list10')[0].src='/map/경남/1경남-의령(hot).png';
		}else{
			$('.list10')[0].src='/map/경남/1경남-의령.png';
		}
	 if("${first}"=="진주시"||"${second}"=="진주시"||"${third}"=="진주시"){ 
		 	mus11off.src='/map/경남/1경남-진주(hot).png';
		 	$('.list11')[0].src='/map/경남/1경남-진주(hot).png';
		}else{
			$('.list11')[0].src='/map/경남/1경남-진주.png';
		}
	 if("${first}"=="산청군"||"${second}"=="산청군"||"${third}"=="산청군"){ 
		 	mus12off.src='/map/경남/1경남-산청(hot).png';
		 	$('.list12')[0].src='/map/경남/1경남-산청(hot).png';
		}else{
			$('.list12')[0].src='/map/경남/1경남-산청.png';
		}
	 if("${first}"=="하동군"||"${second}"=="하동군"||"${third}"=="하동군"){ 
		 	mus13off.src='/map/경남/1경남-하동(hot).png';
		 	$('.list13')[0].src='/map/경남/1경남-하동(hot).png';
		}else{
			$('.list13')[0].src='/map/경남/1경남-하동.png';
		}
	 if("${first}"=="사천시"||"${second}"=="사천시"||"${third}"=="사천시"){ 
		 	mus14off.src='/map/경남/1경남-사천(hot).png';
		 	$('.list14')[0].src='/map/경남/1경남-사천(hot).png';
		}else{
			$('.list14')[0].src='/map/경남/1경남-사천.png';
		}
	 if("${first}"=="고성군"||"${second}"=="고성군"||"${third}"=="고성군"){ 
		 	mus15off.src='/map/경남/1경남-고성(hot).png';
		 	$('.list15')[0].src='/map/경남/1경남-고성(hot).png';
		}else{
			$('.list15')[0].src='/map/경남/1경남-고성.png';
		}	 
	 if("${first}"=="통영시"||"${second}"=="통영시"||"${third}"=="통영시"){ 
		 	mus16off.src='/map/경남/1경남-통영(hot).png';
		 	$('.list16')[0].src='/map/경남/1경남-통영(hot).png';
		}else{
			$('.list16')[0].src='/map/경남/1경남-통영.png';
		}	 
	 if("${first}"=="남해군"||"${second}"=="남해군"||"${third}"=="남해군"){ 
		 	mus17off.src='/map/경남/1경남-남해(hot).png';
		 	$('.list17')[0].src='/map/경남/1경남-남해(hot).png';
		}else{
			$('.list17')[0].src='/map/경남/1경남-남해.png';
		}	 
	 if("${first}"=="거제시"||"${second}"=="거제시"||"${third}"=="거제시"){ 
		 	mus18off.src='/map/경남/1경남-거제(hot).png';
		 	$('.list18')[0].src='/map/경남/1경남-거제(hot).png';
		}else{
			$('.list18')[0].src='/map/경남/1경남-거제.png';
		}	 	
 });
 
 </script>

</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">
	<a href='/latlng?lat=35.5204614&lng=127.7251763' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/경남/1경남-함양.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=35.6867229&lng=127.9095155' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/경남/1경남-거창.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=35.5665758&lng=128.1657995' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/경남/1경남-합천.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=35.5445563&lng=128.4922143' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/경남/1경남-창녕.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=35.5037598&lng=128.7464415' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/경남/1경남-밀양.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=35.3350072&lng=129.0371689' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/경남/1경남-양산.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=35.2285451&lng=128.8893517' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/경남/1경남-김해.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=35.2176696&lng=128.5650009' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/경남/1경남-창원.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=35.2725591&lng=128.4064797' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/경남/1경남-함안.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=35.3221896&lng=128.2616580' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/경남/1경남-의령.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=35.1799817&lng=128.1076213' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/경남/1경남-진주.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=35.4155885&lng=127.8734981' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/경남/1경남-산청.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=35.0672108&lng=127.7512687' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/경남/1경남-하동.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=35.0037788&lng=128.0641850' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/경남/1경남-사천.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='/latlng?lat=34.9731490&lng=128.3222456' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/경남/1경남-고성.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='/latlng?lat=34.8544227&lng=128.4331820' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/경남/1경남-통영.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='/latlng?lat=34.8376721&lng=127.8924234' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/경남/1경남-남해.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='/latlng?lat=34.8806427&lng=128.6210824' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/경남/1경남-거제.png' alt='' border='0' name='mus18' class='list18' ></a>
	</div>
	

</body>
</html>