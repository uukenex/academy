<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- Fancy Header -->

	<header id="fancyHeader" class="alt">
		<h1>
			<a href="#">여행을 부탁해!</a>
		</h1>
		<nav>
			<a href="#fancyMenu">Menu</a>
		</nav>
	</header>


<!-- Fancy Menu Box -->

	<nav id="fancyMenu">
		<div class="fancyInner">
			<h2>Menu</h2>
			<ul class="links">
				<c:url value="/mainpage" var="mainpage" />
				<li><a href="${mainpage }">Home</a></li>
				<c:url value="/login" var="login" />
				<li><a href="${login }">Log In</a></li>
				<c:url value="/mypageMain" var="mypageMain" />
				<li><a href="${mypageMain }">My Page</a></li>
				<li><a href="#">Photo Book</a></li>
				<c:url value="/join" var="join" />
				<li><a href="${join }">회원 가입</a></li>
			</ul>
			<a href="#" class="close">Close</a>
		</div>
	</nav>
	
	
<!-- Scripts -->
	<script src="<%=request.getContextPath() %>/assets/js/skel.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/jquery.scrollex.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/util.js"></script>
	
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="<%=request.getContextPath() %>/assets/js/popMain.js"></script>