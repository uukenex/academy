<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Map Right Tab Menu -->

	<!-- page div -->
		
		<div>
			<a id="mapRightToggleButton">
				<i class="fa fa-align-justify fa-4x"></i>
			</a>
			
			<div id="mapRightToggleMenu">
				<input type="button" id="searchRegionButton" value="도, 시 찾기">
				<br/>
				<input type="button" id="bestRouteButton" value="추천 경로">
				<p>ddddd</p>
				<p>ddddd</p>
				<p>ddddd</p>
				<p>ddddd</p>
				<p>ddddd</p>
			</div>
		</div>
		
		<script>
			$("#mapRightToggleButton").click(function(){
				$("#mapRightToggleMenu").toggle("slide", {direction: 'up'}, 500);
			});
		</script>