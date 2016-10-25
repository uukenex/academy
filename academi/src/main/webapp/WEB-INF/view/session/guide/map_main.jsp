<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 	<meta name="author" content="Nathan Searles">
  		
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">

<!-- jQuery Fancy Box Option js -->
  	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
  				
  		<!-- Add mousewheel plugin (this is optional) -->
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.mousewheel-3.0.6.pack.js"></script>
	
		<!-- Add fancyBox main JS and CSS files -->
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox.js"></script>
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox.css" media="screen" />
			
		<!-- Add Button helper (this is optional) -->
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-buttons.css" />
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-buttons.js"></script>
			
		<!-- Add Thumbnail helper (this is optional) -->
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/jquery.fancybox-thumbs.css" />
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-thumbs.js"></script>
			
		<!-- Add Media helper (this is optional) -->
			<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-media.js"></script>

<title>지도 만들기</title>
</head>
<body>
	
	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
		
	<div id="page-wrapper" class="boardPage-Wrapper">
		<div id="main">
			<div class="container">
				<div class="row main-row">
					<div class="2u" style="margin-top: 10em;">
						<p>이 부분은 선택한 지역을 볼 수 있는 탭 메뉴가 들어갈 자리로 자리를 그대로 차지 할 것인지 아님 정말 탭 메뉴로 구조화하여 작성할 것인지 의논이 필요함.</p>
					</div>
					
					<div class="8u 12u(moblie) important(moblie)">
						<section class="middle-content">
							<ul class="mapMainButtonStyle1">
								<li>
									<a id ='doMap' class="fancybox" rel="/doMap">도, 시 지도 선택</a>
								</li>
								<c:url value="/session/mapapi" var="api" />
								<li>
									<a href="${api }">지도 API로 이동</a>
								</li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
		
	<script>
		$(document).on("ready",function(){
			$(".fancybox").fancybox({
			    autoScale: false,
			    // href : $('.fancybox').attr('id'), // don't need this
			    'width': '40%',
            	'height': '20%',
			    type: 'iframe',
			    padding: 0,
			    closeClick: false,
			    // other options
			    beforeLoad: function () {
			        var url = $(this.element).attr("rel");
			        this.href = url
			    }
			}).trigger('click'); // fancybox
			
			
		});
		
		</script>
</body>
</html>