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
	top: 250px;
	left: 60px;;
}

.list2 {
	clear: both;
	position: absolute;
	z-index: 2;
	top: 140px;
	left: 120px;
}

.list3 {
	clear: both;
	position: absolute;
	z-index: 3;
	top: 293px;
	left: 195px;
}

.list4 {
	clear: both;
	position: absolute;
	z-index: 4;
	top: 270px;
	left: 250px;
}

.list5 {
	clear: both;
	position: absolute;
	z-index: 5;
	top: 180px;
	left: 310px;
}

.list6 {
	clear: both;
	position: absolute;
	z-index: 6;
	top: 245px;
	left: 420px;
}

.list7 {
	clear: both;
	position: absolute;
	z-index: 8;
	top: 365px;
	left: -20px;
}

.list8 {
	clear: both;
	position: absolute;
	z-index: 7;
	top: 380px;
	left: 60px;
}

.list9 {
	clear: both;
	position: absolute;
	z-index: 10;
	top: 370px;
	left: 250px;
}

.list10 {
	clear: both;
	position: absolute;
	z-index: 9;
	top: 370px;
	left: 295px;
}

.list11 {
	clear: both;
	position: absolute;
	z-index: 11;
	top: 425px;
	left: 450px;
}

.list12 {
	clear: both;
	position: absolute;
	z-index: 12;
	top: 485px;
	left: 325px;
}

.list13 {
	clear: both;
	position: absolute;
	z-index: 13;
	top: 530px;
	left: 495px;
}

.list14 {
	clear: both;
	position: absolute;
	z-index: 14;
	top: 460px;
	left: 340px;
}

.list15 {
	clear: both;
	position: absolute;
	z-index: 15;
	top: 440px;
	left: 320px;
}

.list16 {
	clear: both;
	position: absolute;
	z-index: 16;
	top: 500px;
	left: 260px;
}

.list17 {
	clear: both;
	position: absolute;
	z-index: 17;
	top: 560px;
	left: 250px;
}

.list18 {
	clear: both;
	position: absolute;
	z-index: 18;
	top: 570px;
	left: 460px;
}

.list19 {
	clear: both;
	position: absolute;
	z-index: 19;
	top: 660px;
	left: 310px;
}

.list20 {
	clear: both;
	position: absolute;
	z-index: 20;
	top: 590px;
	left: 15px;
}

.list21 {
	clear: both;
	position: absolute;
	z-index: 21;
	top: 660px;
	left: 110px;
}

.list22 {
	clear: both;
	position: absolute;
	z-index: 22;
	top: 630px;
	left: 245px;
}

.list23 {
	clear: both;
	position: absolute;
	z-index: 23;
	top: 565px;
	left: 195px;
}

.list24 {
	clear: both;
	position: absolute;
	z-index: 24;
	top: 535px;
	left: 205px;
}

.list25 {
	clear: both;
	position: absolute;
	z-index: 25;
	top: 515px;
	left: 220px;
}

.list26 {
	clear: both;
	position: absolute;
	z-index: 26;
	top: 525px;
	left: 175px;
}

.list27 {
	clear: both;
	position: absolute;
	z-index: 28;
	top: 560px;
	left: 180px;
}

.list28 {
	clear: both;
	position: absolute;
	z-index: 27;
	top: 555px;
	left: 80px;
}

.list29 {
	clear: both;
	position: absolute;
	z-index: 29;
	top: 515px;
	left: 65px;
}

.list30 {
	clear: both;
	position: absolute;
	z-index: 30;
	top: 510px;
	left: 150px;
}

.list31 {
	clear: both;
	position: absolute;
	z-index: 31;
	top: 475px;
	left: 100px;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script>

$(document).ready(function(){
	
	//파주
	$(".list1").on("click",function(){
		var lat = "37.7598688";
		var lng = "126.7801781";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//연천
	$(".list2").on("click",function(){
		var lat = "38.0964438";
		var lng = "127.0748335";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//양주
	$(".list3").on("click",function(){
		var lat = "37.7852875";
		var lng = "127.0458453";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//동두천
	$(".list4").on("click",function(){
		var lat = "37.9034112";
		var lng = "127.0605075";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//포천
	$(".list5").on("click",function(){
		var lat = "37.8949148";
		var lng = "127.2003551";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//가평
	$(".list6").on("click",function(){
		var lat = "37.8315403";
		var lng = "127.5098827";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//김포
	$(".list7").on("click",function(){
		var lat = "37.6152464";
		var lng = "126.7156325";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//고양
	$(".list8").on("click",function(){
		var lat = "37.6559448";
		var lng = "126.7627806";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//의정부
	$(".list9").on("click",function(){
		var lat = "37.7380980";
		var lng = "127.0336819";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//남양주
	$(".list10").on("click",function(){
		var lat = "37.6360028";
		var lng = "127.2165279";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//양평
	$(".list11").on("click",function(){
		var lat = "37.4912195";
		var lng = "127.4875607";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//광주
	$(".list12").on("click",function(){
		var lat = "37.4171413";
		var lng = "127.2561413";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//여주
	$(".list13").on("click",function(){
		var lat = "37.2980237";
		var lng = "127.6371628";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//하남
	$(".list14").on("click",function(){
		var lat = "37.5392646";
		var lng = "127.2148919";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//구리
	$(".list15").on("click",function(){
		var lat = "37.5943124";
		var lng = "127.1295646";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//성남
	$(".list16").on("click",function(){
		var lat = "37.4002293";
		var lng = "127.0709103";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//용인
	$(".list17").on("click",function(){
		var lat = "37.2839294";
		var lng = "127.0762603";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//이천
	$(".list18").on("click",function(){
		var lat = "37.2719952";
		var lng = "127.4348221";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//안성
	$(".list19").on("click",function(){
		var lat = "37.0079695";
		var lng = "127.2796786";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//화성
	$(".list20").on("click",function(){
		var lat = "37.1994932";
		var lng = "126.8311887";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//평택
	$(".list21").on("click",function(){
		var lat = "36.9921075";
		var lng = "127.1129451";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//오산
	$(".list22").on("click",function(){
		var lat = "37.1498096";
		var lng = "127.0772212";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//수원
	$(".list23").on("click",function(){
		var lat = "37.2787948";
		var lng = "126.9908306";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//의왕
	$(".list24").on("click",function(){
		var lat = "37.3447010";
		var lng = "126.9683104";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//과천
	$(".list25").on("click",function(){
		var lat = "37.4292460";
		var lng = "126.9874451";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//안양
	$(".list26").on("click",function(){
		var lat = "37.3885448";
		var lng = "126.9020306";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//군포
	$(".list27").on("click",function(){
		var lat = "37.3616703";
		var lng = "126.9351741";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//안산
	$(".list28").on("click",function(){
		var lat = "37.3201294";
		var lng = "126.7320103";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//시흥
	$(".list29").on("click",function(){
		var lat = "37.3798877";
		var lng = "126.8031025";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//광명
	$(".list30").on("click",function(){
		var lat = "37.4784878";
		var lng = "126.8642888";
		parent.jQuery.fancybox.close();
		parent.location.href="/mapMain2?lat="+lat+"&lng="+lng;
	});
	//부천
	$(".list31").on("click",function(){
		var lat = "37.5004448";
		var lng = "126.7499806";
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
	mus19on = new Image();
	mus19off = new Image();
	mus20on = new Image();
	mus20off = new Image();
	mus21on = new Image();
	mus21off = new Image();
	mus22on = new Image();
	mus22off = new Image();
	mus23on = new Image();
	mus23off = new Image();
	mus24on = new Image();
	mus24off = new Image();
	mus25on = new Image();
	mus25off = new Image();
	mus26on = new Image();
	mus26off = new Image();
	mus27on = new Image();
	mus27off = new Image();
	mus28on = new Image();
	mus28off = new Image();
	mus29on = new Image();
	mus29off = new Image();
	mus30on = new Image();
	mus30off = new Image();
	mus31on = new Image();
	mus31off = new Image();


	/* ----------------------------------------------------------------- */
	var cMuName = "";
	/* ----------------아래내용 순서 변경 불가-------------------------------- */
	var exx = new Array("", "파주", "연천", "양주", "동두천", "포천", "가평", "김포", "고양",
			"의정부", "남양주", "양평", "광주", "여주", "하남", "구리", "성남", "용인", "이천", "안성",
			"화성", "평택", "오산", "수원", "의왕", "과천", "안양", "군포", "안산", "시흥", "광명",
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
<script>
 
 $(document).on("ready",function(){
		/* 메뉴를 늘이거나 줄일때 추가~삭제하세요. 쌍으로 구성되어있습니다. */
		mus1off.src = './map/경기도/1경기도-파주.png';
		mus2off.src = './map/경기도/1경기도-연천.png';
		mus3off.src = './map/경기도/1경기도-양주.png';
		mus4off.src = './map/경기도/1경기도-동두천.png';
		mus5off.src = './map/경기도/1경기도-포천.png';
		mus6off.src = './map/경기도/1경기도-가평.png';
		mus7off.src = './map/경기도/1경기도-김포.png';
		mus8off.src = './map/경기도/1경기도-고양.png';
		mus9off.src = './map/경기도/1경기도-의정부.png';
		mus10off.src = './map/경기도/1경기도-남양주.png';
		mus11off.src = './map/경기도/1경기도-양평.png';
		mus12off.src = './map/경기도/1경기도-광주.png';
		mus13off.src = './map/경기도/1경기도-여주.png';
		mus14off.src = './map/경기도/1경기도-하남.png';
		mus15off.src = './map/경기도/1경기도-구리.png';
		mus16off.src = './map/경기도/1경기도-성남.png';
		mus17off.src = './map/경기도/1경기도-용인.png';
		mus18off.src = './map/경기도/1경기도-이천.png';
		mus19off.src = './map/경기도/1경기도-안성.png';
		mus20off.src = './map/경기도/1경기도-화성.png';
		mus21off.src = './map/경기도/1경기도-평택.png';
		mus22off.src = './map/경기도/1경기도-오산.png';
		mus23off.src = './map/경기도/1경기도-수원.png';
		mus24off.src = './map/경기도/1경기도-의왕.png';
		mus25off.src = './map/경기도/1경기도-과천.png';
		mus26off.src = './map/경기도/1경기도-안양.png';
		mus27off.src = './map/경기도/1경기도-군포.png';
		mus28off.src = './map/경기도/1경기도-안산.png';
		mus29off.src = './map/경기도/1경기도-시흥.png';
		mus30off.src = './map/경기도/1경기도-광명.png';
		mus31off.src = './map/경기도/1경기도-부천.png';

		mus1on.src = './map/경기도/1경기도-파주(변환).png';
		mus2on.src = './map/경기도/1경기도-연천(변환).png';
		mus3on.src = './map/경기도/1경기도-양주(변환).png';
		mus4on.src = './map/경기도/1경기도-동두천(변환).png';
		mus5on.src = './map/경기도/1경기도-포천(변환).png';
		mus6on.src = './map/경기도/1경기도-가평(변환).png';
		mus7on.src = './map/경기도/1경기도-김포(변환).png';
		mus8on.src = './map/경기도/1경기도-고양(변환).png';
		mus9on.src = './map/경기도/1경기도-의정부(변환).png';
		mus10on.src = './map/경기도/1경기도-남양주(변환).png';
		mus11on.src = './map/경기도/1경기도-양평(변환).png';
		mus12on.src = './map/경기도/1경기도-광주(변환).png';
		mus13on.src = './map/경기도/1경기도-여주(변환).png';
		mus14on.src = './map/경기도/1경기도-하남(변환).png';
		mus15on.src = './map/경기도/1경기도-구리(변환).png';
		mus16on.src = './map/경기도/1경기도-성남(변환).png';
		mus17on.src = './map/경기도/1경기도-용인(변환).png';
		mus18on.src = './map/경기도/1경기도-이천(변환).png';
		mus19on.src = './map/경기도/1경기도-안성(변환).png';
		mus20on.src = './map/경기도/1경기도-화성(변환).png';
		mus21on.src = './map/경기도/1경기도-평택(변환).png';
		mus22on.src = './map/경기도/1경기도-오산(변환).png';
		mus23on.src = './map/경기도/1경기도-수원(변환).png';
		mus24on.src = './map/경기도/1경기도-의왕(변환).png';
		mus25on.src = './map/경기도/1경기도-과천(변환).png';
		mus26on.src = './map/경기도/1경기도-안양(변환).png';
		mus27on.src = './map/경기도/1경기도-군포(변환).png';
		mus28on.src = './map/경기도/1경기도-안산(변환).png';
		mus29on.src = './map/경기도/1경기도-시흥(변환).png';
		mus30on.src = './map/경기도/1경기도-광명(변환).png';
		mus31on.src = './map/경기도/1경기도-부천(변환).png';
		

	 if("${first}"=="파주시"||"${second}"=="파주시"||"${third}"=="파주시"){ 
		 	mus1off.src='/map/경기도/1경기도-파주(hot).png';
		 	$('.list1')[0].src='/map/경기도/1경기도-파주(hot).png';
		}else{
			$('.list1')[0].src='/map/경기도/1경기도-파주.png';
		}
	 if("${first}"=="연천군"||"${second}"=="연천군"||"${third}"=="연천군"){ 
		 	mus2off.src='/map/경기도/1경기도-연천(변환)(hot).png';
		 	$('.list2')[0].src='/map/경기도/1경기도-연천(변환)(hot).png';
		}else{
			$('.list2')[0].src='/map/경기도/1경기도-연천.png';
		}
	 if("${first}"=="양주시"||"${second}"=="양주시"||"${third}"=="양주시"){ 
		 	mus3off.src='/map/경기도/1경기도-양주(hot).png';
		 	$('.list3')[0].src='/map/경기도/1경기도-양주(hot).png';
		}else{
			$('.list3')[0].src='/map/경기도/1경기도-양주.png';
		}
	 if("${first}"=="동두천시"||"${second}"=="동두천시"||"${third}"=="동두천시"){ 
		 	mus4off.src='/map/경기도/1경기도-동두천(hot).png';
		 	$('.list4')[0].src='/map/경기도/1경기도-동두천(hot).png';
		}else{
			$('.list4')[0].src='/map/경기도/1경기도-동두천.png';
		}
	 if("${first}"=="포천시"||"${second}"=="포천시"||"${third}"=="포천시"){ 
		 	mus5off.src='/map/경기도/1경기도-포천(hot).png';
		 	$('.list5')[0].src='/map/경기도/1경기도-포천(hot).png';
		}else{
			$('.list5')[0].src='/map/경기도/1경기도-포천.png';
		}
	 if("${first}"=="가평군"||"${second}"=="가평군"||"${third}"=="가평군"){ 
		 	mus6off.src='/map/경기도/1경기도-가평(hot).png';
		 	$('.list6')[0].src='/map/경기도/1경기도-가평(hot).png';
		}else{
			$('.list6')[0].src='/map/경기도/1경기도-가평.png';
		}
	 if("${first}"=="김포시"||"${second}"=="김포시"||"${third}"=="김포시"){ 
		 	mus7off.src='/map/경기도/1경기도-김포(hot).png';
		 	$('.list7')[0].src='/map/경기도/1경기도-김포(hot).png';
		}else{
			$('.list7')[0].src='/map/경기도/1경기도-김포.png';
		}
	 if("${first}"=="고양시"||"${second}"=="고양시"||"${third}"=="고양시"){ 
		 	mus8off.src='/map/경기도/1경기도-고양(hot).png';
		 	$('.list8')[0].src='/map/경기도/1경기도-고양(hot).png';
		}else{
			$('.list8')[0].src='/map/경기도/1경기도-고양.png';
		}
	 if("${first}"=="의정부시"||"${second}"=="의정부시"||"${third}"=="의정부시"){ 
		 	mus9off.src='/map/경기도/1경기도-의정부(hot).png';
		 	$('.list9')[0].src='/map/경기도/1경기도-의정부(hot).png';
		}else{
			$('.list9')[0].src='/map/경기도/1경기도-의정부.png';
		}
	 if("${first}"=="남양주시"||"${second}"=="남양주시"||"${third}"=="남양주시"){ 
		 	mus10off.src='/map/경기도/1경기도-남양주(hot).png';
		 	$('.list10')[0].src='/map/경기도/1경기도-남양주(hot).png';
		}else{
			$('.list10')[0].src='/map/경기도/1경기도-남양주.png';
		}
	 if("${first}"=="양평군"||"${second}"=="양평군"||"${third}"=="양평군"){ 
		 	mus11off.src='/map/경기도/1경기도-양평(hot).png';
		 	$('.list11')[0].src='/map/경기도/1경기도-양평(hot).png';
		}else{
			$('.list11')[0].src='/map/경기도/1경기도-양평.png';
		}
	 if("${first}"=="광주시"||"${second}"=="광주시"||"${third}"=="광주시"){ 
		 	mus12off.src='/map/경기도/1경기도-광주(hot).png';
		 	$('.list12')[0].src='/map/경기도/1경기도-광주(hot).png';
		}else{
			$('.list12')[0].src='/map/경기도/1경기도-광주.png';
		}
	 if("${first}"=="여주시"||"${second}"=="여주시"||"${third}"=="여주시"){ 
		 	mus13off.src='/map/경기도/1경기도-여주(hot).png';
		 	$('.list13')[0].src='/map/경기도/1경기도-여주(hot).png';
		}else{
			$('.list13')[0].src='/map/경기도/1경기도-여주.png';
		}
	 if("${first}"=="하남시"||"${second}"=="하남시"||"${third}"=="하남시"){ 
		 	mus14off.src='/map/경기도/1경기도-하남(hot).png';
		 	$('.list14')[0].src='/map/경기도/1경기도-하남(hot).png';
		}else{
			$('.list14')[0].src='/map/경기도/1경기도-하남.png';
		}
	 if("${first}"=="구리시"||"${second}"=="구리시"||"${third}"=="구리시"){ 
		 	mus15off.src='/map/경기도/1경기도-구리(hot).png';
		 	$('.list15')[0].src='/map/경기도/1경기도-구리(hot).png';
		}else{
			$('.list15')[0].src='/map/경기도/1경기도-구리.png';
		}	 
	 if("${first}"=="성남시"||"${second}"=="성남시"||"${third}"=="성남시"){ 
		 	mus16off.src='/map/경기도/1경기도-성남(hot).png';
		 	$('.list16')[0].src='/map/경기도/1경기도-성남(hot).png';
		}else{
			$('.list16')[0].src='/map/경기도/1경기도-성남.png';
		}	 
	 if("${first}"=="용인시"||"${second}"=="용인시"||"${third}"=="용인시"){ 
		 	mus17off.src='/map/경기도/1경기도-용인(hot).png';
		 	$('.list17')[0].src='/map/경기도/1경기도-용인(hot).png';
		}else{
			$('.list17')[0].src='/map/경기도/1경기도-용인.png';
		}	 
	 if("${first}"=="이천시"||"${second}"=="이천시"||"${third}"=="이천시"){ 
		 	mus18off.src='/map/경기도/1경기도-이천(hot).png';
		 	$('.list18')[0].src='/map/경기도/1경기도-이천(hot).png';
		}else{
			$('.list18')[0].src='/map/경기도/1경기도-이천.png';
		}	 
	 if("${first}"=="안성시"||"${second}"=="안성시"||"${third}"=="안성시"){ 
		 	mus19off.src='/map/경기도/1경기도-안성(hot).png';
		 	$('.list19')[0].src='/map/경기도/1경기도-안성(hot).png';
		}else{
			$('.list19')[0].src='/map/경기도/1경기도-안성.png';
		}	 
	 if("${first}"=="화성시"||"${second}"=="화성시"||"${third}"=="화성시"){ 
		 	mus20off.src='/map/경기도/1경기도-화성(hot).png';
		 	$('.list20')[0].src='/map/경기도/1경기도-화성(hot).png';
		}else{
			$('.list20')[0].src='/map/경기도/1경기도-화성.png';
		}	 
	 if("${first}"=="평택시"||"${second}"=="평택시"||"${third}"=="평택시"){ 
		 	mus21off.src='/map/경기도/1경기도-평택(hot).png';
		 	$('.list21')[0].src='/map/경기도/1경기도-평택(hot).png';
		}else{
			$('.list21')[0].src='/map/경기도/1경기도-평택.png';
		}	 
	 if("${first}"=="오산시"||"${second}"=="오산시"||"${third}"=="오산시"){ 
		 	mus22off.src='/map/경기도/1경기도-오산(hot).png';
		 	$('.list22')[0].src='/map/경기도/1경기도-오산(hot).png';
		}else{
			$('.list22')[0].src='/map/경기도/1경기도-오산.png';
		}	 
	 if("${first}"=="수원시"||"${second}"=="수원시"||"${third}"=="수원시"){ 
		 	mus23off.src='/map/경기도/1경기도-수원(hot).png';
		 	$('.list23')[0].src='/map/경기도/1경기도-수원(hot).png';
		}else{
			$('.list23')[0].src='/map/경기도/1경기도-수원.png';
		}	 
	 if("${first}"=="의왕시"||"${second}"=="의왕시"||"${third}"=="의왕시"){ 
		 	mus24off.src='/map/경기도/1경기도-의왕(hot).png';
		 	$('.list24')[0].src='/map/경기도/1경기도-의왕(hot).png';
		}else{
			$('.list24')[0].src='/map/경기도/1경기도-의왕.png';
		}	 
	 if("${first}"=="과천시"||"${second}"=="과천시"||"${third}"=="과천시"){ 
		 	mus25off.src='/map/경기도/1경기도-과천(hot).png';
		 	$('.list25')[0].src='/map/경기도/1경기도-과천(hot).png';
		}else{
			$('.list25')[0].src='/map/경기도/1경기도-과천.png';
		}	 
	 if("${first}"=="안양시"||"${second}"=="안양시"||"${third}"=="안양시"){ 
		 	mus26off.src='/map/경기도/1경기도-안양(hot).png';
		 	$('.list26')[0].src='/map/경기도/1경기도-안양(hot).png';
		}else{
			$('.list26')[0].src='/map/경기도/1경기도-안양.png';
		}	 
	 if("${first}"=="군포시"||"${second}"=="군포시"||"${third}"=="군포시"){ 
		 	mus27off.src='/map/경기도/1경기도-군포(hot).png';
		 	$('.list27')[0].src='/map/경기도/1경기도-군포(hot).png';
		}else{
			$('.list27')[0].src='/map/경기도/1경기도-군포.png';
		}	 
	 if("${first}"=="안산시"||"${second}"=="안산시"||"${third}"=="안산시"){ 
		 	mus28off.src='/map/경기도/1경기도-안산(hot).png';
		 	$('.list28')[0].src='/map/경기도/1경기도-안산(hot).png';
		}else{
			$('.list28')[0].src='/map/경기도/1경기도-안산.png';
		}	 
	 if("${first}"=="시흥시"||"${second}"=="시흥시"||"${third}"=="시흥시"){ 
		 	mus29off.src='/map/경기도/1경기도-시흥(hot).png';
		 	$('.list29')[0].src='/map/경기도/1경기도-시흥(hot).png';
		}else{
			$('.list29')[0].src='/map/경기도/1경기도-시흥.png';
		}	 
	 if("${first}"=="광명시"||"${second}"=="광명시"||"${third}"=="광명시"){ 
		 	mus30off.src='/map/경기도/1경기도-광명(hot).png';
		 	$('.list30')[0].src='/map/경기도/1경기도-광명(hot).png';
		}else{
			$('.list30')[0].src='/map/경기도/1경기도-광명.png';
		}	 
	 if("${first}"=="부천시"||"${second}"=="부천시"||"${third}"=="부천시"){ 
		 	mus31off.src='/map/경기도/1경기도-부천(hot).png';
		 	$('.list31')[0].src='/map/경기도/1경기도-부천(hot).png';
		}else{
			$('.list31')[0].src='/map/경기도/1경기도-부천.png';
		}	 
	
	 
 });
 
 </script>
</head>
<body>
<div style="clear:both; position: relative; z-index: 1; top: -35px; left: 25; ">
	<a href='/latlng?lat=37.7598688&lng=126.7801781' onfocus='this.blur()' onmouseover=mus_on('mus1') onmouseout=mus_off('mus1') onclick=smenu_click('mus1')>
	<img src='./map/경기도/1경기도-파주.png' alt='' border='0' name='mus1' class='list1' ></a>
	<a href='/latlng?lat=38.0964438&lng=127.0748335' onfocus='this.blur()' onmouseover=mus_on('mus2') onmouseout=mus_off('mus2') onclick=smenu_click('mus2')>
	<img src='./map/경기도/1경기도-연천.png' alt='' border='0' name='mus2' class='list2' ></a>
	<a href='/latlng?lat=37.7852875&lng=127.0458453' onfocus='this.blur()' onmouseover=mus_on('mus3') onmouseout=mus_off('mus3') onclick=smenu_click('mus3')>
	<img src='./map/경기도/1경기도-양주.png' alt='' border='0' name='mus3' class='list3' ></a>
	<a href='/latlng?lat=37.9034112&lng=127.0605075' onfocus='this.blur()' onmouseover=mus_on('mus4') onmouseout=mus_off('mus4') onclick=smenu_click('mus4')>
	<img src='./map/경기도/1경기도-동두천.png' alt='' border='0' name='mus4' class='list4' ></a>
	<a href='/latlng?lat=37.8949148&lng=127.2003551' onfocus='this.blur()' onmouseover=mus_on('mus5') onmouseout=mus_off('mus5') onclick=smenu_click('mus5')>
	<img src='./map/경기도/1경기도-포천.png' alt='' border='0' name='mus5' class='list5' ></a>
	<a href='/latlng?lat=37.8315403&lng=127.5098827' onfocus='this.blur()' onmouseover=mus_on('mus6') onmouseout=mus_off('mus6') onclick=smenu_click('mus6')>
	<img src='./map/경기도/1경기도-가평.png' alt='' border='0' name='mus6' class='list6' ></a>
	<a href='/latlng?lat=37.6152464&lng=126.7156325' onfocus='this.blur()' onmouseover=mus_on('mus7') onmouseout=mus_off('mus7') onclick=smenu_click('mus7')>
	<img src='./map/경기도/1경기도-김포.png' alt='' border='0' name='mus7' class='list7' ></a>
	<a href='/latlng?lat=37.6559448&lng=126.7627806' onfocus='this.blur()' onmouseover=mus_on('mus8') onmouseout=mus_off('mus8') onclick=smenu_click('mus8')>
	<img src='./map/경기도/1경기도-고양.png' alt='' border='0' name='mus8' class='list8' ></a>
	<a href='/latlng?lat=37.7380980&lng=127.0336819' onfocus='this.blur()' onmouseover=mus_on('mus9') onmouseout=mus_off('mus9') onclick=smenu_click('mus9')>
	<img src='./map/경기도/1경기도-의정부.png' alt='' border='0' name='mus9' class='list9' ></a>
	<a href='/latlng?lat=37.6360028&lng=127.2165279' onfocus='this.blur()' onmouseover=mus_on('mus10') onmouseout=mus_off('mus10') onclick=smenu_click('mus10')>
	<img src='./map/경기도/1경기도-남양주.png' alt='' border='0' name='mus10' class='list10' ></a>
	<a href='/latlng?lat=37.4912195&lng=127.4875607' onfocus='this.blur()' onmouseover=mus_on('mus11') onmouseout=mus_off('mus11') onclick=smenu_click('mus11')>
	<img src='./map/경기도/1경기도-양평.png' alt='' border='0' name='mus11' class='list11' ></a>
	<a href='/latlng?lat=37.4171413&lng=127.2561413' onfocus='this.blur()' onmouseover=mus_on('mus12') onmouseout=mus_off('mus12') onclick=smenu_click('mus12')>
	<img src='./map/경기도/1경기도-광주.png' alt='' border='0' name='mus12' class='list12' ></a>
	<a href='/latlng?lat=37.2980237&lng=127.6371628' onfocus='this.blur()' onmouseover=mus_on('mus13') onmouseout=mus_off('mus13') onclick=smenu_click('mus13')>
	<img src='./map/경기도/1경기도-여주.png' alt='' border='0' name='mus13' class='list13' ></a>
	<a href='/latlng?lat=37.5392646&lng=127.2148919' onfocus='this.blur()' onmouseover=mus_on('mus14') onmouseout=mus_off('mus14') onclick=smenu_click('mus14')>
	<img src='./map/경기도/1경기도-하남.png' alt='' border='0' name='mus14' class='list14' ></a>
	<a href='/latlng?lat=37.5943124&lng=127.1295646' onfocus='this.blur()' onmouseover=mus_on('mus15') onmouseout=mus_off('mus15') onclick=smenu_click('mus15')>
	<img src='./map/경기도/1경기도-구리.png' alt='' border='0' name='mus15' class='list15' ></a>
	<a href='/latlng?lat=37.4002293&lng=127.0709103' onfocus='this.blur()' onmouseover=mus_on('mus16') onmouseout=mus_off('mus16') onclick=smenu_click('mus16')>
	<img src='./map/경기도/1경기도-성남.png' alt='' border='0' name='mus16' class='list16' ></a>
	<a href='/latlng?lat=37.2839294&lng=127.0762603' onfocus='this.blur()' onmouseover=mus_on('mus17') onmouseout=mus_off('mus17') onclick=smenu_click('mus17')>
	<img src='./map/경기도/1경기도-용인.png' alt='' border='0' name='mus17' class='list17' ></a>
	<a href='/latlng?lat=37.2719952&lng=127.4348221' onfocus='this.blur()' onmouseover=mus_on('mus18') onmouseout=mus_off('mus18') onclick=smenu_click('mus18')>
	<img src='./map/경기도/1경기도-이천.png' alt='' border='0' name='mus18' class='list18' ></a>
	<a href='/latlng?lat=37.0079695&lng=127.2796786' onfocus='this.blur()' onmouseover=mus_on('mus19') onmouseout=mus_off('mus19') onclick=smenu_click('mus19')>
	<img src='./map/경기도/1경기도-안성.png' alt='' border='0' name='mus19' class='list19' ></a>
	<a href='/latlng?lat=37.1994932&lng=126.8311887' onfocus='this.blur()' onmouseover=mus_on('mus20') onmouseout=mus_off('mus20') onclick=smenu_click('mus20')>
	<img src='./map/경기도/1경기도-화성.png' alt='' border='0' name='mus20' class='list20' ></a>
	<a href='/latlng?lat=36.9921075&lng=127.1129451' onfocus='this.blur()' onmouseover=mus_on('mus21') onmouseout=mus_off('mus21') onclick=smenu_click('mus21')>
	<img src='./map/경기도/1경기도-평택.png' alt='' border='0' name='mus21' class='list21' ></a>
	<a href='/latlng?lat=37.1498096&lng=127.0772212' onfocus='this.blur()' onmouseover=mus_on('mus22') onmouseout=mus_off('mus22') onclick=smenu_click('mus22')>
	<img src='./map/경기도/1경기도-오산.png' alt='' border='0' name='mus22' class='list22' ></a>
	<a href='/latlng?lat=37.2787948&lng=126.9908306' onfocus='this.blur()' onmouseover=mus_on('mus23') onmouseout=mus_off('mus23') onclick=smenu_click('mus23')>
	<img src='./map/경기도/1경기도-수원.png' alt='' border='0' name='mus23' class='list23' ></a>
	<a href='/latlng?lat=37.3447010&lng=126.9683104' onfocus='this.blur()' onmouseover=mus_on('mus24') onmouseout=mus_off('mus24') onclick=smenu_click('mus24')>
	<img src='./map/경기도/1경기도-의왕.png' alt='' border='0' name='mus24' class='list24' ></a>
	<a href='/latlng?lat=37.4292460&lng=126.9874451' onfocus='this.blur()' onmouseover=mus_on('mus25') onmouseout=mus_off('mus25') onclick=smenu_click('mus25')>
	<img src='./map/경기도/1경기도-과천.png' alt='' border='0' name='mus25' class='list25' ></a>
	<a href='/latlng?lat=37.3885448&lng=126.9020306' onfocus='this.blur()' onmouseover=mus_on('mus26') onmouseout=mus_off('mus26') onclick=smenu_click('mus26')>
	<img src='./map/경기도/1경기도-안양.png' alt='' border='0' name='mus26' class='list26' ></a>
	<a href='/latlng?lat=37.3616703&lng=126.9351741' onfocus='this.blur()' onmouseover=mus_on('mus27') onmouseout=mus_off('mus27') onclick=smenu_click('mus27')>
	<img src='./map/경기도/1경기도-군포.png' alt='' border='0' name='mus27' class='list27' ></a>
	<a href='/latlng?lat=37.3201294&lng=126.7320103' onfocus='this.blur()' onmouseover=mus_on('mus28') onmouseout=mus_off('mus28') onclick=smenu_click('mus28')>
	<img src='./map/경기도/1경기도-안산.png' alt='' border='0' name='mus28' class='list28' ></a>
	<a href='/latlng?lat=37.3798877&lng=126.8031025' onfocus='this.blur()' onmouseover=mus_on('mus29') onmouseout=mus_off('mus29') onclick=smenu_click('mus29')>
	<img src='./map/경기도/1경기도-시흥.png' alt='' border='0' name='mus29' class='list29' ></a>
	<a href='/latlng?lat=37.4784878&lng=126.8642888' onfocus='this.blur()' onmouseover=mus_on('mus30') onmouseout=mus_off('mus30') onclick=smenu_click('mus30')>
	<img src='./map/경기도/1경기도-광명.png' alt='' border='0' name='mus30' class='list30' ></a>
	<a href='/latlng?lat=37.5004448&lng=126.7499806' onfocus='this.blur()' onmouseover=mus_on('mus31') onmouseout=mus_off('mus31') onclick=smenu_click('mus31')>
	<img src='./map/경기도/1경기도-부천.png' alt='' border='0' name='mus31' class='list31' ></a>

	</div>
</body>
</html>