<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
		
<title>Q & A</title>
</head>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../layout/menubar_header.jsp" />
		
	<div id="page-wrapper" class="boardPage-Wrapper">
		<div id="main">
			<div class="container">
				<div class="row main-row">
					
					<!-- Board Left Menu -->
						<jsp:include page="../layout/board_left_menu.jsp" />
						
					<!-- Board Body part -->
						<div class="8u 12u(mobile) important(mobile)">
							<section class="middle-content">
								<form>
								
									<!-- 질문 내용 자세히 보기 부분 -->
									<div>
										<a href="#">목록보기</a>
										<hr id="boardTitleHr">
										<h3>${qna.qnaTitle }</h3>
										<input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
										<hr id="boardTitleHr">
										<table>
											<colgroup>
												<col width="10%" />
												<col width="60%" />
												<col width="10%" />
												<col width="200%" />
											</colgroup>
											<tr>
												<th>작성자</th>
												<td>닉네임</td>
												<th>작성일</th>
												<td>날짜 입력구간</td>
											</tr>
											<tr>
												<td colspan="4"> 여기는 내용이 들어갑니다.</td>
											</tr>
											<tr>
												<td colspan="4">
													<input type="button" value="답변 작성하러 가기">
												</td>
											</tr>
										</table>
									</div>
									
									<!-- 답변 자세히 보기 부분 -->
									<div>
										
									</div>
									
									<!-- 답변 작성하는 부분 -->
									<div>
										
									</div>
								</form>
							</section>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "qna?page=1";
		});
		
		<c:url value="/session/replyRegist3" var="replyRegist" />
			$("#answerRegist").on("click",function() {
						$.ajax({
							type : "post",
							url : "${replyRegist}",
							data : {
								userId : "${Users.userId}",
								answerContent : $("#answerContent").val(),
								qnaNo : "${qna.qnaNo}"
							},
							success : function(res) {
								alert("등록완료");
								$("#tbody").append(	$(
									"<tr><td>" + res.id
									+ "</td><td colspan='3'>"
									+ res.content + "</td></tr>"
									
								
								));
								
								
								$("#answerContent").val("");
							},
							error : function(xhr, status, error) {
								alert(error);
							}
						});
					});
	</script>
	
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
</body>
</html>