<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>두 번째 메인화면</title>
<link href="https://fonts.googleapis.com/css?family=Bungee+Inline" rel="stylesheet">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.UI.min.js"></script>
<script src="<%=request.getContextPath()%>/js/lavalamp.js"></script>

<link href="<%=request.getContextPath()%>/css/lavalamp.css"
		type="text/css" rel="stylesheet" />
</head>
<body>
	<div>
		<nav	id="navigation2">
			<ul>
				<li>LOGIN</li>
				<li>JOIN</li>
				<li>My Page</li>
			</ul>
		</nav>
		<h1>여행을 부탁해~</h1>
	</div>
	<div id="page-wrap">
		<nav id="navigation">
			<ul class="clearfix">
				<li class="focus"><a href="#">HOME</a></li>
				<li><a href="#">지도 만들기</a></li>
				<li><a href="#">후기 등록</a></li>
				<li><a href="#">Photo Book</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>