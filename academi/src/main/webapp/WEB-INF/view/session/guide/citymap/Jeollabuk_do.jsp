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
	left: 80px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 110px;
	left: 220px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 122px;
	left: 295px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 175px;
	left: 395px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 153px;
	left: 502px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 230px;
	left: 155px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 239px;
	left: 280px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 275px;
	left: 437px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 308px;
	left: 319px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 417px;
	left: 363px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 423px;
	left: 224px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 317px;
	left: 162px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 295px;
	left: 55px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 410px;
	left: 45px;
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
</head>
<body>
	<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">

	<a href='./map/bbs/board.php?bo_table=m101&sca=군산' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/전북/1전북-군산.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=익산' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/전북/1전북-익산.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=완주' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/전북/1전북-완주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=진안' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/전북/1전북-진안.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=무주' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/전북/1전북-무주.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=김제' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/전북/1전북-김제.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=전주' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/전북/1전북-전주.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=장수' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/전북/1전북-장수.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=임실' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/전북/1전북-임실.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=남원' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/전북/1전북-남원.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=순창' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/전북/1전북-순창.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=정읍' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/전북/1전북-정읍.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=부안' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/전북/1전북-부안.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=고창' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/전북/1전북-고창.png' alt='' border='0' name='mus14' class='list14' ></a>

</div>
</body>
</html>