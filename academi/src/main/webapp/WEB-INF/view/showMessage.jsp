<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
				<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
				<!-- Add jQuery library -->
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="/js/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="/js/source/jquery.fancybox.js"></script>
	<link rel="stylesheet" type="text/css" href="/js/source/jquery.fancybox.css" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/js/source/helpers/jquery.fancybox-buttons.css" />
	<script type="text/javascript" src="/js/source/helpers/jquery.fancybox-buttons.js"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/js/source/helpers/jquery.fancybox-thumbs.css" />
	<script type="text/javascript" src="/js/source/helpers/jquery.fancybox-thumbs.js"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="/js/source/helpers/jquery.fancybox-media.js"></script>
		
	</head> 
	<body>
	
		<br>
		<br>
		<h2>Hello Jsp</h2>
		<a class="links" href='#12'>Click to enter</a>
		<br>
		<a id ='12' class="links" 
		href='/images/pics01.jpg' >ccc</a>
		<br>
		<br>
		<br>
		<script>
		$(document).ready(function() {
		        $(".links").fancybox();
		      
		});
		</script>
	</body>
</html>
