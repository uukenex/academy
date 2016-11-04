<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.list0 { clear:both; position: relative; z-index: 1; top: -35px; left: -5px; } 
.list1 { clear:both; position: absolute; z-index: 3; top: 270px; left: 180px;;}
.list2 { clear:both; position: absolute; z-index: 2; top: 197px; left: 200px; } 
.list3 { clear:both; position: absolute; z-index: 4; top: 290px; left: 231px; } 
.list4 { clear:both; position: absolute; z-index: 1; top: 143px; left: 274px; } 
.list5 { clear:both; position: absolute; z-index: 5; top: 388px; left: 147px; } 
.list6 { clear:both; position: absolute; z-index: 6; top: 358px; left: 298px; } 
.list7 { clear:both; position: absolute; z-index: 8; top: 470px; left: 288px; } 
.list8 { clear:both; position: absolute; z-index: 7; top: 372px; left: 362px; } 
.list9 { clear:both; position: absolute; z-index: 15; top: 550px; left:435px; } 
.list10 { clear:both; position: absolute; z-index: 10; top: 533px; left: 187px; } 
.list11 { clear:both; position: absolute; z-index: 11; top: 638px; left: 163px; } 
.list12 { clear:both; position: absolute; z-index: 12; top: 675px; left: 215px; } 
.list13 { clear:both; position: absolute; z-index: 9; top: 570px; left: 335px; } 
.list14 { clear:both; position: absolute; z-index: 14; top: 595px; left: 515px; } 
.list15 { clear:both; position: absolute; z-index: 13; top: 652px; left: 495px; } 
.list16 { clear:both; position: absolute; z-index: 16; top: 770px; left: 460px; }


</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	
	$("#list1").on("click",function(){
		var lat = "37.4562557";
		var lng = "126.7052062";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$("#list3").on("click",function(){
		var lat = "37.5665350";
		var lng = "126.9779692";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$("#list7").on("click",function(){
		var lat = "36.3504119";
		var lng = "127.3845475";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$("#list9").on("click",function(){
		var lat = "35.8714354";
		var lng = "128.6014450";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$("#list12").on("click",function(){
		var lat = "35.1595454";
		var lng = "126.8526012";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$("#list14").on("click",function(){
		var lat = "35.5383773";
		var lng = "129.3113596";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$("#list15").on("click",function(){
		var lat = "35.1795543";
		var lng = "129.0756416";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	
});

	


</script>
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

<script>
 
 $(document).on("ready",function(){
		
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
	 
	 if("${firstDo}"=="인천" ||"${secondDo}"=="인천"||"${thirdDo}"=="인천"){ 
		 	mus1off.src='/map/domap/인천(hot).png';
		 	$('.list1')[0].src='/map/domap/인천(hot).png';
		}else{
			$('.list1')[0].src='/map/domap/인천.png';
		}
	 
	 if("${firstDo}"=="경기도" ||"${secondDo}"=="경기도"||"${thirdDo}"=="경기도"){ 
		 	mus2off.src='/map/domap/경기도(hot).png';
		 	$('.list2')[0].src='/map/domap/경기도(hot).png';
		}else{
			$('.list2')[0].src='/map/domap/경기도.png';
		}
	 if("${firstDo}"=="서울" ||"${secondDo}"=="서울"||"${thirdDo}"=="서울"){ 
		 	mus3off.src='/map/domap/서울(hot).png';
		 	$('.list3')[0].src='/map/domap/서울(hot).png';
		}else{
			$('.list3')[0].src='/map/domap/서울.png';
		}
	 if("${firstDo}"=="강원도" ||"${secondDo}"=="강원도"||"${thirdDo}"=="강원도"){ 
		 	mus4off.src='/map/domap/강원도(hot).png';
		 	$('.list4')[0].src='/map/domap/강원도(hot).png';
		}else{
			$('.list4')[0].src='/map/domap/강원도.png';
		}
	 if("${firstDo}"=="충청남도" ||"${secondDo}"=="충청남도"||"${thirdDo}"=="충청남도"){ 
		 	mus5off.src='/map/domap/충청남도(hot).png';
		 	$('.list5')[0].src='/map/domap/충청남도(hot).png';
		}else{
			$('.list5')[0].src='/map/domap/충청남도.png';
		}
	 if("${firstDo}"=="충청북도" ||"${secondDo}"=="충청북도"||"${thirdDo}"=="충청북도"){ 
		 	mus6off.src='/map/domap/충청북도(hot).png';
		 	$('.list6')[0].src='/map/domap/충청북도(hot).png';
		}else{
			$('.list6')[0].src='/map/domap/충청북도.png';
		}
	 if("${firstDo}"=="대전" ||"${secondDo}"=="대전"||"${thirdDo}"=="대전"){ 
		 	mus7off.src='/map/domap/대전(hot).png';
		 	$('.list7')[0].src='/map/domap/대전(hot).png';
		}else{
			$('.list7')[0].src='/map/domap/대전.png';
		}
	 if("${firstDo}"=="경상북도" ||"${secondDo}"=="경상북도"||"${thirdDo}"=="경상북도"){ 
		 	mus8off.src='/map/domap/경상북도(hot).png';
		 	$('.list8')[0].src='/map/domap/경상북도(hot).png';
		}else{
			$('.list8')[0].src='/map/domap/경상북도.png';
		}
	 if("${firstDo}"=="대구" ||"${secondDo}"=="대구"||"${thirdDo}"=="대구"){ 
		 	mus9off.src='/map/domap/대구(hot).png';
		 	$('.list9')[0].src='/map/domap/대구(hot).png';
		}else{
			$('.list9')[0].src='/map/domap/대구.png';
		}
	 if("${firstDo}"=="전라북도" ||"${secondDo}"=="전라북도"||"${thirdDo}"=="전라북도"){ 
		 	mus10off.src='/map/domap/전라북도(hot).png';
		 	$('.list10')[0].src='/map/domap/전라북도(hot).png';
		}else{
			$('.list10')[0].src='/map/domap/전라북도.png';
		}
	 if("${firstDo}"=="전라남도" ||"${secondDo}"=="전라남도"||"${thirdDo}"=="전라남도"){ 
		 	mus11off.src='/map/domap/전라남도(hot).png';
		 	$('.list11')[0].src='/map/domap/전라남도(hot).png';
		}else{
			$('.list11')[0].src='/map/domap/전라남도.png';
		}
	 if("${firstDo}"=="광주" ||"${secondDo}"=="광주"||"${thirdDo}"=="광주"){ 
		 	mus12off.src='/map/domap/광주(hot).png';
		 	$('.list12')[0].src='/map/domap/광주(hot).png';
		}else{
			$('.list12')[0].src='/map/domap/광주.png';
		}
	 if("${firstDo}"=="경상남도" ||"${secondDo}"=="경상남도"||"${thirdDo}"=="경상남도"){ 
		 	mus13off.src='/map/domap/경상남도(hot).png';
		 	$('.list13')[0].src='/map/domap/경상남도(hot).png';
		}else{
			$('.list13')[0].src='/map/domap/경상남도.png';
		}
	 if("${firstDo}"=="울산" ||"${secondDo}"=="울산"||"${thirdDo}"=="울산"){ 
		 	mus14off.src='/map/domap/울산(hot).png';
		 	$('.list14')[0].src='/map/domap/울산(hot).png';
		}else{
			$('.list14')[0].src='/map/domap/울산.png';
		}
	 if("${firstDo}"=="부산" ||"${secondDo}"=="부산"||"${thirdDo}"=="부산"){ 
		 	mus15off.src='/map/domap/부산(hot).png';
		 	$('.list15')[0].src='/map/domap/부산(hot).png';
		}else{
			$('.list15')[0].src='/map/domap/부산.png';
		}
	 if("${firstDo}"=="제주도" ||"${secondDo}"=="제주도"||"${thirdDo}"=="제주도"){ 
		 	mus16off.src='/map/domap/제주도(hot).png';
		 	$('.list16')[0].src='/map/domap/제주도(hot).png';
		}else{
			$('.list16')[0].src='/map/domap/제주도.png';
		}
	 if("${firstDo}"=="인천" ||"${secondDo}"=="인천"||"${thirdDo}"=="인천"){ 
		 	mus1off.src='/map/domap/인천(hot).png';
		 	$('.list1')[0].src='/map/domap/인천(hot).png';
		}else{
			$('.list1')[0].src='/map/domap/인천.png';
		}
	 if("${firstDo}"=="인천" ||"${secondDo}"=="인천"||"${thirdDo}"=="인천"){ 
		 	mus1off.src='/map/domap/인천(hot).png';
		 	$('.list1')[0].src='/map/domap/인천(hot).png';
		}else{
			$('.list1')[0].src='/map/domap/인천.png';
		}
	 
 });
 
</script>

</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">

<a href='#' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
<img src='./map/domap/인천.png' alt='' border='0' name='mus1' class='list1' id="list1"></a>
<a href='./gyeonggido' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
<img src='./map/domap/경기도.png' alt='' border='0' name='mus2' class='list2' id="list2"></a>
<a href='#' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
<img src='./map/domap/서울.png' alt='' border='0' name='mus3' class='list3' id="list3"></a>
<a href='./Gangwondo' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
<img src='./map/domap/강원도.png' alt='' border='0' name='mus4' class='list4' id="list4"></a>
<a href='./chungcheongnamdo' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
<img src='./map/domap/충청남도.png' alt='' border='0' name='mus5' class='list5' id="list5"></a>
<a href='./chungcheongbukdo' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
<img src='./map/domap/충청북도.png' alt='' border='0' name='mus6' class='list6' id="list6"></a>
<a href='#' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
<img src='./map/domap/대전.png' alt='' border='0' name='mus7' class='list7' id="list7"></a>
<a href='./Gyeongsangbukdo' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
<img src='./map/domap/경상북도.png' alt='' border='0' name='mus8' class='list8' id="list8"></a>
<a href='/#' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
<img src='./map/domap/대구.png' alt='' border='0' name='mus9' class='list9' id="list9"></a>
<a href='./Jeollabukdo' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
<img src='./map/domap/전라북도.png' alt='' border='0' name='mus10' class='list10' id="list10"></a>
<a href='./Jeollanamdo' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
<img src='./map/domap/전라남도.png' alt='' border='0' name='mus11' class='list11' id="list11"></a>
<a href='#' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
<img src='./map/domap/광주.png' alt='' border='0' name='mus12' class='list12' id="list12"></a>
<a href='./Gyeongsangnamdo' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
<img src='./map/domap/경상남도.png' alt='' border='0' name='mus13' class='list13' id="list13"></a>
<a href='#' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
<img src='./map/domap/울산.png' alt='' border='0' name='mus14' class='list14' id="list14"></a>
<a href='#' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
<img src='./map/domap/부산.png' alt='' border='0' name='mus15' class='list15' id="list15"></a>
<a href='./jejudo' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
<img src='./map/domap/제주도.png' alt='' border='0' name='mus16' class='list16' id="list16"></a>

</div>
</body>


</html>