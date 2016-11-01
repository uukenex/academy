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
	top: 100px;
	left: 110px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 80px;
	left: 195px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 170px;
	left: 130px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 88px;
	left: 275px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 218px;
	left: 173px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 185px;
	left: 270px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 138px;
	left: 345px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 127px;
	left: 428px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 190px;
	left: 372px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 193px;
	left: 475px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 295px;
	left: 475px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 265px;
	left: 312px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 320px;
	left: 355px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 305px;
	left: 255px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 280px;
	left: 130px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 200px;
	left: 92px;
}

.list17 {
	clear: both;
	position: absolute;
	z-index: 17;
	top: 338px;
	left: 215px;
}

.list18 {
	clear: both;
	position: absolute;
	z-index: 18;
	top: 346px;
	left: 97px;
}

.list19 {
	clear: both;
	position: absolute;
	z-index: 19;
	top: 460px;
	left: 210px;
}

.list20 {
	clear: both;
	position: absolute;
	z-index: 20;
	top: 410px;
	left: 65px;
}

.list21 {
	clear: both;
	position: absolute;
	z-index: 21;
	top: 210px;
	left: 0px;
}

.list22 {
	clear: both;
	position: absolute;
	z-index: 22;
	top: 330px;
	left: 120px;
}
</style>
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
	mus19on = new Image();
	mus19off = new Image();
	mus20on = new Image();
	mus20off = new Image();
	mus21on = new Image();
	mus21off = new Image();
	mus22on = new Image();
	mus22off = new Image();

	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "영광", "장성", "함평", "담양", "나주", "화순", "곡성", "구례",
			"순천", "광양", "여수", "보성", "고흥", "장흥", "영암", "무안", "강진", "해남", "완도",
			"진도", "신안", "목포");
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
 
 $(document).on("ready",function(){
	/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
	mus1off.src = './map/전남/1전남-영광.png';
	mus2off.src = './map/전남/1전남-장성.png';
	mus3off.src = './map/전남/1전남-함평.png';
	mus4off.src = './map/전남/1전남-담양.png';
	mus5off.src = './map/전남/1전남-나주.png';
	mus6off.src = './map/전남/1전남-화순.png';
	mus7off.src = './map/전남/1전남-곡성.png';
	mus8off.src = './map/전남/1전남-구례.png';
	mus9off.src = './map/전남/1전남-순천.png';
	mus10off.src = './map/전남/1전남-광양.png';
	mus11off.src = './map/전남/1전남-여수.png';
	mus12off.src = './map/전남/1전남-보성.png';
	mus13off.src = './map/전남/1전남-고흥.png';
	mus14off.src = './map/전남/1전남-장흥.png';
	mus15off.src = './map/전남/1전남-영암.png';
	mus16off.src = './map/전남/1전남-무안.png';
	mus17off.src = './map/전남/1전남-강진.png';
	mus18off.src = './map/전남/1전남-해남.png';
	mus19off.src = './map/전남/1전남-완도.png';
	mus20off.src = './map/전남/1전남-진도.png';
	mus21off.src = './map/전남/1전남-신안.png';
	mus22off.src = './map/전남/1전남-목포.png';

	mus1on.src = './map/전남/1전남-영광(변환).png';
	mus2on.src = './map/전남/1전남-장성(변환).png';
	mus3on.src = './map/전남/1전남-함평(변환).png';
	mus4on.src = './map/전남/1전남-담양(변환).png';
	mus5on.src = './map/전남/1전남-나주(변환).png';
	mus6on.src = './map/전남/1전남-화순(변환).png';
	mus7on.src = './map/전남/1전남-곡성(변환).png';
	mus8on.src = './map/전남/1전남-구례(변환).png';
	mus9on.src = './map/전남/1전남-순천(변환).png';
	mus10on.src = './map/전남/1전남-광양(변환).png';
	mus11on.src = './map/전남/1전남-여수(변환).png';
	mus12on.src = './map/전남/1전남-보성(변환).png';
	mus13on.src = './map/전남/1전남-고흥(변환).png';
	mus14on.src = './map/전남/1전남-장흥(변환).png';
	mus15on.src = './map/전남/1전남-영암(변환).png';
	mus16on.src = './map/전남/1전남-무안(변환).png';
	mus17on.src = './map/전남/1전남-강진(변환).png';
	mus18on.src = './map/전남/1전남-해남(변환).png';
	mus19on.src = './map/전남/1전남-완도(변환).png';
	mus20on.src = './map/전남/1전남-진도(변환).png';
	mus21on.src = './map/전남/1전남-신안(변환).png';
	mus22on.src = './map/전남/1전남-목포(변환).png';


	 if("${first}"=="영광군"||"${second}"=="영광군"||"${third}"=="영광군"){ 
		 	mus1off.src='/map/전남/1전남-영광(hot).png';
		 	$('.list1')[0].src='/map/전남/1전남-영광(hot).png';
		}else{
			$('.list1')[0].src='/map/전남/1전남-영광.png';
		}
	 if("${first}"=="장성군"||"${second}"=="장성군"||"${third}"=="장성군"){ 
		 	mus2off.src='/map/전남/1전남-장성(변환)(hot).png';
		 	$('.list2')[0].src='/map/전남/1전남-장성(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/전남/1전남-장성.png';
		}
	 if("${first}"=="함평군"||"${second}"=="함평군"||"${third}"=="함평군"){ 
		 	mus3off.src='/map/전남/1전남-함평(hot).png';
		 	$('.list3')[0].src='/map/전남/1전남-함평(hot).png';
		}else{
			$('.list3')[0].src='/map/전남/1전남-함평.png';
		}
	 if("${first}"=="담양군"||"${second}"=="담양군"||"${third}"=="담양군"){ 
		 	mus4off.src='/map/전남/1전남-담양(hot).png';
		 	$('.list4')[0].src='/map/전남/1전남-담양(hot).png';
		}else{
			$('.list4')[0].src='/map/전남/1전남-담양.png';
		}
	 if("${first}"=="나주시"||"${second}"=="나주시"||"${third}"=="나주시"){ 
		 	mus5off.src='/map/전남/1전남-나주(hot).png';
		 	$('.list5')[0].src='/map/전남/1전남-나주(hot).png';
		}else{
			$('.list5')[0].src='/map/전남/1전남-나주.png';
		}
	 if("${first}"=="화순군"||"${second}"=="화순군"||"${third}"=="화순군"){ 
		 	mus6off.src='/map/전남/1전남-화순(hot).png';
		 	$('.list6')[0].src='/map/전남/1전남-화순(hot).png';
		}else{
			$('.list6')[0].src='/map/전남/1전남-화순.png';
		}
	 if("${first}"=="곡성군"||"${second}"=="곡성군"||"${third}"=="곡성군"){ 
		 	mus7off.src='/map/전남/1전남-곡성(hot).png';
		 	$('.list7')[0].src='/map/전남/1전남-곡성(hot).png';
		}else{
			$('.list7')[0].src='/map/전남/1전남-곡성.png';
		}
	 if("${first}"=="구례군"||"${second}"=="구례군"||"${third}"=="구례군"){ 
		 	mus8off.src='/map/전남/1전남-구례(hot).png';
		 	$('.list8')[0].src='/map/전남/1전남-구례(hot).png';
		}else{
			$('.list8')[0].src='/map/전남/1전남-구례.png';
		}
	 if("${first}"=="순천시"||"${second}"=="순천시"||"${third}"=="순천시"){ 
		 	mus9off.src='/map/전남/1전남-순천(hot).png';
		 	$('.list9')[0].src='/map/전남/1전남-순천(hot).png';
		}else{
			$('.list9')[0].src='/map/전남/1전남-순천.png';
		}
	 if("${first}"=="광양시"||"${second}"=="광양시"||"${third}"=="광양시"){ 
		 	mus10off.src='/map/전남/1전남-광양(hot).png';
		 	$('.list10')[0].src='/map/전남/1전남-광양(hot).png';
		}else{
			$('.list10')[0].src='/map/전남/1전남-광양.png';
		}
	 if("${first}"=="여수시"||"${second}"=="여수시"||"${third}"=="여수시"){ 
		 	mus11off.src='/map/전남/1전남-여수(hot).png';
		 	$('.list11')[0].src='/map/전남/1전남-여수(hot).png';
		}else{
			$('.list11')[0].src='/map/전남/1전남-여수.png';
		}
	 if("${first}"=="보성군"||"${second}"=="보성군"||"${third}"=="보성군"){ 
		 	mus12off.src='/map/전남/1전남-보성(hot).png';
		 	$('.list12')[0].src='/map/전남/1전남-보성(hot).png';
		}else{
			$('.list12')[0].src='/map/전남/1전남-보성.png';
		}
	 if("${first}"=="고흥군"||"${second}"=="고흥군"||"${third}"=="고흥군"){ 
		 	mus13off.src='/map/전남/1전남-고흥(hot).png';
		 	$('.list13')[0].src='/map/전남/1전남-고흥(hot).png';
		}else{
			$('.list13')[0].src='/map/전남/1전남-고흥.png';
		}
	 if("${first}"=="장흥군"||"${second}"=="장흥군"||"${third}"=="장흥군"){ 
		 	mus14off.src='/map/전남/1전남-장흥(hot).png';
		 	$('.list14')[0].src='/map/전남/1전남-장흥(hot).png';
		}else{
			$('.list14')[0].src='/map/전남/1전남-장흥.png';
		}
	 if("${first}"=="영암군"||"${second}"=="영암군"||"${third}"=="영암군"){ 
		 	mus15off.src='/map/전남/1전남-영암(hot).png';
		 	$('.list15')[0].src='/map/전남/1전남-영암(hot).png';
		}else{
			$('.list15')[0].src='/map/전남/1전남-영암.png';
		}	 
	 if("${first}"=="무안군"||"${second}"=="무안군"||"${third}"=="무안군"){ 
		 	mus16off.src='/map/전남/1전남-무안(hot).png';
		 	$('.list16')[0].src='/map/전남/1전남-무안(hot).png';
		}else{
			$('.list16')[0].src='/map/전남/1전남-무안.png';
		}	 
	 if("${first}"=="강진군"||"${second}"=="강진군"||"${third}"=="강진군"){ 
		 	mus17off.src='/map/전남/1전남-강진(hot).png';
		 	$('.list17')[0].src='/map/전남/1전남-강진(hot).png';
		}else{
			$('.list17')[0].src='/map/전남/1전남-강진.png';
		}	 
	 if("${first}"=="해남군"||"${second}"=="해남군"||"${third}"=="해남군"){ 
		 	mus18off.src='/map/전남/1전남-해남(hot).png';
		 	$('.list18')[0].src='/map/전남/1전남-해남(hot).png';
		}else{
			$('.list18')[0].src='/map/전남/1전남-해남.png';
		}	 	
	 if("${first}"=="완도군"||"${second}"=="완도군"||"${third}"=="완도군"){ 
		 	mus19off.src='/map/전남/1전남-완도(hot).png';
		 	$('.list19')[0].src='/map/전남/1전남-완도(hot).png';
		}else{
			$('.list19')[0].src='/map/전남/1전남-완도.png';
		}	 
	 if("${first}"=="진도군"||"${second}"=="진도군"||"${third}"=="진도군"){ 
		 	mus20off.src='/map/전남/1전남-진도(hot).png';
		 	$('.list20')[0].src='/map/전남/1전남-진도(hot).png';
		}else{
			$('.list20')[0].src='/map/전남/1전남-진도.png';
		}	 
	 if("${first}"=="신안군"||"${second}"=="신안군"||"${third}"=="신안군"){ 
		 	mus21off.src='/map/전남/1전남-신안(hot).png';
		 	$('.list21')[0].src='/map/전남/1전남-신안(hot).png';
		}else{
			$('.list21')[0].src='/map/전남/1전남-신안.png';
		}	 
	 if("${first}"=="목포시"||"${second}"=="목포시"||"${third}"=="목포시"){ 
		 	mus22off.src='/map/전남/1전남-목포(hot).png';
		 	$('.list22')[0].src='/map/전남/1전남-목포(hot).png';
		}else{
			$('.list22')[0].src='/map/전남/1전남-목포.png';
		}	 
 });
 
 </script>

</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">
	<a href='/latlng?lat=35.2771719&lng=126.5119874' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/전남/1전남-영광.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=35.3018333&lng=126.7848541' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/전남/1전남-장성.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=35.0659399&lng=126.5165524' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/전남/1전남-함평.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=35.3211394&lng=126.9881673' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/전남/1전남-담양.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=35.0160601&lng=126.7107572' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/전남/1전남-나주.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=35.0645029&lng=126.9864799' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/전남/1전남-화순.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=35.2819553&lng=127.2919175' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/전남/1전남-곡성.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=35.2024947&lng=127.4626534' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/전남/1전남-구례.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=34.9506370&lng=127.4872135' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/전남/1전남-순천.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=34.9406968&lng=127.6958882' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/전남/1전남-광양.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=34.7603737&lng=127.6622221' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/전남/1전남-여수.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=34.7714563&lng=127.0798944' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/전남/1전남-보성.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=34.6112219&lng=127.2849780' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/전남/1전남-고흥.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=34.6816856&lng=126.9069278' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/전남/1전남-장흥.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='/latlng?lat=34.8001685&lng=126.6967918' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/전남/1전남-영암.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='/latlng?lat=34.9904542&lng=126.4816856' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/전남/1전남-무안.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='/latlng?lat=34.6420774&lng=126.7672610' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/전남/1전남-강진.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='/latlng?lat=34.5732516&lng=126.5989274' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/전남/1전남-해남.png' alt='' border='0' name='mus18' class='list18' ></a>
	<a href='/latlng?lat=34.3110596&lng=126.7550541' onfocus='this.blur()' onmouseover=mus_on('mus19') onmouseout=mus_off('mus19') onclick=smenu_click('mus19')>
	<img src='./map/전남/1전남-완도.png' alt='' border='0' name='mus19' class='list19' ></a>
	<a href='/latlng?lat=34.4868712&lng=126.2634853' onfocus='this.blur()' onmouseover=mus_on('mus20') onmouseout=mus_off('mus20') onclick=smenu_click('mus20')>
	<img src='./map/전남/1전남-진도.png' alt='' border='0' name='mus20' class='list20' ></a>
	<a href='/latlng?lat=34.8273320&lng=126.1010740' onfocus='this.blur()' onmouseover=mus_on('mus21') onmouseout=mus_off('mus21') onclick=smenu_click('mus21')>
	<img src='./map/전남/1전남-신안.png' alt='' border='0' name='mus21' class='list21' ></a>
	<a href='/latlng?lat=34.8118351&lng=126.3921664' onfocus='this.blur()' onmouseover=mus_on('mus22') onmouseout=mus_off('mus22') onclick=smenu_click('mus22')>
	<img src='./map/전남/1전남-목포.png' alt='' border='0' name='mus22' class='list22' ></a>
</div>
</body>
</html>