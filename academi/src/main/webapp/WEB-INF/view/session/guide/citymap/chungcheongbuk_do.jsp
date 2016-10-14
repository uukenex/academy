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
	z-index: 3;
	top: 195px;
	left: 35px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 130px;
	left: 90px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 105px;
	left: 165px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 85px;
	left: 260px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 130px;
	left: 365px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 225px;
	left: 155px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 260px;
	left: 125px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 300px;
	left: 30px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 380px;
	left: 115px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 455px;
	left: 105px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 510px;
	left: 150px;
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

	/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
	mus1off.src = './map/충북/1충북-진천.png';
	mus2off.src = './map/충북/1충북-음성.png';
	mus3off.src = './map/충북/1충북-충주.png';
	mus4off.src = './map/충북/1충북-제천.png';
	mus5off.src = './map/충북/1충북-단양.png';
	mus6off.src = './map/충북/1충북-괴산.png';
	mus7off.src = './map/충북/1충북-증평.png';
	mus8off.src = './map/충북/1충북-청주.png';
	mus9off.src = './map/충북/1충북-보은.png';
	mus10off.src = './map/충북/1충북-옥천.png';
	mus11off.src = './map/충북/1충북-영동.png';

	mus1on.src = './map/충북/1충북-진천(변환).png';
	mus2on.src = './map/충북/1충북-음성(변환).png';
	mus3on.src = './map/충북/1충북-충주(변환).png';
	mus4on.src = './map/충북/1충북-제천(변환).png';
	mus5on.src = './map/충북/1충북-단양(변환).png';
	mus6on.src = './map/충북/1충북-괴산(변환).png';
	mus7on.src = './map/충북/1충북-증평(변환).png';
	mus8on.src = './map/충북/1충북-청주(변환).png';
	mus9on.src = './map/충북/1충북-보은(변환).png';
	mus10on.src = './map/충북/1충북-옥천(변환).png';
	mus11on.src = './map/충북/1충북-영동(변환).png';

	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "진천", "음성", "충주", "제천", "단양", "괴산", "증평", "청주",
			"보은", "옥천", "영동");
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

	<a href='./map/bbs/board.php?bo_table=m101&sca=진천' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/충북/1충북-진천.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=음성' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/충북/1충북-음성.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=충주' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/충북/1충북-충주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=제천' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/충북/1충북-제천.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=단양' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/충북/1충북-단양.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=괴산' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/충북/1충북-괴산.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=증평' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/충북/1충북-증평.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=청주' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/충북/1충북-청주.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=보은' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/충북/1충북-보은.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=옥천' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/충북/1충북-옥천.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='./map/bbs/board.php?bo_table=m101&sca=영동' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/충북/1충북-영동.png' alt='' border='0' name='mus11' class='list11' ></a>
		
	</div>
</body>
</html>