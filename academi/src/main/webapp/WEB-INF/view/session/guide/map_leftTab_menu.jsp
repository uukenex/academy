<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Make a map Left Tap Menu -->
	<div class="3u 12u(moblie)" style="margin-bottom: 40em;">
	
		<section class="boardSection">
			<div>
				<form>
					Name : <input type="text" id="title" name="title" ><br>
					주소 : <input type="text" id="address" name="address" size=40>
					<br>
					
					<input type="hidden" id="latitude" name="latitude">
					<input type="hidden" id="longitude" name="longitude">
					<input type="hidden" id="category" name="category">
					<input type="hidden" id="imageUrl" name="imageUrl">
					<br>
					<input type="checkbox" id="stored" >
					<label for="stored">저장된것만 표시</label>
				</form>
			</div>
			
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
			
			<div>
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
		</section>
	</div>