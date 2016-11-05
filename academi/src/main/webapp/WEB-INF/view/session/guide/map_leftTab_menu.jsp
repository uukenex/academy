<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- Make a map Left Tap Menu -->
	<div class="2u 12u(moblie) map_left_tab" style="margin-bottom: 40em;">
		<!-- Tab 설정 -->
			<ul class="mapLeftTab" id="mapLeftTab">
				<li>선택한 지역</li>
			</ul>
			
			<div class="mapLeftTab_con" id="mapLeftTab_con">
			
				<!-- ---------------------- 선택한 지역 보기 Section ---------------------------------- -->
				
				<section id="selectRegionForm">
						
						<div id="storedCheckDiv">
							<input type="checkbox" id="stored" class="css-checkbox lrg">
							<label for="stored" name="checkbox69_lbl" class="css-label lrg vlad">선택한 지역만 보기</label>
						</div>
						
						<output id="result">
						</output>
						
							<form method="post">
							<input type="hidden" value="${routeNo }" name="routeNo">
							
							<!--일반 지도api로 들어갔을경우 : -->
							<c:if test="${empty routeNo }">
								<input type="submit" value="MyPage에 저장" formaction="/mapSave" class="routeForDB">
							</c:if> 
							
							<!--번호검색으로 api로 들어갔을경우 : -->
							<c:if test="${!empty routeNo }">
								<input type="text" name ="routeName" value="${routeName }">
								<textarea name="routeContent" rows="30" cols="30" >${routeContent }</textarea>
								<input type="submit" id="" value="수정" formaction="/mapUpdate">
								<input type="submit" id="" value="삭제" formaction="/mapDelete">
							</c:if>
							<label id="informMapForDB">저장하지않으면 데이터가 소실됩니다.</label>
							</form>
							
				</section>
				
				
				<!-- ----------------- 도, 시 찾기 window.open 띄우기 -------------------------- -->
<!-- 			
				<section>
					<a class="fancybox" id="searchRegionButton" href="/doMap">도 지도 보기</a>
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
								<li class="mapDropdownName_txt" >
									선택해주세요
									<i class="fa fa-hand-o-up"></i>
								</li>
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
					<input type="text" id="keyword" placeholder="Search..">
					<br/>
					<input type="button" id="search" class="mapRegionSearchButton" value="찾기">
				</section>
 -->				
		
			</div>
<%-- 	
		<section class="boardSection">
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
 --%>
 
 		<input type="hidden" id="title" name="title" ><br>
		<input type="hidden" id="address" name="address" size=40><br>
		<input type="hidden" id="latitude" name="latitude">
		<input type="hidden" id="longitude" name="longitude">
		<input type="hidden" id="category" name="category">
		<input type="hidden" id="imageUrl" name="imageUrl">

	</div>
	
	<script>$(document).on("ready",function(){
		console.log($("#AT4"));	
	});
	
	
		$(function () {	
			tab('#mapLeftTab',0);	
		});
	
		function tab(e, num){
		    var num = num || 0;
		    var menu = $(e).children();
		    var con = $(e+'_con').children();
		    var select = $(menu).eq(num);
		    var i = num;
	
		    select.addClass('on');
		    con.eq(num).show();
	
		    menu.click(function(){
		        if(select!==null){
		            select.removeClass("on");
		            con.eq(i).hide();
		        }
	
		        select = $(this);	
		        i = $(this).index();
	
		        select.addClass('on');
		        con.eq(i).show();
		    });
		}

				$(".routeForDB").on("click",function(){
					if($("#result").val()==''){
						alert("여행경로를 설정해주세요!!");
						return false;
					}					
				})
				
				
				
	
	</script>