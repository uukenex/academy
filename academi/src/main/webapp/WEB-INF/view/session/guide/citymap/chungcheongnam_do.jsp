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
	top: 110px;
	left: 110px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 80px;
	left: 160px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 230px;
	left: 200px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 150px;
	left: 295px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 130px;
	left: 370px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 310px;
	left: 320px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 315px;
	left: 150px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 420px;
	left: 160px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 370px;
	left: 235px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 480px;
	left: 238px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 595px;
	left: 180px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 505px;
	left: 360px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 495px;
	left: 435px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 535px;
	left: 485px;
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

	/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
	mus1off.src = './map/충남/충남-태안.png';
	mus2off.src = './map/충남/충남-서산.png';
	mus3off.src = './map/충남/충남-당진.png';
	mus4off.src = './map/충남/충남-예산.png';
	mus5off.src = './map/충남/충남-아산.png';
	mus6off.src = './map/충남/충남-천안.png';
	mus7off.src = './map/충남/충남-공주.png';
	mus8off.src = './map/충남/충남-홍성.png';
	mus9off.src = './map/충남/충남-보령.png';
	mus10off.src = './map/충남/충남-청양.png';
	mus11off.src = './map/충남/충남-부여.png';
	mus12off.src = './map/충남/충남-서천.png';
	mus13off.src = './map/충남/충남-논산.png';
	mus14off.src = './map/충남/충남-계룡.png';
	mus15off.src = './map/충남/충남-금산.png';

	mus1on.src = './map/충남/충남-태안(변환).png';
	mus2on.src = './map/충남/충남-서산(변환).png';
	mus3on.src = './map/충남/충남-당진(변환).png';
	mus4on.src = './map/충남/충남-예산(변환).png';
	mus5on.src = './map/충남/충남-아산(변환).png';
	mus6on.src = './map/충남/충남-천안(변환).png';
	mus7on.src = './map/충남/충남-공주(변환).png';
	mus8on.src = './map/충남/충남-홍성(변환).png';
	mus9on.src = './map/충남/충남-보령(변환).png';
	mus10on.src = './map/충남/충남-청양(변환).png';
	mus11on.src = './map/충남/충남-부여(변환).png';
	mus12on.src = './map/충남/충남-서천(변환).png';
	mus13on.src = './map/충남/충남-논산(변환).png';
	mus14on.src = './map/충남/충남-계룡(변환).png';
	mus15on.src = './map/충남/충남-금산(변환).png';

	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "태안", "서산", "당진", "예산", "아산", "천안", "공주", "홍성",
			"보령", "청양", "부여", "서천", "논산", "계룡", "금산", "양양", "강릉", "동해");
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



	<a href='/latlng?lat=36.7456421&lng=126.2980528' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/충남/충남-태안.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=36.7844993&lng=126.4503169' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/충남/충남-서산.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=36.8936109&lng=126.6283278' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/충남/충남-당진.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=36.6826123&lng=126.6283278' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/충남/충남-예산.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=36.7897960&lng=127.0018494' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/충남/충남-아산.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=36.7968771&lng=127.075037' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/충남/충남-천안.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=36.4465346&lng=127.1191534' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/충남/충남-공주.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=36.6012300&lng=126.6607764' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/충남/충남-홍성.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=36.3331629&lng=126.6129441' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/충남/충남-보령.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=36.4588326&lng=126.8022116' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/충남/충남-청양.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=36.2754406&lng=126.9101780' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/충남/충남-부여.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=36.0803312&lng=126.6913277' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/충남/충남-서천.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=36.1870656&lng=127.0987453' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/충남/충남-논산.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=36.2745577&lng=127.2485896' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/충남/충남-계룡.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='/latlng?lat=36.1086928&lng=127.4880712' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/충남/충남-금산.png' alt='' border='0' name='mus15' class='list15' ></a>
	
</div>
</body>
</html>