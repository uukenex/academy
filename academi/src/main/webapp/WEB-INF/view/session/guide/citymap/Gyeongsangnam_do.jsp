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
	top: 160px;
	left: 30px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 95px;
	left: 70px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 127px;
	left: 170px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 190px;
	left: 313px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 204px;
	left: 395px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 252px;
	left: 505px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 315px;
	left: 440px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 315px;
	left: 315px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 312px;
	left: 283px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 266px;
	left: 219px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 345px;
	left: 145px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 245px;
	left: 72px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 355px;
	left: 30px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 430px;
	left: 140px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 440px;
	left: 225px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 510px;
	left: 300px;
}

.list17 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 520px;
	left: 100px;
}

.list18 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 500px;
	left: 380px;
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