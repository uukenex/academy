<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.list0 { clear:both; position: relative; z-index: 1; top: -35px; left: -5px; } 
.list1 { clear:both; position: absolute; z-index: 2; top: 200px; left: 120px;;}
.list2 { clear:both; position: absolute; z-index: 1; top: 127px; left: 140px; } 
.list3 { clear:both; position: absolute; z-index: 4; top: 220px; left: 171px; } 
.list4 { clear:both; position: absolute; z-index: 3; top: 73px; left: 214px; } 
.list5 { clear:both; position: absolute; z-index: 5; top: 318px; left: 87px; } 
.list6 { clear:both; position: absolute; z-index: 6; top: 288px; left: 238px; } 
.list7 { clear:both; position: absolute; z-index: 8; top: 400px; left: 228px; } 
.list8 { clear:both; position: absolute; z-index: 7; top: 302px; left: 302px; } 
.list9 { clear:both; position: absolute; z-index: 9; top: 480px; left:375px; } 
.list10 { clear:both; position: absolute; z-index: 10; top: 463px; left: 127px; } 
.list11 { clear:both; position: absolute; z-index: 11; top: 568px; left: 103px; } 
.list12 { clear:both; position: absolute; z-index: 12; top: 605px; left: 155px; } 
.list13 { clear:both; position: absolute; z-index: 15; top: 500px; left: 275px; } 
.list14 { clear:both; position: absolute; z-index: 14; top: 525px; left: 455px; } 
.list15 { clear:both; position: absolute; z-index: 13; top: 582px; left: 435px; } 
.list16 { clear:both; position: absolute; z-index: 16; top: 700px; left: 400px; }


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
mus1off.src = './map/domap/인천.png';
mus2off.src = './map/domap/경기도.png';
mus3off.src = './map/domap/서울.png';
mus4off.src = './map/domap/강원도.png';
mus5off.src = './map/domap/충청남도.png';
mus6off.src = './map/domap/충청북도.png';
mus7off.src = './map/domap/대전.png';
mus8off.src = './map/domap/경상북도.png';
mus9off.src = './map/domap/대구.png';
mus10off.src = './map/domap/전라북도.png';
mus11off.src = './map/domap/전라남도.png';
mus12off.src = './map/domap/광주.png';
mus13off.src = './map/domap/경상남도.png';
mus14off.src = './map/domap/울산.png';
mus15off.src = './map/domap/부산.png';
mus16off.src = './map/domap/제주도.png';

mus1on.src  = './map/domap/인천(변환).png';
mus2on.src  = './map/domap/경기도(변환).png';
mus3on.src  = './map/domap/서울(변환).png';
mus4on.src  = './map/domap/강원도(변환).png';
mus5on.src  = './map/domap/충청남도(변환).png';
mus6on.src  = './map/domap/충청북도(변환).png';
mus7on.src  = './map/domap/대전(변환).png';
mus8on.src  = './map/domap/경상북도(변환).png';
mus9on.src  = './map/domap/대구(변환).png';
mus10on.src  = './map/domap/전라북도(변환).png';
mus11on.src  = './map/domap/전라남도(변환).png';
mus12on.src  = './map/domap/광주(변환).png';
mus13on.src  = './map/domap/경상남도(변환).png';
mus14on.src  = './map/domap/울산(변환).png';
mus15on.src  = './map/domap/부산(변환).png';
mus16on.src  = './map/domap/제주도(변환).png';


/* ----------------------------------------------------------------- */
var cMuName="";
/* ----------------아래내용 순서 변경 불가-------------------------------- */
var exx = new Array("","인천","경기도","서울","강원도","충청남도","충청북도","대전","경상북도","대구","전라북도","전라남도","광주","경상남도","울산","부산","제주도");
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
<script language="javascript">
<%-- 
window.onload = function(){
	for (i=1; i<2; i++) {
		if ('<%=request.getParameter("req")%>'==exx[i]) {
			cMuName = 'mus'+i;
			document [cMuName].src = eval(cMuName + 'on.src');
			onclick=smenu_click(cMuName);
		}
	}
}
 --%>
</script>

</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">

<a href='/latlng?lat=37.4562557&lng=126.7052062' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
<img src='./map/domap/인천.png' alt='' border='0' name='mus1' class='list1' ></a>
<a href='./gyeonggido' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
<img src='./map/domap/경기도.png' alt='' border='0' name='mus2' class='list2' ></a>
<a href='/latlng?lat=37.5665350&lng=126.9779692' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
<img src='./map/domap/서울.png' alt='' border='0' name='mus3' class='list3' ></a>
<a href='./Gangwondo' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
<img src='./map/domap/강원도.png' alt='' border='0' name='mus4' class='list4' ></a>
<a href='./chungcheongnamdo' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
<img src='./map/domap/충청남도.png' alt='' border='0' name='mus5' class='list5' ></a>
<a href='./chungcheongbukdo' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
<img src='./map/domap/충청북도.png' alt='' border='0' name='mus6' class='list6' ></a>
<a href='/latlng?lat=36.3504119&lng=127.3845475' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
<img src='./map/domap/대전.png' alt='' border='0' name='mus7' class='list7' ></a>
<a href='./Gyeongsangbukdo' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
<img src='./map/domap/경상북도.png' alt='' border='0' name='mus8' class='list8' ></a>
<a href='/latlng?lat=35.8714354&lng=128.6014450' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
<img src='./map/domap/대구.png' alt='' border='0' name='mus9' class='list9' ></a>
<a href='./Jeollabukdo' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
<img src='./map/domap/전라북도.png' alt='' border='0' name='mus10' class='list10' ></a>
<a href='./Jeollanamdo' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
<img src='./map/domap/전라남도.png' alt='' border='0' name='mus11' class='list11' ></a>
<a href='/latlng?lat=35.1595454&lng=126.8526012' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
<img src='./map/domap/광주.png' alt='' border='0' name='mus12' class='list12' ></a>
<a href='./Gyeongsangnamdo' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
<img src='./map/domap/경상남도.png' alt='' border='0' name='mus13' class='list13' ></a>
<a href='/latlng?lat=35.5383773&lng=129.3113596' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
<img src='./map/domap/울산.png' alt='' border='0' name='mus14' class='list14' ></a>
<a href='/latlng?lat=35.1795543&lng=129.0756416' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
<img src='./map/domap/부산.png' alt='' border='0' name='mus15' class='list15' ></a>
<a href='./jejudo' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
<img src='./map/domap/제주도.png' alt='' border='0' name='mus16' class='list16' ></a>

</div>
</body>


</html>