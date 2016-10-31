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
			<link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css" />
			<!-- SlidesJS Required: Link to jquery.slides.js -->
  			<script src="<%=request.getContextPath() %>/assets/js/jquery.slides.min.js"></script>
  			<!-- End SlidesJS Required -->
  					<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">

<!-- jQuery Fancy Box Option js -->
  		
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
  			
  			
<!-- Nav -->

<nav id="nav">
	<ul class="list">
		<c:url value="/mainpage" var="mainpage"/>
		<li><a href="${mainpage }">Home</a></li>
		
		<li><a href='/mapMain'>지도 만들기</a></li>
		
		<li><a href="/post?page=1">후기 등록</a></li>
		
		<li><a href="no-sidebar.html">Photo Book</a>
		</li>
		<c:url value="/notice?page=1" var="notice" />
		<li class="dropMenuLi"><a href="${notice }">Board</a>
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