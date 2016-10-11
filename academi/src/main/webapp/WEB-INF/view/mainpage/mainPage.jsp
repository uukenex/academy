<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>여행을 부탁해~!</title>

<link href="http://fonts.googleapis.com/css?family=Oswald:400,300" 
		rel="stylesheet" type="text/css" />

<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/js/skel.min.js"></script>
<script src="<%=request.getContextPath() %>/js/skel-panels.min.js"></script>
<script src="<%=request.getContextPath() %>/js/init.js"></script>

<link href="<%=request.getContextPath() %>/css/style_desktop.css"
		type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/css/style.css"
		type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/css/skel-noscript.css"
		type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/bxslider/jquery.bxslider.css"
		type="text/css" rel='stylesheet' />

</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<br>
	<div class="container">
		<div class="row">
			<div id="banner" class="12u">
				<div class="container" align="center">
					<ul class="bxslider">
						<li><img src="<%=request.getContextPath() %>/images/pics01.jpg"></li>
						<li><img src="<%=request.getContextPath() %>/images/pics02.jpg"></li>
						<li><img src="<%=request.getContextPath() %>/images/pics03.jpg"></li>
						<li><img src="<%=request.getContextPath() %>/images/pics06.jpg"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Slider image 하단의 추천 후기 -->
	<div id="wrapper">
		<div class="container" id="marketing">
			<div	class="row divider">
				<div class="4u">
					<section>
						<h2 class="title">ROUTE01 Day01</h2>
						<p><a href="#"><img alt="" src="<%=request.getContextPath()%>/images/route01.jpg"></a></p>
						<p class="subtitle">서울특별시 -> 인천광역시 -> 경기도</p>
						<p class="button-style2"><a href="#">More than</a></p>
					</section>
				</div>
				<div>
					<section>
						<p><img alt="" src="<%=request.getContextPath()%>/images/div_bar_vertical.png"></p>
					</section>
				</div>
				<div class="4u">
					<section>
						<h2 class="title">ROUTE02 두 번째 날</h2>
						<p><a href="#"><img alt="" src="<%=request.getContextPath()%>/images/route02.jpg"></a></p>
						<p class="subtitle">서울특별시 -> 인천광역시 -> 경기도</p>
						<p class="button-style2"><a href="#">More than</a></p>
					</section>
				</div>
				<div>
					<section>
						<p><img alt="" src="<%=request.getContextPath()%>/images/div_bar_vertical.png"></p>
					</section>
				</div>
				<div class="4u">
					<section>
						<h2 class="title">ROUTE03 Day03</h2>
						<p><a href="#"><img alt="" src="<%=request.getContextPath()%>/images/pics02.jpg"></a></p>
						<p class="subtitle">서울특별시 -> 인천광역시 -> 경기도</p>
						<p class="button-style2"><a href="#">More than</a></p>
					</section>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>

<script src="http://code.jquery.com/jquery.js"></script>
<script src="<%=request.getContextPath() %>/bxslider/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function(){
		$(".bxslider").bxSlider({
			auto: true,
			autoControls: true
		});
	});
</script>
</html>