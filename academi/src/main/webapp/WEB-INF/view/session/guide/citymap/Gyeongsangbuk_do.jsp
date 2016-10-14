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

	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "문경", "예천", "영주", "봉화", "울진", "영양", "안동", "상주",
			"의성", "청송", "영덕", "포항", "경주", "영천", "경산", "청도", "구미", "군위", "칠곡",
			"김천", "성주", "고령", "수원", "의왕", "과천", "안양", "군포", "안산", "시흥", "광명",
			"부천");
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

	<a href='./map/bbs/board.php?bo_table=m101&sca=문경' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/경북/1경북-문경.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=예천' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/경북/1경북-예천.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=영주' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/경북/1경북-영주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=봉화' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/경북/1경북-봉화.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=울진' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/경북/1경북-울진.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=영양' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/경북/1경북-영양.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=안동' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/경북/1경북-안동.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=상주' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/경북/1경북-상주.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=의성' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/경북/1경북-의성.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=청송' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/경북/1경북-청송.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=영덕' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/경북/1경북-영덕.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=포항' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/경북/1경북-포항.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=경주' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/경북/1경북-경주.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=영천' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/경북/1경북-영천.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=경산' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/경북/1경북-경산.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=청도' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/경북/1경북-청도.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=구미' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/경북/1경북-구미.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=군위' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/경북/1경북-군위.png' alt='' border='0' name='mus18' class='list18' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=칠곡' onfocus='this.blur()' onmouseover=mus_on('mus19') onmouseout=mus_off('mus19') onclick=smenu_click('mus19')>
	<img src='./map/경북/1경북-칠곡.png' alt='' border='0' name='mus19' class='list19' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=김천' onfocus='this.blur()' onmouseover=mus_on('mus20') onmouseout=mus_off('mus20') onclick=smenu_click('mus20')>
	<img src='./map/경북/1경북-김천.png' alt='' border='0' name='mus20' class='list20' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=성주' onfocus='this.blur()' onmouseover=mus_on('mus21') onmouseout=mus_off('mus21') onclick=smenu_click('mus21')>
	<img src='./map/경북/1경북-성주.png' alt='' border='0' name='mus21' class='list21' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=고령' onfocus='this.blur()' onmouseover=mus_on('mus22') onmouseout=mus_off('mus22') onclick=smenu_click('mus22')>
	<img src='./map/경북/1경북-고령.png' alt='' border='0' name='mus22' class='list22' ></a>
	
	</div>
</body>
</html>