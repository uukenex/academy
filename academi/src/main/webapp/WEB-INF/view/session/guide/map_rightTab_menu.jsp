<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Map Right Tab Menu -->

	<!-- page div -->
		
		<div id="mapRightTab">
			<a id="mapRightToggleButton">
				<i class="fa fa-align-justify fa-2x"></i>
			</a>
			
			<div id="mapRightToggleMenu">
				<a id="searchRegionList1" class="mapRightList">
					----- 도, 시 찾기 <i class="fa fa-angle-double-down"></i> -----
				</a>
				
				<div id="mapSearchSection">
					<a class="fancybox" id="searchRegionButton" href="/domap">도*시 지도 보기</a>
					<br>
					<select id="select" style="display: none;">
						<option value="AT4" >관광지</option>
						<option value="CT1">문화시설</option>
						<option value="AD5">숙박업소</option>
						<option value="FD6">음식점</option>
						<option value="CE7">카페</option>
						<option value="HP8">병원</option>
						<option value="PM9">약국</option>
						<option value="OL7">주유소</option>
					</select>
					
					<div class="mapMenuDropdown">
						<div class="mapMenuList">
							<ul class="mapDropdownName">
								<li class="mapDropdownName_txt" >선택</li>
								<li class="mapDropdownName_icon">
									<i class="fa fa-chevron-down"></i>
								</li>
							</ul>
							<ul class="mapMenuListContent">
								<li>
									<a id="관광지">
										<i class="fa fa-font-awesome"></i>
										관광지</a></li>
								<li>
									<a id="문화시설">
										<i class="fa fa-ticket"></i>
										문화시설</a></li>
								<li>
									<a id="숙박업소">
										<i class="fa fa-bed"></i>
										숙박업소</a></li>
								<li>
									<a id="음식점">
										<i class="fa fa-cutlery"></i>
										음식점</a></li>
								<li>
									<a id="카페">
										<i class="fa fa-coffee"></i>
										카페</a></li>
								<li>
									<a id="병원">
										<i class="fa fa-hospital-o"></i>
										병원</a></li>
								<li>
									<a id="약국">
										<i class="fa fa-medkit"></i>
										약국</a></li>
								<li>
									<a id="주유소">
										<i class="fa fa-car"></i>
										주유소</a></li>
							</ul>
						</div>
						<input type="text" id="keyword" placeholder="Search..">
					</div>
										
					<script type="text/javascript">
					$(document).on("ready",function(){
						$("#관광지").on("click",function(){
							$("#select").val("AT4");
							
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-font-awesome'></i>&emsp;관광지";
							console.log($(".mapDropdownName_txt"));
						})
						$("#문화시설").on("click",function(){
							$("#select").val("CT1");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-ticket'></i>&emsp;문화시설";
						})
						$("#숙박업소").on("click",function(){
							$("#select").val("AD5");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-bed'></i>&emsp;숙박업소";
						})
						$("#음식점").on("click",function(){
							$("#select").val("FD6");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-cutlery'></i>&emsp;음식점";
						})
						$("#카페").on("click",function(){
							$("#select").val("CE7");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-coffee'></i>&emsp;카페";
						})
						$("#병원").on("click",function(){
							$("#select").val("HP8");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-hospital-o'></i>&emsp;병원";
						})
						$("#약국").on("click",function(){
							$("#select").val("PM9");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-medkit'></i>&emsp;약국";
						})
						$("#주유소").on("click",function(){
							$("#select").val("OL7");
							$(".mapDropdownName_txt")[0].innerHTML =
								"<i class='fa fa-car'></i>&emsp;주유소";
						})
						
					});
					</script>
					
					<script>
					//이름 영역을 클릭
					    $('.mapMenuList').click(function(){
					        $('.mapMenuListContent').slideToggle(); 
					        $(this).find('.mapDropdownName_txt').toggleClass('active'); 
					        $(this).find('li.mapDropdownName_icon i').toggleClass("fa-chevron-down fa-chevron-up");
					    });
					 
					    //드랍다운메뉴 외부 영역을 클릭하면 펼쳐진 메뉴가 닫힘
					    $(document).click(function (e) {
					        e.stopPropagation();
					        var container = $(".mapMenuList");
					        //check if the clicked area is dropDown or not
					        if (container.has(e.target).length === 0) {
					            $('.mapMenuListContent').slideUp();
					        }
					    });

					</script>
					
					<br/>
					<input type="button" id="search" class="mapRegionSearchButton" value="찾기">
				</div>
				
				<br/>
				<a id="bestRouteButton" class="mapRightList">
					----- 추천 경로 <i class="fa fa-angle-double-down"></i> -----
				</a>
				<div id="bestRouteSection">
					<p>1. Best Route 1</p>
					<p>2. Best Route 2</p>
					<p>3. Best Route 3</p>
				</div>
				
			</div>
		</div>
		
		<script>
			$("#mapRightToggleButton").click(function(){
				$("#mapRightToggleMenu").toggle("slide", {direction: 'right'}, 500);
			});
		</script>
		
		<script>
			$(document).ready(function(){
				$("#searchRegionList1").click(function(){
					$("#mapSearchSection").toggle("slide", {direction: 'up'}, 1000);
				});
			});
			
			$(document).ready(function(){
				$("#bestRouteButton").click(function(){
					$("#bestRouteSection").toggle("slide", {direction: 'up'}, 1000);
				});
			});
		</script>
