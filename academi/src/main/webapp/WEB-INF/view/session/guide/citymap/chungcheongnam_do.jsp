<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.list0 { clear:both; position: relative; z-index: 1; top: -35px; left: -5px; } 
.list1 { clear:both; position: absolute; z-index: 1; top: 260px; left: 80px;;}
.list2 { clear:both; position: absolute; z-index: 2; top: 235px; left: 155px; } 
.list3 { clear:both; position: absolute; z-index: 4; top: 220px; left: 212px; } 
.list4 { clear:both; position: absolute; z-index: 3; top: 328px; left: 258px; } 
.list5 { clear:both; position: absolute; z-index: 5; top: 268px; left: 363px; } 
.list6 { clear:both; position: absolute; z-index: 6; top: 260px; left: 433px; } 
.list7 { clear:both; position: absolute; z-index: 7; top: 375px; left: 388px; } 
.list8 { clear:both; position: absolute; z-index: 8; top: 378px; left: 204px; } 
.list9 { clear:both; position: absolute; z-index: 9; top: 455px; left: 219px; } 
.list10 { clear:both; position: absolute; z-index: 10; top: 419px; left: 300px; } 
.list11 { clear:both; position: absolute; z-index: 11; top: 493px; left: 302px; } 
.list12 { clear:both; position: absolute; z-index: 12; top: 567px; left: 230px; } 
.list13 { clear:both; position: absolute; z-index: 13; top: 514px; left: 421px; } 
.list14 { clear:both; position: absolute; z-index: 14; top: 507px; left: 487px; } 
.list15 { clear:both; position: absolute; z-index: 15; top: 535px; left: 552px; } 
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	
	$(".list1").on("click",function(){
		var lat = "36.7456421";
		var lng = "126.2980528";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list2").on("click",function(){
		var lat = "36.7844993";
		var lng = "126.4503169";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list3").on("click",function(){
		var lat = "36.8936109";
		var lng = "126.6283278";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list4").on("click",function(){
		var lat = "36.6826123";
		var lng = "126.8483951";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list5").on("click",function(){
		var lat = "36.7897960";
		var lng = "127.0018494";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list6").on("click",function(){
		var lat = "36.7968771";
		var lng = "127.075037";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list7").on("click",function(){
		var lat = "36.4465346";
		var lng = "127.1191534";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list8").on("click",function(){
		var lat = "36.6012300";
		var lng = "126.6607764";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list9").on("click",function(){
		var lat = "36.3331629";
		var lng = "126.6129441";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list10").on("click",function(){
		var lat = "36.4588326";
		var lng = "126.8022116";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list11").on("click",function(){
		var lat = "36.2754406";
		var lng = "126.9101780";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list12").on("click",function(){
		var lat = "36.0803312";
		var lng = "126.6913277";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list13").on("click",function(){
		var lat = "36.1870656";
		var lng = "127.0987453";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list14").on("click",function(){
		var lat = "36.2745577";
		var lng = "127.2485896";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list15").on("click",function(){
		var lat = "36.1086928";
		var lng = "127.4880712";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	
});

	


</script>
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


	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "태안", "서산", "당진", "예산", "아산", "천안", "공주", "홍성",
			"보령", "청양", "부여", "서천", "논산", "계룡", "금산");
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
<script>
 
 $(document).on("ready",function(){
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
	 
	 if("${first}"=="태안군"||"${second}"=="태안군"||"${third}"=="태안군"){ 
		 	mus1off.src='/map/충남/충남-태안(hot).png';
		 	$('.list1')[0].src='/map/충남/충남-태안(hot).png';
		}else{
			$('.list1')[0].src='/map/충남/충남-태안.png';
		}
	 if("${first}"=="서산시"||"${second}"=="서산시"||"${third}"=="서산시"){ 
		 	mus2off.src='/map/충남/충남-서산(변환)(hot).png';
		 	$('.list2')[0].src='/map/충남/충남-서산(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/충남/충남-서산.png';
		}
	 if("${first}"=="당진시"||"${second}"=="당진시"||"${third}"=="당진시"){ 
		 	mus3off.src='/map/충남/충남-당진(hot).png';
		 	$('.list3')[0].src='/map/충남/충남-당진(hot).png';
		}else{
			$('.list3')[0].src='/map/충남/충남-당진.png';
		}
	 if("${first}"=="금산군"||"${second}"=="금산군"||"${third}"=="금산군"){ 
		 	mus4off.src='/map/충남/충남-예산(hot).png';
		 	$('.list4')[0].src='/map/충남/충남-예산(hot).png';
		}else{
			$('.list4')[0].src='/map/충남/충남-예산.png';
		}
	 if("${first}"=="아산시"||"${second}"=="아산시"||"${third}"=="아산시"){ 
		 	mus5off.src='/map/충남/충남-아산(hot).png';
		 	$('.list5')[0].src='/map/충남/충남-아산(hot).png';
		}else{
			$('.list5')[0].src='/map/충남/충남-아산.png';
		}
	 if("${first}"=="천안시"||"${second}"=="천안시"||"${third}"=="천안시"){ 
		 	mus6off.src='/map/충남/충남-천안(hot).png';
		 	$('.list6')[0].src='/map/충남/충남-천안(hot).png';
		}else{
			$('.list6')[0].src='/map/충남/충남-천안.png';
		}
	 if("${first}"=="공주시"||"${second}"=="공주시"||"${third}"=="공주시"){ 
		 	mus7off.src='/map/충남/충남-공주(hot).png';
		 	$('.list7')[0].src='/map/충남/충남-공주(hot).png';
		}else{
			$('.list7')[0].src='/map/충남/충남-공주.png';
		}
	 if("${first}"=="홍성시"||"${second}"=="홍성시"||"${third}"=="홍성시"){ 
		 	mus8off.src='/map/충남/충남-홍성(hot).png';
		 	$('.list8')[0].src='/map/충남/충남-홍성(hot).png';
		}else{
			$('.list8')[0].src='/map/충남/충남-홍성.png';
		}
	 if("${first}"=="보령시"||"${second}"=="보령시"||"${third}"=="보령시"){ 
		 	mus9off.src='/map/충남/충남-보령(hot).png';
		 	$('.list9')[0].src='/map/충남/충남-보령(hot).png';
		}else{
			$('.list9')[0].src='/map/충남/충남-보령.png';
		}
	 if("${first}"=="청양군"||"${second}"=="청양군"||"${third}"=="청양군"){ 
		 	mus10off.src='/map/충남/충남-청양(hot).png';
		 	$('.list10')[0].src='/map/충남/충남-청양(hot).png';
		}else{
			$('.list10')[0].src='/map/충남/충남-청양.png';
		}
	 if("${first}"=="부여군"||"${second}"=="부여군"||"${third}"=="부여군"){ 
		 	mus11off.src='/map/충남/충남-부여(hot).png';
		 	$('.list11')[0].src='/map/충남/충남-부여(hot).png';
		}else{
			$('.list11')[0].src='/map/충남/충남-부여.png';
		}
	 if("${first}"=="서천군"||"${second}"=="서천군"||"${third}"=="서천군"){ 
		 	mus12off.src='/map/충남/충남-서천(hot).png';
		 	$('.list12')[0].src='/map/충남/충남-서천(hot).png';
		}else{
			$('.list12')[0].src='/map/충남/충남-서천.png';
		}
	 if("${first}"=="논산시"||"${second}"=="논산시"||"${third}"=="논산시"){ 
		 	mus13off.src='/map/충남/충남-논산(hot).png';
		 	$('.list13')[0].src='/map/충남/충남-논산(hot).png';
		}else{
			$('.list13')[0].src='/map/충남/충남-논산.png';
		}
	 if("${first}"=="계룡시"||"${second}"=="계룡시"||"${third}"=="계룡시"){ 
		 	mus14off.src='/map/충남/충남-계룡(hot).png';
		 	$('.list14')[0].src='/map/충남/충남-계룡(hot).png';
		}else{
			$('.list14')[0].src='/map/충남/충남-계룡.png';
		}
	 if("${first}"=="금산군"||"${second}"=="금산군"||"${third}"=="금산군"){ 
		 	mus15off.src='/map/충남/충남-금산(hot).png';
		 	$('.list15')[0].src='/map/충남/충남-금산(hot).png';
		}else{
			$('.list15')[0].src='/map/충남/충남-금산.png';
		}	 
 });
 
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