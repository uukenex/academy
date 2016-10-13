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
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
	
	</head>
	<body class="homepage">
		<div id="page-wrapper">
		
			<!-- Fancy Header -->
			<header id="fancyHeader" class="alt">
				<h1><a href="#">여행을 부탁해!</a></h1>
					<nav>
						<a href="#fancyMenu">Menu</a>
					</nav>
			</header>
			
			<!-- Fancy Menu Box -->
				<nav id="fancyMenu">
					<div class="fancyInner">
						<h2>Menu</h2>
						<ul class="links">
							<li><a href="#">Home</a></li>
							<li><a href="#">Generic</a></li>
							<li><a href="#">Elements</a></li>
							<li><a href="#">Log In</a></li>
							<li><a href="#">Sign Up</a></li>
						</ul>
						<a href="#" class="close">Close</a>
					</div>
				</nav>

			<!-- Header -->
				<div id="header">
					
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
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="left-sidebar.html">지도 만들기</a></li>
								<li><a href="right-sidebar.html">후기 등록</a></li>
								<li><a href="no-sidebar.html">Photo Book</a></li>
								<li>
									<a href="#">Board</a>
									<ul>
										<li><a href="#">Lorem ipsum dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam dolore nisl</a></li>
										<li>
											<a href="#">And a submenu &hellip;</a>
											<ul>
												<li><a href="#">Lorem ipsum dolor</a></li>
												<li><a href="#">Phasellus consequat</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>
							</ul>
						</nav>

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
						
					</section>

				</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">

						</div>
						<hr />
						<div class="row">
							<div class="12u">

								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>Nisl turpis nascetur interdum?</h3>
										</header>
										<p>Urna nisl non quis interdum mus ornare ridiculus egestas ridiculus lobortis vivamus tempor aliquet.</p>
										<ul class="icons">
											<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
											<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
										</ul>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>

							</div>

						</div>
					</div>
				</div>
		</div>

		<!-- Scripts -->
			<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/jquery.dropotron.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/jquery.scrolly.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/jquery.onvisible.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/skel.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/jquery.scrollex.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/popMain.js"></script>
			
			<!-- SlidesJS Required: Link to jquery.slides.js -->
  			<script src="<%=request.getContextPath() %>/assets/js/jquery.slides.min.js"></script>
  			<!-- End SlidesJS Required -->
  			
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