<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	position: relative;
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
	<div class="map_wrap">
		<div id="map"
			style="width: 600px; height: 600px; position: relative; overflow: hidden;"></div>
		<div class="hAddr">
			<span class="title">여행을 부탁해</span> <span id="centerAddr"></span>
		</div>
	</div>
	<div style="height: 300px"></div>
	<div>
		<h6 id="result"></h6>
		<h1>Add address.</h1>
		<form method="post" action="/add">
			Name : <input type="text" id="address_name" name="address_name"><br>
			x좌표 : <input type="text" id="x_coordinate" name="x_coordinate"><br>
			y좌표 : <input type="text" id="y_coordinate" name="y_coordinate"><br>
			주소 : <input type="text" id="address" name="address" size=30><br>
			<br>
			<button>추가하기</button>
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
			</select> <input type="text" id="keyword"> <input type="button"
				id="search" value="찾기">
		</div>
		<c:forEach items="${cart}" var="address">
	Name : ${address.address_name}, 
	x좌표 : ${address.x_coordinate}, 
	y좌표 : ${address.y_coordinate } , 
	주소 : ${address.address }  
	<br>
		</c:forEach>
	</div>
	<script src="/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=f111b7c126aadaadc9e48d615f426d3a&libraries=services"></script>
	<script>
		/* var center = new daum.maps.LatLng(33.450701, 126.570667); */
		var center = new daum.maps.LatLng(36.85079990267022, 127.1514823351422);
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : center, // 지도의 중심좌표
			level : 4
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new daum.maps.Map(mapContainer, mapOption);
		var places = new daum.maps.services.Places();

		// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'center_changed', function() {

			// 지도의  레벨을 얻어옵니다
			var level = map.getLevel();

			// 지도의 중심좌표를 얻어옵니다 
			var latlng = map.getCenter();

			var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
			message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 '
					+ latlng.getLng() + '입니다</p>';

			var resultDiv = document.getElementById('result');
			resultDiv.innerHTML = message;

			center = new daum.maps.LatLng(latlng.getLat(), latlng.getLng());

			/*
			MT1대형마트CS2편의점PS3어린이집유치원SC4학교AC5학원PK6주차장OL7주유소충전소SW8지하철역
			BK9은행CT1문화시설AG2중개업소PO3공공기관AT4관광명소AD5숙박FD6음식점CE7카페HP8병원PM9약국	 */

			//location에 중심좌표로 15개의 AT4정보를 불러옴 -각지역별 중심좌표로 변환해야함
			places.categorySearch($("#select").val(), callback, {
				location : center
			});
		});
		var geocoder = new daum.maps.services.Geocoder();

		var positions = [];
		//주변 정보 중심좌표는 location에 따름
		var callback = function(status, result, pagination) {
			if (status === daum.maps.services.Status.OK) {
				positions = result.places;

				callMarker(positions);
			}
		};

		//마커를 담을 배열
		var markers = [];
		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		var callMarker = function(positions) {
			removeMarker();
			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new daum.maps.Size(24, 35);
			var markerImage;
			var posx;
			var posy;
			var marker;
			var iwContent;

			for (var i = 0; i < positions.length; i++) {

				if ((positions[i].category.indexOf('계곡') != -1 && positions[i].title
						.indexOf('골') != -1)
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
						positions[i].imageUrl = 'http://www.moaksanjujo.kr/planweb/images/mall/defaultGoods.jpg';
					}
					var infowindow = new daum.maps.InfoWindow(
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
				}
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

		//클릭한 지역의 좌표와 주소(법정 동)으로 콘솔로그에 출력 
		var realX;
		var realY;
		var readAddr;
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
			searchDetailAddrFromCoords(mouseEvent.latLng, function(status,
					result) {
				if (status === daum.maps.services.Status.OK) {
					realX = result[0].x;
					realY = result[0].y;
					readAddr = result[0].region;

					console.log(realX);
					console.log(realY);
					console.log(readAddr);
				}
			});
		});

		function searchDetailAddrFromCoords(coords, callback) {
			// 좌표로 법정동 상세 주소 정보를 요청합니다
			geocoder.coord2detailaddr(coords, callback);
		}

		$("#search").on("click", function() {
			if ($("#keyword").val().trim() == "") {
				alert('검색 결과가 존재하지 않습니다.');
				return;
			}
			places.keywordSearch($("#keyword").val(), placesSearchCB);
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
		}

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		//마커안의 선택하기 버튼 클릭시 아래창으로 넣어주는 역할
		function buttonclick(e) {

			console.log(e.id);
			var i = Number.parseInt(e.id);
			switch (i) {
			case i:
				console.log(positions[i].title);
				$('#address_name').val(positions[i].title);
				$('#x_coordinate').val(positions[i].latitude);
				$('#y_coordinate').val(positions[i].longitude);
				$('#address').val(positions[i].address);
				console.log($("#" + i));
				break;
			}

		}
	</script>



</body>

</html>