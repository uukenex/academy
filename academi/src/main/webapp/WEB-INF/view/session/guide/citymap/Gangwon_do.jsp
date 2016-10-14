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
	top: 177px;
	left: 157px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 158px;
	left: 313px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 135px;
	left: 363px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 42px;
	left: 455px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 200px;
	left: 530px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 265px;
	left: 182px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 334px;
	left: 195px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 445;
	left: 285px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 385px;
	left: 465px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 525px;
	left: 280px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 560px;
	left: 415px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 585px;
	left: 715px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 490px;
	left: 570px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 530px;
	left: 703px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 225px;
	left: 525px;
}

.list17 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 340px;
	left: 595px;
}

.list18 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 475px;
	left: 750px;
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
	mus1off.src = './map/강원도/1강원도-철원.png';
	mus2off.src = './map/강원도/1강원도-화천.png';
	mus3off.src = './map/강원도/1강원도-양구.png';
	mus4off.src = './map/강원도/1강원도-인제.png';
	mus5off.src = './map/강원도/1강원도-고성.png';
	mus6off.src = './map/강원도/1강원도-속초.png';
	mus7off.src = './map/강원도/1강원도-춘천.png';
	mus8off.src = './map/강원도/1강원도-홍천.png';
	mus9off.src = './map/강원도/1강원도-횡성.png';
	mus10off.src = './map/강원도/1강원도-평창.png';
	mus11off.src = './map/강원도/1강원도-원주.png';
	mus12off.src = './map/강원도/1강원도-영월.png';
	mus13off.src = './map/강원도/1강원도-태백.png';
	mus14off.src = './map/강원도/1강원도-정선.png';
	mus15off.src = './map/강원도/1강원도-삼척.png';
	mus16off.src = './map/강원도/1강원도-양양.png';
	mus17off.src = './map/강원도/1강원도-강릉.png';
	mus18off.src = './map/강원도/1강원도-동해.png';

	mus1on.src = './map/강원도/1강원도-철원(변환).png';
	mus2on.src = './map/강원도/1강원도-화천(변환).png';
	mus3on.src = './map/강원도/1강원도-양구(변환).png';
	mus4on.src = './map/강원도/1강원도-인제(변환).png';
	mus5on.src = './map/강원도/1강원도-고성(변환).png';
	mus6on.src = './map/강원도/1강원도-속초(변환).png';
	mus7on.src = './map/강원도/1강원도-춘천(변환).png';
	mus8on.src = './map/강원도/1강원도-홍천(변환).png';
	mus9on.src = './map/강원도/1강원도-횡성(변환).png';
	mus10on.src = './map/강원도/1강원도-평창(변환).png';
	mus11on.src = './map/강원도/1강원도-원주(변환).png';
	mus12on.src = './map/강원도/1강원도-영월(변환).png';
	mus13on.src = './map/강원도/1강원도-태백(변환).png';
	mus14on.src = './map/강원도/1강원도-정선(변환).png';
	mus15on.src = './map/강원도/1강원도-삼척(변환).png';
	mus16on.src = './map/강원도/1강원도-양양(변환).png';
	mus17on.src = './map/강원도/1강원도-강릉(변환).png';
	mus18on.src = './map/강원도/1강원도-동해(변환).png';

	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "철원", "화천", "양구", "인제", "고성", "속초", "춘천", "홍천",
			"횡성", "평창", "원주", "영월", "태백", "정선", "삼척", "양양", "강릉", "동해");
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

	<a href='./map/bbs/board.php?bo_table=m101&sca=철원' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/강원도/1강원도-철원.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=화천' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/강원도/1강원도-화천.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=양구' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/강원도/1강원도-양구.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=인제' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/강원도/1강원도-인제.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=고성' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/강원도/1강원도-고성.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=속초' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/강원도/1강원도-속초.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=춘천' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/강원도/1강원도-춘천.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=홍천' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/강원도/1강원도-홍천.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=횡성' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/강원도/1강원도-횡성.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=평창' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/강원도/1강원도-평창.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=원주' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/강원도/1강원도-원주.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=영월' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/강원도/1강원도-영월.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=태백' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/강원도/1강원도-태백.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=정선' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/강원도/1강원도-정선.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=삼척' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/강원도/1강원도-삼척.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=양양' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/강원도/1강원도-양양.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=강릉' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/강원도/1강원도-강릉.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=동해' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/강원도/1강원도-동해.png' alt='' border='0' name='mus18' class='list18' ></a>
</div>
</body>
</html>