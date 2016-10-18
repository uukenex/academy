<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

	<!-- Fancy Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp"></jsp:include>
	
	<!-- Header Nav-->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp"></jsp:include>
		
	<!-- Main -->
	<div id="phanWrapper">
		<div id="phanMain">
			<div class="phanInner">
				<header>
					<h1 class="mypageHeader">My Page</h1>
					<hr>
				</header>

				<section class="tiles">
					<article class="phanStyle1">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic01.jpg" alt="" />
						</span>
						<c:url value="/informChange" var="informChange"/>
						<a href="${informChange }">
							<h2>회원 정보 수정</h2>
							<div class="phanContent">
								<p>회원의 정보를 수정 할 수 있습니다.</p>
							</div>
						</a>
					</article>

					<article class="phanStyle2">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic02.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>공유 폴더 설정</h2>
							<div class="phanContent">
								<p>계획과 사진을 공유할 수 있는 회원을 설정할 수 있습니다.</p>
							</div>
						</a>
					</article>
					<article class="phanStyle6">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic06.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>여행 계획 보기</h2>
							<div class="phanContent">
								<p>회원이 설정한 여행 계획들을 볼 수 있습니다.</p>
							</div>
						</a>
					</article>
					
					<article class="phanStyle4">
						<span class="phanImage"> <img src="<%=request.getContextPath() %>/images/pic04.jpg" alt="" />
						</span> <a href="generic.html">
							<h2>여행 후기 보기</h2>
							<div class="phanContent">
								<p>회원이 작성한 여행 후기들을 볼 수 있습니다.</p>
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