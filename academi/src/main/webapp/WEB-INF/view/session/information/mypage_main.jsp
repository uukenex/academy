<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 	<meta name="author" content="Nathan Searles">
  		
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/phan.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
<title>My Page</title>
</head>
<body>
	<!-- Main -->
	<div id="phanWrapper">
		<div id="phanMain">
			<div class="phanInner">
				<header>
					<h1>My Page</h1>
					<hr>
				</header>

				<section class="tiles">
					<article class="phanStyle1">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>Magna</h2>
							<div class="phanContent">
								<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor
									veroeros et feugiat.</p>
							</div>
						</a>
					</article>
					<div class="2u"></div>
					<article class="phanStyle2">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic02.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>Lorem</h2>
							<div class="phanContent">
								<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor
									veroeros et feugiat.</p>
							</div>
						</a>
					</article>
					<article class="phanStyle6">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic06.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>Veroeros</h2>
							<div class="phanContent">
								<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor
									veroeros et feugiat.</p>
							</div>
						</a>
					</article>
					<div class="2u"></div>
					<article class="phanStyle4">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic04.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>Tempus</h2>
							<div class="phanContent">
								<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor
									veroeros et feugiat.</p>
							</div>
						</a>
					</article>
				</section>
			</div>
		</div>
	</div>
	
	<!-- Scripts -->
			<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/skel.min.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/popMain.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/phanMain.js"></script>
</body>
</html>