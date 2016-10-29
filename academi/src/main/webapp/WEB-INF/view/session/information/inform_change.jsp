<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
								<form method="post" id="myform" action="/updateUser">
								<table class="astralTable">
								
									<tr>
										<td><input type="submit" value="변경하기">
										<th>아이디</th>
										<td><input type="text"  value="${Users.userId }" name="changeId" readonly></td>
									</tr>
									<tr>
										<th rowspan="3">비밀번호 변경</th>
										<td>현재 비밀번호 <input type="password" placeholder="현재 비밀번호 입력" id="currentPass" name="currentPass"><b> ※변경시 필수 입력사항</b></td>
									</tr>
									<tr>
										<td>신규 비밀번호 <input type="password" placeholder="변경 할 비밀번호 입력" name=changePass id=changePass></td>
									</tr>
									<tr>
										<td>비밀번호 확인 <input type="password" placeholder="비밀번호 확인" id=changePassCk></td>
									</tr>
									<tr>
										<th>이  름</th>
										<td><input type="text" value="${Users.userName }" readonly></td>
									</tr>
									<tr>
										<th rowspan="2">E-Mail 변경</th>
										<td><input type="email" value="${Users.userEmail }" name="currentEmail" readonly> </td>
									</tr>
									<tr>
										<td><input type="email" placeholder="변경 이메일 입력" name="changeEmail" id="changeEmail"></td>
									</tr>
									<tr>
										<th rowspan="2">전화번호 변경</th>
										<td><input type="text" value="${Users.userPhone }" name="currentPhone" readonly></td>
									</tr>
									<tr>
										<td><input type="text" placeholder="전화번호 입력" name="changePhone" id="changePhone"></td>
									</tr>
									<tr>
										<th rowspan="2">별명 변경</th>
										<td><input type="text" value="${Users.userNick }" name="currentNick"  readonly> </td>
									</tr>
									<tr>
										<td><input type="text" placeholder="별명 입력" name="changeNick" id="changeNick"></td>
										<td><input type="button" value="중복확인" id="checkNick"></td>
									</tr>
								</table>
								</form>
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
			<script src="<%=request.getContextPath() %>/assets/js/astralMain.js"></script>
			<script src="<%=request.getContextPath() %>/assets/js/skel-viewport.min.js"></script>
			
</body>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="validation/dist/jquery.validate.min.js"></script>
	<script>
	
	//비밀번호 변경 시 입력 되었는지 체크
		$("#myform").on({
			"submit" : function(e){
				e.preventDefault();
				if($("#changePassCk").val() == $("#changePass").val()){
					if($("#currentPass").val()== "${Users.userPass }"){
						if($("#changeNick").val()!='' && checkVal==false){
							alert("중복확인을 해주세요");
							}else{
								this.submit();
							}
					}else{
						alert("현재 비밀번호를 확인하세요.")
					}
				}else{
					alert("비밀번호와 비밀번호 확인의 값이 다릅니다.");
				}
			}
				
		});
	
		
		$("#changePass,#changePassCk").on("keyup", function() {
			if ($("#changePass").val() != $("#changePassCk").val()) {
				$("#changePassCk").css("background", "rgb(255,150,150)");
			} else {
				$("#changePassCk").css("background", "rgb(120,255,255)");
			}
		})

		$("#changeEmail").on("keyup", function() {
			var regEmail = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/i;
			if ($(this).val().trim().match(regEmail)) {
				$(this).css("background", "rgb(120,255,255)");
			} else {
				$(this).css("background", "rgb(255,150,150)");
			}
		})
		$("#changePhone").on("keyup", function() {
			var regPhone = /^((010))[0-9]{8}$/;
			if ($(this).val().trim().match(regPhone)) {
				$(this).css("background", "rgb(120,255,255)");
			} else {
				$(this).css("background", "rgb(255,150,150)");
			}
		})
		
	//벨리데이션
	
	
		var checkVal = false;
		
		
	<c:url value="/checkNick" var="checkNick" />
		$("#checkNick").on("click", function() {
			var userNick = $("#changeNick").val().trim();	
			$.ajax({
				type : "get",
				url : "${checkNick}",
				data : {
					"userNick" : userNick
				},
				success : function(res) {
					if (res == 0) {
						alert("사용가능한 별명입니다.");
						checkVal = true;
					} else {
						alert("이미사용중인 별명입니다.");
						checkVal = false;
					}
				},
				error : function(xhr, status, error) {
					alert(error);
				}
			});
		});
	
		
	</script>

</html>