<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	
		<title>여행을 부탁해~</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
  		<meta name="author" content="Nathan Searles">
  		
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
			<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
			<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<!-- jQuery Fancy Box Style Sheet -->
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox.css" media="screen" />
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-buttons.css" />
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-thumbs.css" />
		
		<!-- Font Icon Style -->
			<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
	
	</head>
	<body class="homepage">
		<div id="page-wrapper">
		
			<!-- Fancy Header -->
			<jsp:include page="../layout/dropMenu_header.jsp"></jsp:include>

			<!-- Header -->
				<div id="header" class="drop_menu_visiable">
					
					<!-- Inner -->
						<div class="inner">
							<header>
								<h1 id="h1title"><a href="index.html" id="logo">여행을 부탁해</a></h1>
								<hr />
								<p>국내 여행자들을 위한 Travel Solution</p>
							</header>
							<footer>
								<a href="#banner" class="button circled scrolly">시작하기</a>
							</footer>
						</div>

					<!-- Nav -->
						<jsp:include page="../layout/menubar_header.jsp"></jsp:include>

				</div>
 
			<!-- Banner -->
				<section id="banner">
					<header>
						<!-- <h2>여기서부터는 !!!<strong>사진 슬라이드!</strong>.</h2>
						<p>
							각 사진마다 자세히 보기 가능!
						</p> -->
						
						<!-- Image Slider -->
					
						<div class="sliderContainer">
    						<div id="slides">
      							<img src="<%=request.getContextPath() %>/images/cloud.jpg" alt="">
     							<img src="<%=request.getContextPath() %>/images/pics01.jpg" alt="">
     							<img src="<%=request.getContextPath() %>/images/pics02.jpg" alt="">
      							<img src="<%=request.getContextPath() %>/images/pics03.jpg" alt="">
      							<a href="#" class="slidesjs-previous slidesjs-navigation">
      								<i class="icon-chevron-left icon-large"></i>
      							</a>
      							<a href="#" class="slidesjs-next slidesjs-navigation">
      								<i class="icon-chevron-right icon-large"></i>
      							</a>
    						</div>
  						</div>
					</header>
				</section>
  				
			<!-- Main -->
				<div class="wrapper style2">
				</div>

			<!-- Features -->
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2>여기서 부터는 추천 후기 순으로 띄워주는 Part</h2>
							<p>우아아아앙 이거 구현하고 나면 header, footer 나누면 된다아아</p>
						</header>

				<!-- 추천 후기 4개 띄워주는 Code -->
					<section id="four" class="fancyWrapper alt fancyStyle1">
						<div class="fancyInner">
							<section class="fancyFeatures">
								<article>
									<a href="#" class="fancyImage"><img src="<%=request.getContextPath() %>/images/pics06.jpg" alt="" /></a>
									<h3 class="major">여행을 부탁해 경로 예시 1</h3>
									<p id="fancyPFont">Lorem ipsum dolor sit amet, consectetur adipiscing
										vehicula id nulla dignissim dapibus ultrices.</p>
									<a href="#" class="fancySpecial">Learn more</a>
								</article>
								<article>
									<a href="#" class="fancyImage"><img src="<%=request.getContextPath() %>/images/pics01.jpg" alt="" /></a>
									<h3 class="major">여행을 부탁해 경로 예시 2</h3>
									<p id="fancyPFont">Lorem ipsum dolor sit amet, consectetur adipiscing
										vehicula id nulla dignissim dapibus ultrices.</p>
									<a href="#" class="fancySpecial">Learn more</a>
								</article>
								<article>
									<a href="#" class="fancyImage"><img src="<%=request.getContextPath() %>/images/pics02.jpg" alt="" /></a>
									<h3 class="major">여행을 부탁해 경로 예시 3</h3>
									<p id="fancyPFont">Lorem ipsum dolor sit amet, consectetur adipiscing
										vehicula id nulla dignissim dapibus ultrices.</p>
									<a href="#" class="fancySpecial">Learn more</a>
								</article>
								<article>
									<a href="#" class="fancyImage"><img src="<%=request.getContextPath() %>/images/pics03.jpg" alt="" /></a>
									<h3 class="major">여행을 부탁해 경로 예시 4</h3>
									<p id="fancyPFont">Lorem ipsum dolor sit amet, consectetur adipiscing
										vehicula id nulla dignissim dapibus ultrices.</p>
									<a href="#" class="fancySpecial">Learn more</a>
								</article>
							</section>
							<ul class="fancyActions">
								<li><a href="#" class="fancyButton">Browse All</a></li>
							</ul>
						</div>
					</section>
				</section>

			</div>

		<!-- Footer -->
				<jsp:include page="../layout/footer.jsp"></jsp:include>
		</div>

		
  			
  			<!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
  				<script>
    				$(function() {
      					$('#slides').slidesjs({
        					width: 940,
       						height: 528,
       						navigation: false,
        					start: 1,
        					pagination: {
        						active: true
        					},
        					play: {
        						active: true,
        						auto: true,
        						interval: 4000,
        						swap: true
        					}
     					});
   					});
  				</script>
  			<!-- End SlidesJS Required -->
  			
  			

	</body>
</html>