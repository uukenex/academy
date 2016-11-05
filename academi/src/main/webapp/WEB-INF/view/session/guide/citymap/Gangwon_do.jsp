<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.list0 { clear:both; position: relative; z-index: 1; top: -35px; left: -5px; } 
.list1 { clear:both; position: absolute; z-index: 1; top: 260px; left: 30px;;}
.list2 { clear:both; position: absolute; z-index: 2; top: 274px; left: 127px; } 
.list3 { clear:both; position: absolute; z-index: 4; top: 258px; left: 250px; } 
.list4 { clear:both; position: absolute; z-index: 3; top: 238px; left: 288px; } 
.list5 { clear:both; position: absolute; z-index: 5; top: 165px; left: 360px; } 
.list6 { clear:both; position: absolute; z-index: 6; top: 290px; left: 420px; } 
.list7 { clear:both; position: absolute; z-index: 8; top: 340px; left: 145px; } 
.list8 { clear:both; position: absolute; z-index: 7; top: 393px; left: 150px; } 
.list9 { clear:both; position: absolute; z-index: 9; top: 478px; left:220px; } 
.list10 { clear:both; position: absolute; z-index: 10; top: 430px; left: 365px; } 
.list11 { clear:both; position: absolute; z-index: 11; top: 540px; left: 215px; } 
.list12 { clear:both; position: absolute; z-index: 12; top: 570px; left: 325px; } 
.list13 { clear:both; position: absolute; z-index: 15; top: 600px; left: 555px; } 
.list13 { clear:both; position: absolute; z-index: 15; top: 595px; left: 565px; } 
.list14 { clear:both; position: absolute; z-index: 14; top: 512px; left: 450px; } 
.list15 { clear:both; position: absolute; z-index: 13; top: 550px; left: 555px; } 
.list16 { clear:both; position: absolute; z-index: 16; top: 310px; left: 415px; }
.list17 { clear:both; position: absolute; z-index: 16; top: 395px; left: 465px; }
.list18 { clear:both; position: absolute; z-index: 16; top: 500px; left: 590px; }
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	//철원
	$(".list1").on("click",function(){
		var lat = "38.1466090";
		var lng = "127.3132256";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//화천
	$(".list2").on("click",function(){
		var lat = "38.1056484";
		var lng = "127.7080492";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//양구
	$(".list3").on("click",function(){
		var lat = "38.1100701";
		var lng = "127.9898825";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//인제
	$(".list4").on("click",function(){
		var lat = "38.0694675";
		var lng = "128.1706991";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//고성
	$(".list5").on("click",function(){
		var lat = "38.3801292";
		var lng = "128.4674385";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//속초
	$(".list6").on("click",function(){
		var lat = "38.2070148";
		var lng = "128.5918488";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//춘천
	$(".list7").on("click",function(){
		var lat = "37.8813153";
		var lng = "127.7299707";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//홍천
	$(".list8").on("click",function(){
		var lat = "37.6969518";
		var lng = "127.8886827";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//횡성
	$(".list9").on("click",function(){
		var lat = "37.4917566";
		var lng = "127.9849295";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//평창
	$(".list10").on("click",function(){
		var lat = "37.3704740";
		var lng = "128.3899769";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//원주
	$(".list11").on("click",function(){
		var lat = "37.3422186";
		var lng = "127.9201621";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//영월
	$(".list12").on("click",function(){
		var lat = "37.1836370";
		var lng = "128.4617535";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//태백
	$(".list13").on("click",function(){
		var lat = "37.1640654";
		var lng = "128.9855649";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//정선
	$(".list14").on("click",function(){
		var lat = "37.3807549";
		var lng = "128.6609505";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//삼척
	$(".list15").on("click",function(){
		var lat = "37.4498683";
		var lng = "129.1652059";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//양양
	$(".list16").on("click",function(){
		var lat = "38.0753925";
		var lng = "128.6188503";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//강릉
	$(".list17").on("click",function(){
		var lat = "37.7518530";
		var lng = "128.8760574";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//동해
	$(".list18").on("click",function(){
		var lat = "37.5247192";
		var lng = "129.1142915";
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
	mus16on = new Image();
	mus16off = new Image();
	mus17on = new Image();
	mus17off = new Image();
	mus18on = new Image();
	mus18off = new Image();



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
<script>
 
 $(document).on("ready",function(){
		/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
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
	 
	 if("${first}"=="철원군"||"${second}"=="철원군"||"${third}"=="철원군"){ 
		 	mus1off.src='/map/강원도/1강원도-철원(hot).png';
		 	$('.list1')[0].src='/map/강원도/1강원도-철원(hot).png';
		}else{
			$('.list1')[0].src='/map/강원도/1강원도-철원.png';
		}
	 if("${first}"=="화천군"||"${second}"=="화천군"||"${third}"=="화천군"){ 
		 	mus2off.src='/map/강원도/1강원도-화천(변환)(hot).png';
		 	$('.list2')[0].src='/map/강원도/1강원도-화천(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/강원도/1강원도-화천.png';
		}
	 if("${first}"=="양구군"||"${second}"=="양구군"||"${third}"=="양구군"){ 
		 	mus3off.src='/map/강원도/1강원도-양구(hot).png';
		 	$('.list3')[0].src='/map/강원도/1강원도-양구(hot).png';
		}else{
			$('.list3')[0].src='/map/강원도/1강원도-양구.png';
		}
	 if("${first}"=="인제군"||"${second}"=="인제군"||"${third}"=="인제군"){ 
		 	mus4off.src='/map/강원도/1강원도-인제(hot).png';
		 	$('.list4')[0].src='/map/강원도/1강원도-인제(hot).png';
		}else{
			$('.list4')[0].src='/map/강원도/1강원도-인제.png';
		}
	 if("${first}"=="고성군"||"${second}"=="고성군"||"${third}"=="고성군"){ 
		 	mus5off.src='/map/강원도/1강원도-고성(hot).png';
		 	$('.list5')[0].src='/map/강원도/1강원도-고성(hot).png';
		}else{
			$('.list5')[0].src='/map/강원도/1강원도-고성.png';
		}
	 if("${first}"=="속초시"||"${second}"=="속초시"||"${third}"=="속초시"){ 
		 	mus6off.src='/map/강원도/1강원도-속초(hot).png';
		 	$('.list6')[0].src='/map/강원도/1강원도-속초(hot).png';
		}else{
			$('.list6')[0].src='/map/강원도/1강원도-속초.png';
		}
	 if("${first}"=="춘천시"||"${second}"=="춘천시"||"${third}"=="춘천시"){ 
		 	mus7off.src='/map/강원도/1강원도-춘천(hot).png';
		 	$('.list7')[0].src='/map/강원도/1강원도-춘천(hot).png';
		}else{
			$('.list7')[0].src='/map/강원도/1강원도-춘천.png';
		}
	 if("${first}"=="홍천군"||"${second}"=="홍천군"||"${third}"=="홍천군"){ 
		 	mus8off.src='/map/강원도/1강원도-홍천(hot).png';
		 	$('.list8')[0].src='/map/강원도/1강원도-홍천(hot).png';
		}else{
			$('.list8')[0].src='/map/강원도/1강원도-홍천.png';
		}
	 if("${first}"=="횡성군"||"${second}"=="횡성군"||"${third}"=="횡성군"){ 
		 	mus9off.src='/map/강원도/1강원도-횡성(hot).png';
		 	$('.list9')[0].src='/map/강원도/1강원도-횡성(hot).png';
		}else{
			$('.list9')[0].src='/map/강원도/1강원도-횡성.png';
		}
	 if("${first}"=="평창군"||"${second}"=="평창군"||"${third}"=="평창군"){ 
		 	mus10off.src='/map/강원도/1강원도-평창(hot).png';
		 	$('.list10')[0].src='/map/강원도/1강원도-평창(hot).png';
		}else{
			$('.list10')[0].src='/map/강원도/1강원도-평창.png';
		}
	 if("${first}"=="원주시"||"${second}"=="원주시"||"${third}"=="원주시"){ 
		 	mus11off.src='/map/강원도/1강원도-원주(hot).png';
		 	$('.list11')[0].src='/map/강원도/1강원도-원주(hot).png';
		}else{
			$('.list11')[0].src='/map/강원도/1강원도-원주.png';
		}
	 if("${first}"=="영월군"||"${second}"=="영월군"||"${third}"=="영월군"){ 
		 	mus12off.src='/map/강원도/1강원도-영월(hot).png';
		 	$('.list12')[0].src='/map/강원도/1강원도-영월(hot).png';
		}else{
			$('.list12')[0].src='/map/강원도/1강원도-영월.png';
		}
	 if("${first}"=="태백시"||"${second}"=="태백시"||"${third}"=="태백시"){ 
		 	mus13off.src='/map/강원도/1강원도-태백(hot).png';
		 	$('.list13')[0].src='/map/강원도/1강원도-태백(hot).png';
		}else{
			$('.list13')[0].src='/map/강원도/1강원도-태백.png';
		}
	 if("${first}"=="정선군"||"${second}"=="정선군"||"${third}"=="정선군"){ 
		 	mus14off.src='/map/강원도/1강원도-정선(hot).png';
		 	$('.list14')[0].src='/map/강원도/1강원도-정선(hot).png';
		}else{
			$('.list14')[0].src='/map/강원도/1강원도-정선.png';
		}
	 if("${first}"=="삼척시"||"${second}"=="삼척시"||"${third}"=="삼척시"){ 
		 	mus15off.src='/map/강원도/1강원도-삼척(hot).png';
		 	$('.list15')[0].src='/map/강원도/1강원도-삼척(hot).png';
		}else{
			$('.list15')[0].src='/map/강원도/1강원도-삼척.png';
		}	 
	 if("${first}"=="양양군"||"${second}"=="양양군"||"${third}"=="양양군"){ 
		 	mus16off.src='/map/강원도/1강원도-양양(hot).png';
		 	$('.list16')[0].src='/map/강원도/1강원도-양양(hot).png';
		}else{
			$('.list16')[0].src='/map/강원도/1강원도-양양.png';
		}	 
	 if("${first}"=="강릉시"||"${second}"=="강릉시"||"${third}"=="강릉시"){ 
		 	mus17off.src='/map/강원도/1강원도-강릉(hot).png';
		 	$('.list17')[0].src='/map/강원도/1강원도-강릉(hot).png';
		}else{
			$('.list17')[0].src='/map/강원도/1강원도-강릉.png';
		}	 
	 if("${first}"=="동해시"||"${second}"=="동해시"||"${third}"=="동해시"){ 
		 	mus18off.src='/map/강원도/1강원도-동해(hot).png';
		 	$('.list18')[0].src='/map/강원도/1강원도-동해(hot).png';
		}else{
			$('.list18')[0].src='/map/강원도/1강원도-동해.png';
		}	 
 });
 
 </script>
</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">


	<a href='/latlng?lat=38.1466090&lng=127.3132256' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/강원도/1강원도-철원.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=38.1056484&lng=127.7080492' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/강원도/1강원도-화천.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=38.1100701&lng=127.9898825' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/강원도/1강원도-양구.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=38.0694675&lng=128.1706991' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/강원도/1강원도-인제.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=38.3801292&lng=128.4674385' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/강원도/1강원도-고성.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=38.2070148&lng=128.5918488' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/강원도/1강원도-속초.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=37.8813153&lng=127.7299707' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/강원도/1강원도-춘천.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=37.6969518&lng=127.8886827' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/강원도/1강원도-홍천.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=37.4917566&lng=127.9849295' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/강원도/1강원도-횡성.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=37.3704740&lng=128.3899769' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/강원도/1강원도-평창.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=37.3422186&lng=127.9201621' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/강원도/1강원도-원주.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=37.1836370&lng=128.4617535' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/강원도/1강원도-영월.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=37.1640654&lng=128.9855649' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/강원도/1강원도-태백.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=37.3807549&lng=128.6609505' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/강원도/1강원도-정선.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='/latlng?lat=37.4498683&lng=129.1652059' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/강원도/1강원도-삼척.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='/latlng?lat=38.0753925&lng=128.6188503' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/강원도/1강원도-양양.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='/latlng?lat=37.7518530&lng=128.8760574' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/강원도/1강원도-강릉.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='/latlng?lat=37.5247192&lng=129.1142915' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/강원도/1강원도-동해.png' alt='' border='0' name='mus18' class='list18' ></a>


</div>
</body>
</html>