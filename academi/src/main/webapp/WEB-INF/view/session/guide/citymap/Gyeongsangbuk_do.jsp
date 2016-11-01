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
	top: 200px;
	left: 60px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 208px;
	left: 165px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 130px;
	left: 210px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 113px;
	left: 273px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 97px;
	left: 395px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 188px;
	left: 370px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 214px;
	left: 215px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 278px;
	left: 37px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 319px;
	left: 178px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 292px;
	left: 337px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 261px;
	left: 420px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 380px;
	left: 378px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 470px;
	left: 375px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 435px;
	left: 295px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 505px;
	left: 290px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 555px;
	left: 248px;
}

.list17 {
	clear: both;
	position: absolute;
	z-index: 17;
	top: 380px;
	left: 132px;
}

.list18 {
	clear: both;
	position: absolute;
	z-index: 18;
	top: 390px;
	left: 208px;
}

.list19 {
	clear: both;
	position: absolute;
	z-index: 19;
	top: 463px;
	left: 174px;
}

.list20 {
	clear: both;
	position: absolute;
	z-index: 20;
	top: 415px;
	left: 57px;
}

.list21 {
	clear: both;
	position: absolute;
	z-index: 21;
	top: 487px;
	left: 107px;
}

.list22 {
	clear: both;
	position: absolute;
	z-index: 22;
	top: 558px;
	left: 140px;
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
	var exx = new Array("", "문경", "예천", "영주", "봉화", "울진", "영양", "안동", "상주",
			"의성", "청송", "영덕", "포항", "경주", "영천", "경산", "청도", "구미", "군위", "칠곡",
			"김천", "성주", "고령");
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
		mus1off.src = './map/경북/1경북-문경.png';
		mus2off.src = './map/경북/1경북-예천.png';
		mus3off.src = './map/경북/1경북-영주.png';
		mus4off.src = './map/경북/1경북-봉화.png';
		mus5off.src = './map/경북/1경북-울진.png';
		mus6off.src = './map/경북/1경북-영양.png';
		mus7off.src = './map/경북/1경북-안동.png';
		mus8off.src = './map/경북/1경북-상주.png';
		mus9off.src = './map/경북/1경북-의성.png';
		mus10off.src = './map/경북/1경북-청송.png';
		mus11off.src = './map/경북/1경북-영덕.png';
		mus12off.src = './map/경북/1경북-포항.png';
		mus13off.src = './map/경북/1경북-경주.png';
		mus14off.src = './map/경북/1경북-영천.png';
		mus15off.src = './map/경북/1경북-경산.png';
		mus16off.src = './map/경북/1경북-청도.png';
		mus17off.src = './map/경북/1경북-구미.png';
		mus18off.src = './map/경북/1경북-군위.png';
		mus19off.src = './map/경북/1경북-칠곡.png';
		mus20off.src = './map/경북/1경북-김천.png';
		mus21off.src = './map/경북/1경북-성주.png';
		mus22off.src = './map/경북/1경북-고령.png';

		mus1on.src = './map/경북/1경북-문경(변환).png';
		mus2on.src = './map/경북/1경북-예천(변환).png';
		mus3on.src = './map/경북/1경북-영주(변환).png';
		mus4on.src = './map/경북/1경북-봉화(변환).png';
		mus5on.src = './map/경북/1경북-울진(변환).png';
		mus6on.src = './map/경북/1경북-영양(변환).png';
		mus7on.src = './map/경북/1경북-안동(변환).png';
		mus8on.src = './map/경북/1경북-상주(변환).png';
		mus9on.src = './map/경북/1경북-의성(변환).png';
		mus10on.src = './map/경북/1경북-청송(변환).png';
		mus11on.src = './map/경북/1경북-영덕(변환).png';
		mus12on.src = './map/경북/1경북-포항(변환).png';
		mus13on.src = './map/경북/1경북-경주(변환).png';
		mus14on.src = './map/경북/1경북-영천(변환).png';
		mus15on.src = './map/경북/1경북-경산(변환).png';
		mus16on.src = './map/경북/1경북-청도(변환).png';
		mus17on.src = './map/경북/1경북-구미(변환).png';
		mus18on.src = './map/경북/1경북-군위(변환).png';
		mus19on.src = './map/경북/1경북-칠곡(변환).png';
		mus20on.src = './map/경북/1경북-김천(변환).png';
		mus21on.src = './map/경북/1경북-성주(변환).png';
		mus22on.src = './map/경북/1경북-고령(변환).png';
	

	 if("${first}"=="문경시"||"${second}"=="문경시"||"${third}"=="문경시"){ 
		 	mus1off.src='/map/경북/1경북-문경(hot).png';
		 	$('.list1')[0].src='/map/경북/1경북-문경(hot).png';
		}else{
			$('.list1')[0].src='/map/경북/1경북-문경.png';
		}
	 if("${first}"=="예천군"||"${second}"=="예천군"||"${third}"=="예천군"){ 
		 	mus2off.src='/map/경북/1경북-예천(변환)(hot).png';
		 	$('.list2')[0].src='/map/경북/1경북-예천(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/경북/1경북-예천.png';
		}
	 if("${first}"=="영주시"||"${second}"=="영주시"||"${third}"=="영주시"){ 
		 	mus3off.src='/map/경북/1경북-영주(hot).png';
		 	$('.list3')[0].src='/map/경북/1경북-영주(hot).png';
		}else{
			$('.list3')[0].src='/map/경북/1경북-영주.png';
		}
	 if("${first}"=="봉화군"||"${second}"=="봉화군"||"${third}"=="봉화군"){ 
		 	mus4off.src='/map/경북/1경북-봉화(hot).png';
		 	$('.list4')[0].src='/map/경북/1경북-봉화(hot).png';
		}else{
			$('.list4')[0].src='/map/경북/1경북-봉화.png';
		}
	 if("${first}"=="울진군"||"${second}"=="울진군"||"${third}"=="울진군"){ 
		 	mus5off.src='/map/경북/1경북-울진(hot).png';
		 	$('.list5')[0].src='/map/경북/1경북-울진(hot).png';
		}else{
			$('.list5')[0].src='/map/경북/1경북-울진.png';
		}
	 if("${first}"=="영양군"||"${second}"=="영양군"||"${third}"=="영양군"){ 
		 	mus6off.src='/map/경북/1경북-영양(hot).png';
		 	$('.list6')[0].src='/map/경북/1경북-영양(hot).png';
		}else{
			$('.list6')[0].src='/map/경북/1경북-영양.png';
		}
	 if("${first}"=="안동시"||"${second}"=="안동시"||"${third}"=="안동시"){ 
		 	mus7off.src='/map/경북/1경북-안동(hot).png';
		 	$('.list7')[0].src='/map/경북/1경북-안동(hot).png';
		}else{
			$('.list7')[0].src='/map/경북/1경북-안동.png';
		}
	 if("${first}"=="상주시"||"${second}"=="상주시"||"${third}"=="상주시"){ 
		 	mus8off.src='/map/경북/1경북-상주(hot).png';
		 	$('.list8')[0].src='/map/경북/1경북-상주(hot).png';
		}else{
			$('.list8')[0].src='/map/경북/1경북-상주.png';
		}
	 if("${first}"=="의성군"||"${second}"=="의성군"||"${third}"=="의성군"){ 
		 	mus9off.src='/map/경북/1경북-의성(hot).png';
		 	$('.list9')[0].src='/map/경북/1경북-의성(hot).png';
		}else{
			$('.list9')[0].src='/map/경북/1경북-의성.png';
		}
	 if("${first}"=="청송군"||"${second}"=="청송군"||"${third}"=="청송군"){ 
		 	mus10off.src='/map/경북/1경북-청송(hot).png';
		 	$('.list10')[0].src='/map/경북/1경북-청송(hot).png';
		}else{
			$('.list10')[0].src='/map/경북/1경북-청송.png';
		}
	 if("${first}"=="영덕군"||"${second}"=="영덕군"||"${third}"=="영덕군"){ 
		 	mus11off.src='/map/경북/1경북-영덕(hot).png';
		 	$('.list11')[0].src='/map/경북/1경북-영덕(hot).png';
		}else{
			$('.list11')[0].src='/map/경북/1경북-영덕.png';
		}
	 if("${first}"=="포항시"||"${second}"=="포항시"||"${third}"=="포항시"){ 
		 	mus12off.src='/map/경북/1경북-포항(hot).png';
		 	$('.list12')[0].src='/map/경북/1경북-포항(hot).png';
		}else{
			$('.list12')[0].src='/map/경북/1경북-포항.png';
		}
	 if("${first}"=="경주시"||"${second}"=="경주시"||"${third}"=="경주시"){ 
		 	mus13off.src='/map/경북/1경북-경주(hot).png';
		 	$('.list13')[0].src='/map/경북/1경북-경주(hot).png';
		}else{
			$('.list13')[0].src='/map/경북/1경북-경주.png';
		}
	 if("${first}"=="영천시"||"${second}"=="영천시"||"${third}"=="영천시"){ 
		 	mus14off.src='/map/경북/1경북-영천(hot).png';
		 	$('.list14')[0].src='/map/경북/1경북-영천(hot).png';
		}else{
			$('.list14')[0].src='/map/경북/1경북-영천.png';
		}
	 if("${first}"=="경산시"||"${second}"=="경산시"||"${third}"=="경산시"){ 
		 	mus15off.src='/map/경북/1경북-경산(hot).png';
		 	$('.list15')[0].src='/map/경북/1경북-경산(hot).png';
		}else{
			$('.list15')[0].src='/map/경북/1경북-경산.png';
		}	 
	 if("${first}"=="청도군"||"${second}"=="청도군"||"${third}"=="청도군"){ 
		 	mus16off.src='/map/경북/1경북-청도(hot).png';
		 	$('.list16')[0].src='/map/경북/1경북-청도(hot).png';
		}else{
			$('.list16')[0].src='/map/경북/1경북-청도.png';
		}	 
	 if("${first}"=="구미시"||"${second}"=="구미시"||"${third}"=="구미시"){ 
		 	mus17off.src='/map/경북/1경북-구미(hot).png';
		 	$('.list17')[0].src='/map/경북/1경북-구미(hot).png';
		}else{
			$('.list17')[0].src='/map/경북/1경북-구미.png';
		}	 
	 if("${first}"=="군위군"||"${second}"=="군위군"||"${third}"=="군위군"){ 
		 	mus18off.src='/map/경북/1경북-군위(hot).png';
		 	$('.list18')[0].src='/map/경북/1경북-군위(hot).png';
		}else{
			$('.list18')[0].src='/map/경북/1경북-군위.png';
		}	 
	 if("${first}"=="칠곡군"||"${second}"=="칠곡군"||"${third}"=="칠곡군"){ 
		 	mus19off.src='/map/경북/1경북-칠곡(hot).png';
		 	$('.list19')[0].src='/map/경북/1경북-칠곡(hot).png';
		}else{
			$('.list19')[0].src='/map/경북/1경북-칠곡.png';
		}	 
	 if("${first}"=="김천시"||"${second}"=="김천시"||"${third}"=="김천시"){ 
		 	mus20off.src='/map/경북/1경북-김천(hot).png';
		 	$('.list20')[0].src='/map/경북/1경북-김천(hot).png';
		}else{
			$('.list20')[0].src='/map/경북/1경북-김천.png';
		}	 
	 if("${first}"=="성주군"||"${second}"=="성주군"||"${third}"=="성주군"){ 
		 	mus21off.src='/map/경북/1경북-성주(hot).png';
		 	$('.list21')[0].src='/map/경북/1경북-성주(hot).png';
		}else{
			$('.list21')[0].src='/map/경북/1경북-성주.png';
		}	 
	 if("${first}"=="고령군"||"${second}"=="고령군"||"${third}"=="고령군"){ 
		 	mus22off.src='/map/경북/1경북-고령(hot).png';
		 	$('.list22')[0].src='/map/경북/1경북-고령(hot).png';
		}else{
			$('.list22')[0].src='/map/경북/1경북-고령.png';
		}	 
	
 });
 
 </script>

</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">
	<a href='/latlng?lat=36.5861480&lng=128.1867972' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/경북/1경북-문경.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=36.6577004&lng=128.4528808' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/경북/1경북-예천.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=36.8056858&lng=128.6240551' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/경북/1경북-영주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=36.8930933&lng=128.7323752' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/경북/1경북-봉화.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=36.9930661&lng=129.4004195' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/경북/1경북-울진.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=36.6666558&lng=129.1124007' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/경북/1경북-영양.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=36.5683543&lng=128.7293570' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/경북/1경북-안동.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=36.4109466&lng=128.1590828' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/경북/1경북-상주.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=36.3526576&lng=128.6970053' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/경북/1경북-의성.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=36.4359045&lng=129.0571077' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/경북/1경북-청송.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=36.4150799&lng=129.3659681' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/경북/1경북-영덕.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=36.0192796&lng=129.2995603' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/경북/1경북-포항.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=35.8561719&lng=129.2247477' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/경북/1경북-경주.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=35.9732915&lng=128.9385493' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/경북/1경북-영천.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='/latlng?lat=35.8250555&lng=128.7415441' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/경북/1경북-경산.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='/latlng?lat=35.6472706&lng=128.7339107' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/경북/1경북-청도.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='/latlng?lat=36.1194850&lng=128.3445734' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/경북/1경북-구미.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='/latlng?lat=36.2428355&lng=128.5727702' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/경북/1경북-군위.png' alt='' border='0' name='mus18' class='list18' ></a>
	<a href='/latlng?lat=35.9953059&lng=128.4015434' onfocus='this.blur()' onmouseover=mus_on('mus19') onmouseout=mus_off('mus19') onclick=smenu_click('mus19')>
	<img src='./map/경북/1경북-칠곡.png' alt='' border='0' name='mus19' class='list19' ></a>
	<a href='/latlng?lat=36.1398393&lng=128.1135947' onfocus='this.blur()' onmouseover=mus_on('mus20') onmouseout=mus_off('mus20') onclick=smenu_click('mus20')>
	<img src='./map/경북/1경북-김천.png' alt='' border='0' name='mus20' class='list20' ></a>
	<a href='/latlng?lat=35.9190079&lng=128.2829738' onfocus='this.blur()' onmouseover=mus_on('mus21') onmouseout=mus_off('mus21') onclick=smenu_click('mus21')>
	<img src='./map/경북/1경북-성주.png' alt='' border='0' name='mus21' class='list21' ></a>
	<a href='/latlng?lat=35.7261415&lng=128.2629530' onfocus='this.blur()' onmouseover=mus_on('mus22') onmouseout=mus_off('mus22') onclick=smenu_click('mus22')>
	<img src='./map/경북/1경북-고령.png' alt='' border='0' name='mus22' class='list22' ></a>

	</div>
</body>
</html>