<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 <meta name="author" content="Nathan Searles">
  		
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/astral.css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/astralNoscript.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
	
<title>회원 정보 수정 페이지</title>
</head>
<body class="astralBody">

	<!-- Menubar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp"></jsp:include>
		
	<!-- dropMenu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp"></jsp:include>
	
	<!-- Wrapper -->
		<div id="astralWrapper" style="padding-top: 5em">

			<!-- Nav -->
				<nav	id="astralNav">
					<a href="#informChange" class="astralIcon fa-edit active"><span>회원 정보 수정</span></a>
					<a href="#work" class="astralIcon fa-folder-open"><span>공유 폴더 설정</span></a>
					<a href="#contact" class="astralIcon fa-plane"><span>여행 계획 보기</span></a>
					<a href="#" class="astralIcon fa-list"><span>여행 후기 보기</span></a>
				</nav>
				
			<!-- Main -->
				<div id="astralMain">
					
					<!-- inform_change -->
						<article id="informChange" class="astralPanel">
							<header class="astralHeader">
								<h1>My Page - 회원 정보 수정</h1>
								
								<table class="astralTable">
									<tr>
										<th>아이디</th>
										<td><input type="text" disabled="disabled" value="ID 값 수정 불가"></td>
									</tr>
									<tr>
										<th rowspan="3">비밀번호 변경</th>
										<td>현재 비밀번호 <input type="password" placeholder="현재 비밀번호 입력"></td>
									</tr>
									<tr>
										<td>신규 비밀번호 <input type="password" placeholder="변경 할 비밀번호 입력"></td>
									</tr>
									<tr>
										<td>비밀번호 확인 <input type="password" placeholder="비밀번호 확인"></td>
									</tr>
									<tr>
										<th>이  름</th>
										<td><input type="text" disabled="disabled" value="회원 이름 출력 값"></td>
									</tr>
									<tr>
										<th rowspan="2">E-Mail 변경</th>
										<td><input type="email" value="abc@def.g변경 불가" disabled="disabled"> </td>
									</tr>
									<tr>
										<td><input type="email" placeholder="변경 이메일 입력"></td>
									</tr>
									<tr>
										<th rowspan="2">전화번호 변경</th>
										<td><input type="text" value="010-000-0000" disabled="disabled"></td>
									</tr>
									<tr>
										<td><input type="text" placeholder="전화번호 입력"></td>
									</tr>
									<tr>
										<th rowspan="2">별명 변경</th>
										<td><input type="text" value="별명 출력 값 변경 불가" disabled="disabled"> </td>
									</tr>
									<tr>
										<td><input type="text" placeholder="별명 입력"></td>
									</tr>
								</table>
							</header>
							<a href="#work" class="jumplink astralPic">
								<span class="astralArrow astralIcon fa-chevron-right">
									<span>See my work</span>
								</span>
							</a>
						</article>
				</div>
		</div>
		
		<!-- footer -->
			<jsp:include page="../../nonsession/layout/footer.jsp"></jsp:include>
		
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
			<script src="<%=request.getContextPath() %>/assets/js/astralMain.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/skel-viewport.min.js"></script>
</body>
</html>