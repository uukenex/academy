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
	top: 100px;
	left: 50px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 180px;
	left: 60px;
}
</style>
<script>
	//-----------------------------------------------------------------------------------------
	/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
	mus1on = new Image();
	mus1off = new Image();
	mus2on = new Image();
	mus2off = new Image();

	/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
	mus1off.src = './map/제주도/제주도-제주.png';
	mus2off.src = './map/제주도/제주도-서귀포.png';

	mus1on.src = './map/제주도/제주도-제주(변환).png';
	mus2on.src = './map/제주도/제주도-서귀포(변환).png';

	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "진천", "음성");
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

	<a href='/latlng?lat=33.4996213&lng=126.5311884' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/제주도/제주도-제주.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=33.2541205&lng=126.5600760' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/제주도/제주도-서귀포.png' alt='' border='0' name='mus2' class='list2' ></a>

</div>
</body>
</html>