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
	top: 260px;
	left: 20px;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 215px;
	left: 52px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 232px;
	left: 115px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 050px;
	left: 88px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 154px;
	left: 35px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 074px;
	left: 63px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 143px;
	left: 98px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 147px;
	left: 128px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 368px;
	left: 40px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 112px;
	left: 72px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 101px;
	left: 39px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 192px;
	left: 96px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 275px;
	left: 62px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 223px;
	left: 157px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 242px;
	left: 189px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 263px;
	left: 179px;
}
</style>

<script>
//-----------------------------------------------------------------------------------------
/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
mus1on  = new Image( );
mus1off = new Image( );
mus2on  = new Image( );
mus2off = new Image( );
mus3on  = new Image( );
mus3off = new Image( );
mus4on  = new Image( );
mus4off = new Image( );
mus5on  = new Image( );
mus5off = new Image( );
mus6on  = new Image( );
mus6off = new Image( );
mus7on  = new Image( );
mus7off = new Image( );
mus8on  = new Image( );
mus8off = new Image( );
mus9on  = new Image( );
mus9off = new Image( );
mus10on  = new Image( );
mus10off = new Image( );
mus11on  = new Image( );
mus11off = new Image( );
mus12on  = new Image( );
mus12off = new Image( );
mus13on  = new Image( );
mus13off = new Image( );
mus14on  = new Image( );
mus14off = new Image( );
mus15on  = new Image( );
mus15off = new Image( );
mus16on  = new Image( );
mus16off = new Image( );
/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
mus1off.src = './map/m061.gif';
mus2off.src = './map/m063.gif';
mus3off.src = './map/m055.gif';
mus4off.src = './map/m033.gif';
mus5off.src = './map/m041.gif';
mus6off.src = './map/m031.gif';
mus7off.src = './map/m043.gif';
mus8off.src = './map/m054.gif';
mus9off.src = './map/m064.gif';
mus10off.src = './map/m02.gif';
mus11off.src = './map/m032.gif';
mus12off.src = './map/m042.gif';
mus13off.src = './map/m062.gif';
mus14off.src = './map/m053.gif';
mus15off.src = './map/m052.gif';
mus16off.src = './map/m051.gif';
mus1on.src  = './map/m061o.gif';
mus2on.src  = './map/m063o.gif';
mus3on.src  = './map/m055o.gif';
mus4on.src  = './map/m033o.gif';
mus5on.src  = './map/m041o.gif';
mus6on.src  = './map/m031o.gif';
mus7on.src  = './map/m043o.gif';
mus8on.src  = './map/m054o.gif';
mus9on.src  = './map/m064o.gif';
mus10on.src  = './map/m02o.gif';
mus11on.src  = './map/m032o.gif';
mus12on.src  = './map/m042o.gif';
mus13on.src  = './map/m062o.gif';
mus14on.src  = './map/m053o.gif';
mus15on.src  = './map/m052o.gif';
mus16on.src  = './map/m051o.gif';
/* ----------------------------------------------------------------- */
var cMuName="";
/* ----------------아래내용 순서 변경 불가-------------------------------- */
var exx = new Array("","전남","전북","경남","강원","충남","경기","충북","경북","제주","서울","인천","대전","광주","대구","울산","부산");
function mus_on(musName) {
  if(cMuName!=musName) {
     document [musName].src = eval(musName + 'on.src');
  }
}
function mus_off(musName) {
  if(cMuName!=musName)
     document [musName].src = eval(musName + 'off.src');
}

function smenu_click(musName){
     cMuName=musName;
     document [musName].src = eval(musName + 'on.src');
}

</script>

</head>
<body>
	<div
		style="clear: both; position: relative; z-index: 1; top: -35px; left: 25;">
		<a href='./bbs/board.php?bo_table=m101&sca=전남' onfocus='this.blur()'
			onmouseover=mus_on( 'mus1') onmouseout=mus_off(
			'mus1') onclick=smenu_click('mus1')><img src='./map/m061.gif'
			alt='' border='0' name='mus1' class='list1'></a><a
			href='./bbs/board.php?bo_table=m101&sca=전북' onfocus='this.blur()'
			onmouseover=mus_on( 'mus2') onmouseout=mus_off(
			'mus2') onclick=smenu_click('mus2')><img src='./map/m063.gif'
			alt='' border='0' name='mus2' class='list2'></a><a
			href='./bbs/board.php?bo_table=m101&sca=경남' onfocus='this.blur()'
			onmouseover=mus_on( 'mus3') onmouseout=mus_off(
			'mus3') onclick=smenu_click('mus3')><img src='./map/m055.gif'
			alt='' border='0' name='mus3' class='list3'></a><a
			href='./bbs/board.php?bo_table=m101&sca=강원' onfocus='this.blur()'
			onmouseover=mus_on( 'mus4') onmouseout=mus_off(
			'mus4') onclick=smenu_click('mus4')><img src='./map/m033.gif'
			alt='' border='0' name='mus4' class='list4'></a><a
			href='./bbs/board.php?bo_table=m101&sca=충남' onfocus='this.blur()'
			onmouseover=mus_on( 'mus5') onmouseout=mus_off(
			'mus5') onclick=smenu_click('mus5')><img src='./map/m041.gif'
			alt='' border='0' name='mus5' class='list5'></a><a
			href='./bbs/board.php?bo_table=m101&sca=경기' onfocus='this.blur()'
			onmouseover=mus_on( 'mus6') onmouseout=mus_off(
			'mus6') onclick=smenu_click('mus6')><img src='./map/m031.gif'
			alt='' border='0' name='mus6' class='list6'></a><a
			href='./bbs/board.php?bo_table=m101&sca=충북' onfocus='this.blur()'
			onmouseover=mus_on( 'mus7') onmouseout=mus_off(
			'mus7') onclick=smenu_click('mus7')><img src='./map/m043.gif'
			alt='' border='0' name='mus7' class='list7'></a><a
			href='./bbs/board.php?bo_table=m101&sca=경북' onfocus='this.blur()'
			onmouseover=mus_on( 'mus8') onmouseout=mus_off(
			'mus8') onclick=smenu_click('mus8')><img src='./map/m054.gif'
			alt='' border='0' name='mus8' class='list8'></a><a
			href='./bbs/board.php?bo_table=m101&sca=제주' onfocus='this.blur()'
			onmouseover=mus_on( 'mus9') onmouseout=mus_off(
			'mus9') onclick=smenu_click('mus9')><img src='./map/m064.gif'
			alt='' border='0' name='mus9' class='list9'></a><a
			href='./bbs/board.php?bo_table=m101&sca=서울' onfocus='this.blur()'
			onmouseover=mus_on( 'mus10') onmouseout=mus_off(
			'mus10') onclick=smenu_click('mus10')><img src='./map/m02.gif'
			alt='' border='0' name='mus10' class='list10'></a><a
			href='./bbs/board.php?bo_table=m101&sca=인천' onfocus='this.blur()'
			onmouseover=mus_on( 'mus11') onmouseout=mus_off(
			'mus11') onclick=smenu_click('mus11')><img src='./map/m032.gif'
			alt='' border='0' name='mus11' class='list11'></a><a
			href='./bbs/board.php?bo_table=m101&sca=대전' onfocus='this.blur()'
			onmouseover=mus_on( 'mus12') onmouseout=mus_off(
			'mus12') onclick=smenu_click('mus12')><img src='./map/m042.gif'
			alt='' border='0' name='mus12' class='list12'></a><a
			href='./bbs/board.php?bo_table=m101&sca=광주' onfocus='this.blur()'
			onmouseover=mus_on( 'mus13') onmouseout=mus_off(
			'mus13') onclick=smenu_click('mus13')><img src='./map/m062.gif'
			alt='' border='0' name='mus13' class='list13'></a><a
			href='./bbs/board.php?bo_table=m101&sca=대구' onfocus='this.blur()'
			onmouseover=mus_on( 'mus14') onmouseout=mus_off(
			'mus14') onclick=smenu_click('mus14')><img src='./map/m053.gif'
			alt='' border='0' name='mus14' class='list14'></a><a
			href='./bbs/board.php?bo_table=m101&sca=울산' onfocus='this.blur()'
			onmouseover=mus_on( 'mus15') onmouseout=mus_off(
			'mus15') onclick=smenu_click('mus15')><img src='./map/m052.gif'
			alt='' border='0' name='mus15' class='list15'></a><a
			href='./bbs/board.php?bo_table=m101&sca=부산' onfocus='this.blur()'
			onmouseover=mus_on( 'mus16') onmouseout=mus_off(
			'mus16') onclick=smenu_click('mus16')><img src='./map/m051.gif'
			alt='' border='0' name='mus16' class='list16'></a>
	</div>

</body>
</html>