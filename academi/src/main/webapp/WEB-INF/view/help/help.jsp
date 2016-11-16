<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/post_script.css">
<title>사이트 이용방법</title>
<style>
img{
border:2px solid #f56a6a;
}

@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

</style>
</head>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../nonsession/layout/menubar_header.jsp" />
		
	<!-- How to use this site body part -->
	
		<div id="page-wrapper" class="boardPage-Wrapper">
			<div id="main">
				<div class="container">
					<div class="row main-row">
					
						<div class="1u"></div>
						<div class="10u how_using_div">
							<h3>사이트 이용방법</h3>
							<ul class="using_tab">
								<li>
									<a href="javascript:void(0)" class="using_tablinks"
										onclick="openUsing(event, 'using1')">
										일정 만들기1
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" class="using_tablinks"
										onclick="openUsing(event, 'using2')">
										일정 만들기2
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" class="using_tablinks"
										onclick="openUsing(event, 'using3')">
										일정 만들기3
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" class="using_tablinks"
										onclick="openUsing(event, 'using4')">
										포토북1
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" class="using_tablinks"
										onclick="openUsing(event, 'using5')">
										포토북2
									</a>
								</li>
							</ul>
							
							<div id="using1" class="using_tabcontent">
								<h4>일정 만들기1</h4>
								<ul>
									<li><img src="/images/help/using01.png" ></li>
								</ul>
							</div>
							
							<div id="using2" class="using_tabcontent">
								<h4>일정 만들기2</h4>
								<ul>
									<li><img src="/images/help/using02.png"></li>
								</ul>
							</div>
							
							<div id="using3" class="using_tabcontent">
								<h4>일정 만들기3</h4>
								<ul>
									<li><img src="/images/help/using03.png"></li>
									
								</ul>
							</div>
							
							<div id="using4" class="using_tabcontent">
								<h4>포토북1</h4>
								<ul>
									<li><img src="/images/help/using04.png"></li>
								</ul>
							</div>
							
							<div id="using5" class="using_tabcontent">
								<h4>포토북2</h4>
								<ul>
									<li><img src="/images/help/using05.png"></li>
								</ul>
							</div>
							
						</div>
					</div>
					
					<!-- footer -->
						<jsp:include page="../nonsession/layout/footer.jsp"></jsp:include>
				</div>
			</div>
		</div>

<!-- 

	<h1>일정 만들기</h1>
	<img src="/images/help/plan01.png" >
	<p>일정만들기로 들어가면 지도가 뜹니다</p>
	<p>분홍색은 등록된 후기가 많은 지역입니다</p>
	<p>지역을 클릭하게되면 지도api가 활성화 됩니다</p>
	<img src="/images/help/plan02.png">
	<p>화면 우측에 검색과 추천경로를 띄워줍니다</p>
	<p>추천경로명을 누르게되면 해당 후기글로 이동합니다</p>
	<p>위의 돋보기를 눌러서 비활성화 시킬 수 있습니다</p>
	<img src="/images/help/plan03.png">
	<p>지도상의 마커를 클릭 후 선택하기를 누르면</p>
	<p>화면 좌측에 경로가 담깁니다</p>
	<p>mypage에 저장을 누르면 저장됩니다</p>
	<div style="height: 5em;"></div>
	
	<h1>포토북</h1>
	<img src="/images/help/photo01.png">
	<p>포토북에서는 폴더별 공유를 할 수 있습니다</p>
	<p>첫 화면에서는 새폴더 만들기,알집으로 다운로드,삭제가 가능합니다</p>
	<p>폴더를 더블클릭하면 해당 폴더로 이동합니다</p>
	<img src="/images/help/photo02.png">
	<p>폴더 안으로 들어오면 사진업로드와 올려진 파일의 다운로드,삭제가 가능합니다</p>
	<p>이전 폴더로 돌아갈 수 있습니다</p>
 -->

</body>


<script>
	function openUsing(evt, using_number) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("using_tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("using_tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }
	    document.getElementById(using_number).style.display = "block";
	    evt.currentTarget.className += " active";
	}

</script>
</html>