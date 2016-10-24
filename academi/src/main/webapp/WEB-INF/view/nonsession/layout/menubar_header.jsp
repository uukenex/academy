<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
  			
  			<!-- jQuery Fancy Box Option js -->
  			
  				<!-- Add mousewheel plugin (this is optional) -->
					<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.mousewheel-3.0.6.pack.js"></script>
				
				<!-- Add fancyBox main JS and CSS files -->
					<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox.js"></script>
				
				<!-- Add Button helper (this is optional) -->
					<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-buttons.js"></script>
				
				<!-- Add Thumbnail helper (this is optional) -->
					<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-thumbs.js"></script>
				
				<!-- Add Media helper (this is optional) -->
					<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.fancybox-media.js"></script>
					<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
					
					
			<!-- jQuery Fancy Box Source -->
			
				<script type="text/javascript">
					$(document).ready(function() {
						/*
						 *  Simple image gallery. Uses default settings
						 */
			
						$('.fancybox').fancybox();
			
						/*
						 *  Different effects
						 */
			
						// Change title type, overlay closing speed
						$(".fancybox-effects-a").fancybox({
							helpers: {
								title : {
									type : 'outside'
								},
								overlay : {
									speedOut : 0
								}
							}
						});
			
						// Disable opening and closing animations, change title type
						$(".fancybox-effects-b").fancybox({
							openEffect  : 'none',
							closeEffect	: 'none',
			
							helpers : {
								title : {
									type : 'over'
								}
							}
						});
			
						// Set custom style, close if clicked, change title type and overlay color
						$(".fancybox-effects-c").fancybox({
							wrapCSS    : 'fancybox-custom',
							closeClick : true,
			
							openEffect : 'none',
			
							helpers : {
								title : {
									type : 'inside'
								},
								overlay : {
									css : {
										'background' : 'rgba(238,238,238,0.85)'
									}
								}
							}
						});
			
						// Remove padding, set opening and closing animations, close if clicked and disable overlay
						$(".fancybox-effects-d").fancybox({
							padding: 0,
			
							openEffect : 'elastic',
							openSpeed  : 150,
			
							closeEffect : 'elastic',
							closeSpeed  : 150,
			
							closeClick : true,
			
							helpers : {
								overlay : null
							}
						});
			
						/*
						 *  Button helper. Disable animations, hide close button, change title type and content
						 */
			
						$('.fancybox-buttons').fancybox({
							openEffect  : 'none',
							closeEffect : 'none',
			
							prevEffect : 'none',
							nextEffect : 'none',
			
							closeBtn  : false,
			
							helpers : {
								title : {
									type : 'inside'
								},
								buttons	: {}
							},
			
							afterLoad : function() {
								this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
							}
						});
			
			
						/*
						 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
						 */
			
						$('.fancybox-thumbs').fancybox({
							prevEffect : 'none',
							nextEffect : 'none',
			
							closeBtn  : false,
							arrows    : false,
							nextClick : true,
			
							helpers : {
								thumbs : {
									width  : 50,
									height : 50
								}
							}
						});
			
						/*
						 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
						*/
						$('.fancybox-media')
							.attr('rel', 'media-gallery')
							.fancybox({
								openEffect : 'none',
								closeEffect : 'none',
								prevEffect : 'none',
								nextEffect : 'none',
			
								arrows : false,
								helpers : {
									media : {},
									buttons : {}
								}
							});
			
						/*
						 *  Open manually
						 */
			
						$("#fancybox-manual-a").click(function() {
							$.fancybox.open('1_b.jpg');
						});
			
						$("#fancybox-manual-b").click(function() {
							$.fancybox.open({
								href : 'iframe.html',
								type : 'iframe',
								padding : 5
							});
						});
			
						$("#fancybox-manual-c").click(function() {
							$.fancybox.open([
								{
									href : '1_b.jpg',
									title : 'My title'
								}, {
									href : '2_b.jpg',
									title : '2nd title'
								}, {
									href : '3_b.jpg'
								}
							], {
								helpers : {
									thumbs : {
										width: 75,
										height: 50
									}
								}
							});
						});
			
			
					});
				</script>

<!-- Nav -->

<nav id="nav">
	<ul>
		<c:url value="/mainpage" var="mainpage"/>
		<li><a href="${mainpage }">Home</a></li>
		<c:url value="/doMap" var="doMap" />
		<li><a class="fancybox" href="${doMap }">지도 만들기</a></li>
		
		<li><a href="right-sidebar.html">후기 등록</a></li>
		
		<li><a href="no-sidebar.html">Photo Book</a>
		</li>
		<c:url value="/notice?page=1" var="notice" />
		<li><a href="${notice }">Board</a>
			<ul>
				<li><a href="${notice }">공지사항</a></li>
				<c:url value="/qna?page=1" var="qna" />
				<li><a href="${qna }">Q & A</a></li>
				<c:url value="/free?page=1" var="free" />
				<li><a href="${free }">자유 게시판</a></li>
				<li><a href="#">사이트 이용방법</a></li>
			</ul></li>
	</ul>
</nav>