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
	top: 295px;
	left: 135px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 230px;
	left: 190px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 205px;
	left: 265px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 185px;
	left: 360px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 230px;
	left: 465px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 325px;
	left: 255px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 360px;
	left: 225px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 400px;
	left: 130px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 480px;
	left: 215px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 555px;
	left: 205px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 610px;
	left: 250px;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	
	$(".list1").on("click",function(){
		var lat = "36.8553798";
		var lng = "127.4361117";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list2").on("click",function(){
		var lat = "36.9396792";
		var lng = "127.6905018";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list3").on("click",function(){
		var lat = "36.9910113";
		var lng = "127.9259497";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list4").on("click",function(){
		var lat = "37.1325821";
		var lng = "128.1909481";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list5").on("click",function(){
		var lat = "36.9845473";
		var lng = "128.3655186";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list6").on("click",function(){
		var lat = "36.8156690";
		var lng = "127.7865791";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list7").on("click",function(){
		var lat = "36.7855019";
		var lng = "127.5816556";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list8").on("click",function(){
		var lat = "36.6391449";
		var lng = "127.4346806";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list9").on("click",function(){
		var lat = "36.4894573";
		var lng = "127.7294827";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list10").on("click",function(){
		var lat = "36.3063646";
		var lng = "127.5712809";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	$(".list11").on("click",function(){
		var lat = "36.1750231";
		var lng = "127.7834302";
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
<script>
 
 $(document).on("ready",function(){
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
	 
	 if("${first}"=="진천군"||"${second}"=="진천군"||"${third}"=="진천군"){ 
		 	mus1off.src='/map/충북/1충북-진천(hot).png';
		 	$('.list1')[0].src='/map/충북/1충북-진천(hot).png';
		}else{
			$('.list1')[0].src='/map/충북/1충북-진천.png';
		}
	 if("${first}"=="음성군"||"${second}"=="음성군"||"${third}"=="음성군"){ 
		 	mus2off.src='/map/충북/1충북-음성(hot).png';
		 	$('.list2')[0].src='/map/충북/1충북-음성(hot).png';
		}else{
			$('.list2')[0].src='/map/충북/1충북-음성.png';
		}
	 if("${first}"=="충주시"||"${second}"=="충주시"||"${third}"=="충주시"){ 
		 	mus3off.src='/map/충북/1충북-충주(hot).png';
		 	$('.list3')[0].src='/map/충북/1충북-충주(hot).png';
		}else{
			$('.list3')[0].src='/map/충북/1충북-충주.png';
		}
	 if("${first}"=="제천시"||"${second}"=="제천시"||"${third}"=="제천시"){ 
		 	mus4off.src='/map/충북/1충북-제천(hot).png';
		 	$('.list4')[0].src='/map/충북/1충북-제천(hot).png';
		}else{
			$('.list4')[0].src='/map/충북/1충북-제천.png';
		}
	 if("${first}"=="단양군"||"${second}"=="단양군"||"${third}"=="단양군"){ 
		 	mus5off.src='/map/충북/1충북-단양(hot).png';
		 	$('.list5')[0].src='/map/충북/1충북-단양(hot).png';
		}else{
			$('.list5')[0].src='/map/충북/1충북-단양.png';
		}
	 if("${first}"=="괴산군"||"${second}"=="괴산군"||"${third}"=="괴산군"){ 
		 	mus6off.src='/map/충북/1충북-괴산(hot).png';
		 	$('.list6')[0].src='/map/충북/1충북-괴산(hot).png';
		}else{
			$('.list6')[0].src='/map/충북/1충북-괴산.png';
		}
	 if("${first}"=="증평군"||"${second}"=="증평군"||"${third}"=="증평군"){ 
		 	mus7off.src='/map/충북/1충북-증평(hot).png';
		 	$('.list7')[0].src='/map/충북/1충북-증평(hot).png';
		}else{
			$('.list7')[0].src='/map/충북/1충북-증평.png';
		}
	 if("${first}"=="청주시"||"${second}"=="청주시"||"${third}"=="청주시"){ 
		 	mus8off.src='/map/충북/1충북-청주(hot).png';
		 	$('.list8')[0].src='/map/충북/1충북-청주(hot).png';
		}else{
			$('.list8')[0].src='/map/충북/1충북-청주.png';
		}
	 if("${first}"=="보은군"||"${second}"=="보은군"||"${third}"=="보은군"){ 
		 	mus9off.src='/map/충북/1충북-보은(hot).png';
		 	$('.list9')[0].src='/map/충북/1충북-보은(hot).png';
		}else{
			$('.list9')[0].src='/map/충북/1충북-보은.png';
		}
	 if("${first}"=="옥천군"||"${second}"=="옥천군"||"${third}"=="옥천군"){ 
		 	mus10off.src='/map/충북/1충북-옥천(hot).png';
		 	$('.list10')[0].src='/map/충북/1충북-옥천(hot).png';
		}else{
			$('.list10')[0].src='/map/충북/1충북-옥천.png';
		}
	 if("${first}"=="영동군"||"${second}"=="영동군"||"${third}"=="영동군"){ 
		 	mus11off.src='/map/충북/1충북-영동(hot).png';
		 	$('.list11')[0].src='/map/충북/1충북-영동(hot).png';
		}else{
			$('.list11')[0].src='/map/충북/1충북-영동.png';
		}
	 
 });
 
</script>
</head>
<body>
	<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">

	<a href='/latlng?lat=36.8553798&lng=127.4361117' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/충북/1충북-진천.png' alt='' border='0' name='mus1' class='list1'  ></a>
	<a href='/latlng?lat=36.9396792&lng=127.6905018' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/충북/1충북-음성.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=36.9910113&lng=127.9259497' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/충북/1충북-충주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=37.1325821&lng=128.1909481' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/충북/1충북-제천.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=36.9845473&lng=128.3655186' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/충북/1충북-단양.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=36.8156690&lng=127.7865791' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/충북/1충북-괴산.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=36.7855019&lng=127.5816556' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/충북/1충북-증평.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=36.6391449&lng=127.4346806' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/충북/1충북-청주.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=36.4894573&lng=127.7294827' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/충북/1충북-보은.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=36.3063646&lng=127.5712809' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/충북/1충북-옥천.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=36.1750231&lng=127.7834302' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/충북/1충북-영동.png' alt='' border='0' name='mus11' class='list11' ></a>
		
	</div>
</body>
</html>