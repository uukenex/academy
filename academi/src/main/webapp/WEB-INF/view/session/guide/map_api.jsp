<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.example.dto.Goods" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 	<meta name="author" content="Nathan Searles">
  		
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">


<title>지도 생성하기</title>
<style>
.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}

.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}

.map_wrap {
	position: absolute;
	width: 100%;
	height: 350px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

</style>
</head>

<body>
		 
		 
									<!-- 지도를 표시할 div 입니다 -->
										<div class="map_wrap" id="map_wrap">
											<div id="map"
												style="width: 850px; height: 700px; position: relative; overflow: hidden;"></div>
											<div class="hAddr">
												<span class="title">여행을 부탁해</span> <span id="centerAddr"></span>
											</div>
										</div>
								
<%--

	지도를 표시할 div 입니다
	<div class="map_wrap">
		<div id="map"
			style="width: 600px; height: 600px; position: relative; overflow: hidden;"></div>
		<div class="hAddr">
			<span class="title">여행을 부탁해</span> <span id="centerAddr"></span>
		</div>
	</div>
	
	<div style="height: 200px"></div>
	
	
	

	<div>
	
 	
		<form>
			<input type="hidden" id="title" name="title" ><br>
			<input type="hidden" id="address" name="address" size=40><br>
			
			<input type="hidden" id="latitude" name="latitude">
			<input type="hidden" id="longitude" name="longitude">
			<input type="hidden" id="category" name="category">
			<input type="hidden" id="imageUrl" name="imageUrl">
			<br>
			<input type="checkbox" id="stored" >
			<label for="stored">저장된것만 표시</label>
		</form>
		<div>
			<select id="select">
				<option value="AT4">관광지</option>
				<option value="CT1">문화시설</option>
				<option value="AD5">숙박업소</option>
				<option value="FD6">음식점</option>
				<option value="CE7">카페</option>
				<option value="HP8">병원</option>
				<option value="PM9">약국</option>
				<option value="OL7">주유소</option>
			</select> <input type="text" id="keyword"> 
			<input type="button" id="search" value="찾기">
		</div>
		
		
	
		<output id="result">
		</output>
	<form method="post">
	<input type="hidden" value="${routeNo }" name="routeNo">
	
	<!--일반 지도api로 들어갔을경우 : -->
	<c:if test="${empty routeNo }">
	<input type="submit" id="" value="DB로!!" formaction="/mapSave" >
	</c:if> 
	
	<!--번호검색으로 api로 들어갔을경우 : -->
	<c:if test="${!empty routeNo }">
	<input type="text" name ="routeName" value="${routeName }">
	<textarea name="routeContent" rows="30" cols="30" >${routeContent }</textarea>
	<input type="submit" id="" value="수정" formaction="/mapUpdate">
	<input type="submit" id="" value="삭제" formaction="/mapDelete">
	</c:if>
	<label>저장하지않으면 데이터가 소실됩니다.</label>
	</form>
	</div>

 --%>
	

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=f111b7c126aadaadc9e48d615f426d3a&libraries=services"></script>
	<script>
	var center = new daum.maps.LatLng(<%=request.getAttribute("lat")%>, <%=request.getAttribute("lng")%>);
	if(<%=request.getAttribute("lat")%>==null)
		{
		/////////////////////
		//임시 방편입니다///////
		///////////////////
		center = new daum.maps.LatLng(35.5299667020832,129.27704558939251);
		}
		var mapLevel = 8;
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : center, // 지도의 중심좌표
			level : mapLevel
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new daum.maps.Map(mapContainer, mapOption);
		var places = new daum.maps.services.Places();
		var callback;
		var positions;

		//마커를 담을 배열
		var markers = [];
		var infowindows= [];
		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		//처음 지도 로드시 한번만 실행됨
		daum.maps.load(function(){
			callback = function(status, result, pagination) {
				if (status === daum.maps.services.Status.OK) {
					positions = result.places;
					callMarker(positions);
					
				}
			};
			
			
			////////////////////////////////
			////여기서 저장된것만 표시 를 해주어야함////
			////////////////////////////////
			
			if('${!empty cart}' =='true'){
				$("#stored").attr("checked",true);

			}
			
			
			$("#select").on("change",function(){
				map.setLevel(map.getLevel()+1);
				map.setLevel(map.getLevel()-1);
			})
			
			console.log("이게 중심좌표야 ! :"+center.getLat());
			 /* $("#select").on("change",function(){
				center.getLat();
				center.getLng();
				
			})  */
			
			$("#select").val("AT4");
			if($("#stored").prop("checked")!=true){
			places.categorySearch($("#select").val(), callback, {
				location : center
			});
			
			
			
			
			$("#search").on("click", function() {
				if ($("#keyword").val().trim() == "") {
					alert('검색 결과가 존재하지 않습니다.');
					return;
				}
				places.keywordSearch($("#keyword").val(), placesSearchCB);
			});
			// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
			
			function placesSearchCB(status, data, pagination) {
						if (status === daum.maps.services.Status.OK) {
							positions = data.places;

							var moveLatLon = new daum.maps.LatLng(positions[0].latitude,
									positions[0].longitude);
							map.panTo(moveLatLon);
						} else if (status === daum.maps.services.Status.ZERO_RESULT) {
							alert('검색 결과가 존재하지 않습니다.');
							return;
						} else if (status === daum.maps.services.Status.ERROR) {
							alert('검색 결과 중 오류가 발생했습니다.');
							return;
						}
					};
			
			
			daum.maps.event.addListener(map, 'idle', function() {
				center = new daum.maps.LatLng(map.getCenter().getLat(), map.getCenter().getLng());
				/*
				MT1대형마트CS2편의점PS3어린이집유치원SC4학교AC5학원PK6주차장OL7주유소충전소SW8지하철역
				BK9은행CT1문화시설AG2중개업소PO3공공기관AT4관광명소AD5숙박FD6음식점CE7카페HP8병원PM9약국*/
				//location에 중심좌표로 15개의 AT4정보를 불러옴 -각지역별 중심좌표로 변환해야함
				places.categorySearch($("#select").val(), callback, {
					location : center
				});
			});
			}
		});
		
		
		//주변 정보 중심좌표는 location에 따름
		callback = function(status, result, pagination) {
			if (status === daum.maps.services.Status.OK) {
				if($("#stored").prop("checked")!=true){
				positions = result.places;
				callMarker(positions);
					
				}
			}
		};

		
		
		
		var callMarker = function(positions) {
			removeMarker();
			removeInfoWindow();
			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new daum.maps.Size(24, 35);
			var markerImage;
			var posx;
			var posy;
			var marker;
			var infowindow;
			var iwContent;

			for (var i = 0; i < positions.length; i++) {
				
				
					
					
				
				if ((positions[i].category.indexOf('계곡') != -1 
					&& positions[i].title.indexOf('골') != -1)
					|| positions[i].category.indexOf('저수지') != -1) {
					//계곡이면서 골 이라는 글자가 포함되있다면 , 다음걸로 넘어감 , 저수지여도 넘어감
				} else {
					// 마커 이미지를 생성합니다    
					markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);
					
					// 마커를 생성합니다
					posx = positions[i].latitude;
					posy = positions[i].longitude;

					
					marker = new daum.maps.Marker({
						map : map, // 마커를 표시할 지도
						clickable : true,
						position : new daum.maps.LatLng(posx, posy), // 마커를 표시할 위치
						title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
					// 마커 이미지 
					});
					
					iwContent = iwRemoveable = true;
					// 마커에 표시할 인포윈도우를 생성합니다 
					
					if (positions[i].imageUrl == "") {
						positions[i].imageUrl = '/images/noimg.jpg';
					}
					infowindow = new daum.maps.InfoWindow(
							{
								removable : iwRemoveable,
								content : '<div id='+i+' class>'
										+ '    <div class="info">'
										+ '        <div class="title" name='+positions[i].title+'>'
										+ positions[i].title
										+ '        </div>'
										+ '        <div class="body">'
										+ '            <div class="img">'
										+ '                <img src="'+positions[i].imageUrl+'" width="73" height="70">'
										+ '           </div>'
										+ '            <div class="desc">'
										+ '                <div class="jibun ellipsis">'
										+ positions[i].address
										+ '</div>'
										+ '                <div><input type="button" id="'
										+ i
										+ '" value="선택하기"  onclick=buttonclick(this)></div>'
										+ '            </div>'
										+ '        </div>' + '    </div>'
										+ '</div>'
							// 인포윈도우에 표시할 내용
							});
					
					
					daum.maps.event.addListener(marker, 'click',
							makeOverListener(map, marker, infowindow));
					markers.push(marker);
					infowindows.push(infowindow);
					
				}//계곡 찍는 종점
			}
		}

		function makeOverListener(map, marker, infowindow) {
			return function() {
				infowindow.open(map, marker);
			}
		}

		//마커지우기
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}
		//마커지우기
		function removeInfoWindow() {
			for (var i = 0; i < infowindows.length; i++) {
				infowindows[i].close();
			}
			infowindows = [];
		}
		

	
		$(document).on("ready",function(){
		
			
			
		$.ajax({
				type:"post",
				url:"/getSession",
				success:function(res){
					console.log('res[2]');
					console.log(res[2]);
					var html="<div id='sortWrap'>" ;
					for(var i=0;i<res[0].length;i++){
					html+="<div id=data"+i+" data-order="+i+">♬";
					html+=res[0][i].title+"♬";
					html+=res[0][i].address;
					html+="<img src='/images/delete.png' style='width:25px; height:25px;' class='close'>";
					html+="</div>";
					}
					html+="</div>";
					$("#result").html(html);
					
					
					$("#sortWrap").sortable({
						axis: "y",
						containment: "parent",
						update: function (event, ui) {
							var order = $(this).sortable('toArray', {
								attribute: 'data-order'
							});
							console.log(order);
						}
					});
					
					
					var routeHTML="";
					
					$("#bestRouteSection")[0].innerHTML="";
					if(res[1].length==0){
						routeHTML +="<p>비슷한 경로로 간사람이 없습니다!</p>";
					}
					else{
						routeHTML +="<p>Best Route 1<br>"+res[2][0].reviewTitle+"<br>";
						routeHTML +="<iframe src='/routeImage?routeNo="+res[1][0].routeNo+"'";
						routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
						routeHTML +="</iframe>";
						routeHTML +="</p>";
						routeHTML +="<p>Best Route 2<br>"+res[2][1].reviewTitle+"<br>";
						routeHTML +="<iframe src='/routeImage?routeNo="+res[1][1].routeNo+"'";
						routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
						routeHTML +="</iframe>";
						routeHTML +="</p>";
						routeHTML +="<p>Best Route 3<br>"+res[2][2].reviewTitle+"<br>";
						routeHTML +="<iframe src='/routeImage?routeNo="+res[1][2].routeNo+"'";
						routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
						routeHTML +="</iframe>";
						routeHTML +="</p>";
					}
					$("#bestRouteSection")[0].innerHTML=routeHTML;
					
					
					positions=res[0];
					callMarker(positions);
					
				}
			});
		
		
		});
		
		
		
		
		
		
		
			$("#stored").on("change",function(){
				if($("#stored").prop("checked")==true){
					//체크되었을때 저장한 지역의 마커만 보이게 해야함
					$.ajax({
						type:"post",
						url:"/getSession",
						success:function(res){
							var routeHTML="";
							
							$("#bestRouteSection")[0].innerHTML="";
							if(res[1].length==0){
								routeHTML +="<p>비슷한 경로로 간사람이 없습니다!</p>";
							}
							else{
								console.log($(res[1][0]));
								routeHTML +="<p>Best Route 1<br>"+res[2][0].reviewTitle+"<br>";
								routeHTML +="<iframe src='/routeImage?routeNo="+res[1][0].routeNo+"'";
								routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
								routeHTML +="</iframe>";
								routeHTML +="</p>";
								routeHTML +="<p>Best Route 2<br>"+res[2][1].reviewTitle+"<br>";
								routeHTML +="<iframe src='/routeImage?routeNo="+res[1][1].routeNo+"'";
								routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
								routeHTML +="</iframe>";
								routeHTML +="</p>";
								routeHTML +="<p>Best Route 3<br>"+res[2][2].reviewTitle+"<br>";
								routeHTML +="<iframe src='/routeImage?routeNo="+res[1][2].routeNo+"'";
								routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
								routeHTML +="</iframe>";
								routeHTML +="</p>";
							}
							$("#bestRouteSection")[0].innerHTML=routeHTML;
							
							
							
							positions=res[0];
							callMarker(positions);
							
							
						},
						error:function(xhr,status,error){
							console.log(error);
						}
					});
					
					
					
					// 지도 이동시 마커찍는 이벤트 제거
					daum.maps.event.removeListener(map, 'idle', function() {
						center = new daum.maps.LatLng(map.getCenter().getLat(), map.getCenter().getLng());
						/*
						MT1대형마트CS2편의점PS3어린이집유치원SC4학교AC5학원PK6주차장OL7주유소충전소SW8지하철역
						BK9은행CT1문화시설AG2중개업소PO3공공기관AT4관광명소AD5숙박FD6음식점CE7카페HP8병원PM9약국*/
						//location에 중심좌표로 15개의 AT4정보를 불러옴 -각지역별 중심좌표로 변환해야함
						places.categorySearch($("#select").val(), callback, {
							location : center
						});
					});
					
					//이벤트등록후 꺼주어야함 
					$("#search").attr("onclick","").unbind("click");
					$("#search").on("click", function() {
						alert("'저장된것만 표시'를 꺼주세요");
					});
					
					
				}
				
					
					
					
				else{	
					
					
					
					//저장된거 표시 풀때 나오게하는
					map.setLevel(map.getLevel()+1);
					// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
					
					daum.maps.event.addListener(map, 'idle', function() {
						center = new daum.maps.LatLng(map.getCenter().getLat(), map.getCenter().getLng());
						/*
						MT1대형마트CS2편의점PS3어린이집유치원SC4학교AC5학원PK6주차장OL7주유소충전소SW8지하철역
						BK9은행CT1문화시설AG2중개업소PO3공공기관AT4관광명소AD5숙박FD6음식점CE7카페HP8병원PM9약국*/
						//location에 중심좌표로 15개의 AT4정보를 불러옴 -각지역별 중심좌표로 변환해야함
						places.categorySearch($("#select").val(), callback, {
							location : center
						});
						
						
					});
					
					map.setLevel(map.getLevel()-1);
					
					
					$("#search").attr("onclick","").unbind("click");
					$("#search").on("click", function() {
						if ($("#keyword").val().trim() == "") {
							alert('검색 결과가 존재하지 않습니다.');
							return;
						}
						places.keywordSearch($("#keyword").val(), placesSearchCB);
						//검색이 완료됬을경우 다른정보들을 넣으면 안됨
						//1. 검색어가 있을경우 callback에서 마커찍는것을 막는다
						//2. 
					});

					function placesSearchCB(status, data, pagination) {
						if (status === daum.maps.services.Status.OK) {
							positions = data.places;

							var moveLatLon = new daum.maps.LatLng(positions[0].latitude,
									positions[0].longitude);
							map.panTo(moveLatLon);
						} else if (status === daum.maps.services.Status.ZERO_RESULT) {
							alert('검색 결과가 존재하지 않습니다.');
							return;
						} else if (status === daum.maps.services.Status.ERROR) {
							alert('검색 결과 중 오류가 발생했습니다.');
							return;
						}
					};
					
				
					
					
					
					
					
					
					
					
					
				}	
					
				
			});
			
			
		
		
		
		
		
		//마커안의 선택하기 버튼 클릭시 아래창으로 넣어주는 역할
		function buttonclick(e) {

			var i = Number.parseInt(e.id);
			switch (i) {
			case i:
				$('#title').val(positions[i].title);
				$('#latitude').val(positions[i].latitude);
				$('#longitude').val(positions[i].longitude);
				$('#address').val(positions[i].address);
				$('#imageUrl').val(positions[i].imageUrl);
				$('#category').val(positions[i].category);
				
				for (var i = 0; i < infowindows.length; i++) {
					infowindows[i].close();
				}
				
					var addurl='/add';
				$.ajax({
						type:"post",
						url:addurl,
						data:{
							title:$('#title').val(),
							latitude:$('#latitude').val(),
							longitude:$('#longitude').val(),
							address:$('#address').val(),
							imageUrl:$('#imageUrl').val(),
							category:$('#category').val()
						},
						success:function(res){
							console.log(res);
							var html="<div id='sortWrap'>" ;
							for(var i=0;i<res[0].length;i++){
							html+="<div id=data"+i+" data-order="+i+">♬";
							html+=res[0][i].title+"♬";
							html+=res[0][i].address;
							html+="<img src='/images/delete.png' style='width:25px; height:25px;' class='close'>";
							html+="</div>";
							}
							html+="</div>";
							$("#result").html(html);
							
							$("#sortWrap").sortable({
								axis: "y",
								containment: "parent",
								update: function (event, ui) {
									var order = $(this).sortable('toArray', {
										attribute: 'data-order'
									});
									console.log(order);
								}
							});
							
							
							var routeHTML="";
							
							$("#bestRouteSection")[0].innerHTML="";
							if(res[1].length==0){
								routeHTML +="<p>비슷한 경로로 간사람이 없습니다!</p>";
							}
							else{
								routeHTML +="<p>Best Route 1<br>"+res[2][0].reviewTitle+"<br>";
								routeHTML +="<iframe src='/routeImage?routeNo="+res[1][0].routeNo+"'";
								routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
								routeHTML +="</iframe>";
								routeHTML +="</p>";
								routeHTML +="<p>Best Route 2<br>"+res[2][1].reviewTitle+"<br>";
								routeHTML +="<iframe src='/routeImage?routeNo="+res[1][1].routeNo+"'";
								routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
								routeHTML +="</iframe>";
								routeHTML +="</p>";
								routeHTML +="<p>Best Route 3<br>"+res[2][2].reviewTitle+"<br>";
								routeHTML +="<iframe src='/routeImage?routeNo="+res[1][2].routeNo+"'";
								routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
								routeHTML +="</iframe>";
								routeHTML +="</p>";
							}
							$("#bestRouteSection")[0].innerHTML=routeHTML;
						},
						error:function(request,status,error){
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					});
				
			
				
				break;
			}

		}
		
		
		
		
			var delurl='/deleteCart';
		
		
			$(document).on("click",".close",function() {
				//글씨나 div를 넣어주는경우 한번씩 더실행할것
				
				var target = this.parentNode;
				var number = target.id;
				console.log($(target));
				console.log(number);
				if(confirm('정말 삭제하시겠습니까?')==true)
					{
					
					//여기서 ajax 삭제처리 해주어야함
					$.ajax({
						type:"post",
						url:delurl,
						data:{
							number:number
						},
						success:function(res){
							var html="<div id='sortWrap'>" ;
							for(var i=0;i<res[0].length;i++){
							html+="<div id=data"+i+" data-order="+i+">♬";
							html+=res[0][i].title+"♬";
							html+=res[0][i].address;
							html+="<img src='/images/delete.png' style='width:25px; height:25px;' class='close'>";
							html+="</div>";
							}
							html+="</div>";
							$("#result").html(html);
							
							$("#sortWrap").sortable({
								axis: "y",
								containment: "parent",
								update: function (event, ui) {
									var order = $(this).sortable('toArray', {
										attribute: 'data-order'
									});
									console.log(order);
								}
							});
								target.remove();
								var routeHTML="";
								
								$("#bestRouteSection")[0].innerHTML="";
								console.log(res[1]);
								if(res[1].length==0){
									routeHTML +="<p>비슷한 경로로 간사람이 없습니다!</p>";
								}
								else{
									routeHTML +="<p>Best Route 1<br>"+res[2][0].reviewTitle+"<br>";
									routeHTML +="<iframe src='/routeImage?routeNo="+res[1][0].routeNo+"'";
									routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
									routeHTML +="</iframe>";
									routeHTML +="</p>";
									routeHTML +="<p>Best Route 2<br>"+res[2][1].reviewTitle+"<br>";
									routeHTML +="<iframe src='/routeImage?routeNo="+res[1][1].routeNo+"'";
									routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
									routeHTML +="</iframe>";
									routeHTML +="</p>";
									routeHTML +="<p>Best Route 3<br>"+res[2][2].reviewTitle+"<br>";
									routeHTML +="<iframe src='/routeImage?routeNo="+res[1][2].routeNo+"'";
									routeHTML +="height='300px' width='300px' scrolling='no' frameborder='0'>";
									routeHTML +="</iframe>";
									routeHTML +="</p>";
								}
								$("#bestRouteSection")[0].innerHTML=routeHTML;
						}
						,
						error:function(xhr,status,error){
							console.log('ajax연결실패')
						}
					});
						
					}
				else{
					return;
					}
			    });

		
		
		
	</script>



</body>

</html>