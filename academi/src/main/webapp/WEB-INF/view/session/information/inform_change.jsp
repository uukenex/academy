<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 <meta name="author" content="Nathan Searles">
  		
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/astral.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
	
<title>회원 정보 수정 페이지</title>
</head>
<body class="astralBody">
	<!-- Wrapper -->
		<div id="astralWrapper">
			
			<!-- Nav -->
				<nav	id="astralNav">
					<a href="#informChange" class="astralIcon fa-edit active"><span>회원 정보 수정</span></a>
					<a href="#work" class="astralIcon fa-folder-open"><span>공유 폴더 설정</span></a>
					<a href="#contact" class="astralIcon fa-plane"><span>여행 계획 보기</span></a>
					<a href="#" class="astralIcon fa-list"><span>여행 후기 보기</span></a>
				</nav>
				
			<!-- Main -->
				<div id="astralMain">
					
					<!-- inform_change -->
						<article id="informChange" class="astralPanel">
							<header class="astralHeader">
								<h1>My Page - 회원 정보 수정</h1>
							</header>
						</article>
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
			<script src="<%=request.getContextPath() %>/assets/js/astralMain.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/skel-viewport.min.js"></script>
</body>
</html>