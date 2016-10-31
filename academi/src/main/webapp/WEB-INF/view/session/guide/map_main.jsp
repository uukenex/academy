<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="com.example.dto.Goods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 	<meta name="author" content="Nathan Searles">
  		

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
				
					<!-- Map Left Tab Menu -->
						<jsp:include page="map_leftTab_menu.jsp" />
						
					<!-- Map API body part -->
						<div class="8u 12u(moblie) important(moblie)">
							<a href="/doMap" class="fancybox" ></a>
							<section class="middle-content">
							<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
					<!-- Map Right Tab Menu -->
						<jsp:include page="map_rightTab_menu.jsp" />
					<br>
								<jsp:include page="map_api.jsp" />
							</section>
						</div>
						
  					
				</div>
				
				<!-- footer -->
				<jsp:include page="../../nonsession/layout/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
		
	<script>
		$(document).on("ready",function(){
			$(".fancybox").fancybox({
			    autoScale: false,
			    // href : $('.fancybox').attr('id'), // don't need this
			    'width': '55%',
            	'height': "50%",
			    type: 'iframe',
			    padding: 0,
			    closeClick: false,
			    // other options
			    beforeLoad: function () {
			        var url = $(this.element).attr("href");
			        this.href = url
			    }
			}).trigger('click'); // fancybox
			
			
		});
		
		</script>
		
		
</body>
</html>