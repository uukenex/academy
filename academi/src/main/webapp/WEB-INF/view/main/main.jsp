<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</head>
<body>
	<jsp:include page="<%=request.getContextPath() %>/layout/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div id="banner" class="12u">
				<div class="container">
					<a href="#">
						<img alt="MainPhoto" src="images/pics01.jpg">
					</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="<%=request.getContextPath() %>/layout/footer.jsp"></jsp:include>
</body>
</html>