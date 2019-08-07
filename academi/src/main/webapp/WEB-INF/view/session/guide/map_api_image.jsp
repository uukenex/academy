<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마커와 텍스트 표시하기</title>

</head>
<body>
	<!-- 이미지 지도를 표시할 div 입니다 -->
	<div id="staticMap" style="width: 380px; height: 700px;"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e402734f62a71135a860f7ab8b2ae507"></script>
	<script>
		
		// 이미지 지도에 표시할 마커입니다
		// 이미지 지도에 표시할 마커를 아래와 같이 배열로 넣어주면 여러개의 마커를 표시할 수 있습니다 
	
		var markers = [ 
		<c:forEach var="latLng" items="${latLng}">   
		 {
			position : new kakao.maps.LatLng(${latLng})
		}, 
		</c:forEach>
		
		];

		var staticMapContainer = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
		staticMapOption = {
			center : new kakao.maps.LatLng(${center.get(0)}), // 이미지 지도의 중심좌표
			level : "${mapSize}", // 이미지 지도의 확대 레벨
			marker : markers
		// 이미지 지도에 표시할 마커 
		};

		// 이미지 지도를 생성합니다
		var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
		</script>
</body>
</html>
