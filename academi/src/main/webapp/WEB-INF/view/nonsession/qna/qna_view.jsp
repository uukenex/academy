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
									<div class="qnaContentView">
									<%-- 
										<c:if test="${qna.userId==Users.userId }"> 
											<input type="submit" value="수정하기" formaction="/session/qnaUpdate" formmethod="post">
										</c:if>
										 --%>
										 <ul class="boardButtonList">
										 	<li>
										 		<a href="#" class="boardButtonStyle1">수정</a>
										 	</li>
										 	<li>
										 		<a href="#" class="boardButtonStyle1">삭제</a>
										 	</li>
										 </ul>
										<hr id="boardTitleHrStyle1">
										<h3 id="boardTitleSytle1">${qna.qnaTitle }</h3>
										<input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
										<hr id="boardTitleHrStyle1">
										<table>
											<colgroup>
												<col width="10%" />
												<col width="*%" />
												<col width="10%" />
												<col width="20%" />
											</colgroup>
											<tr>
												<th>작성자</th>
												<input type="hidden" name="userId" value="${qna.userId }" />
												<td class="boardTitleSort boardBold">${qna.users.userNick }</td>
												<th>작성일</th>
												<td class="boardTitleSort boardBold"><fmt:formatDate value="${qna.qnaDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}</td>
											</tr>
											<tr>
												<td> </td>
												<td colspan="3" class="boardTitleSort">${qna.qnaQuestion }</td>
											</tr>
											<tr>
												<td colspan="4">
													<input type="button" value="목록" id="listview" class="boardButtonStyle2">
												</td>
											</tr>
											<tr>
												<td colspan="4">
													<input type="button" value="답변 작성" class="boardButtonStyle2">
												</td>
											</tr>
										</table>
									</div>
									
									<hr id="boardTitleHrStyle2">
									
									<!-- 답변 자세히 보기 부분 -->
									<div class="qnaAnswerView">
										<c:forEach var="answer" items="${answers }">
										<table class="board_view" border="1">
											<tbody id="tbody">
												
												<colgroup>
													<col width="10%">
													<col width="2%">
													<col width="*%">
													<col width="8%">
													<col width="8%">
												</colgroup>
								            	<tr>
								            		<th class="boardBold">${answer.users.userNick }</th>
								            		<td>
								            			<i class="fa fa-ellipsis-v"></i>
								            		</td>
								            		<td class="boardTitleSort">
								            			<fmt:formatDate value="${answer.answerDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}
													</td>
													<td>
														<a href="#" class="boardButtonStyle1">수정</a>
													</td>
													<td>
														<a href="#" class="boardButtonStyle1">삭제</a>
													</td>
								            	</tr>
										<tr>
											<th scope="row"> </th>
											<td colspan="4" class="boardTitleSort">${answer.answerContent }</td>
										</tr>
										<%-- 
										<tr align="right">
											<c:if test="${qna.userId==Users.userId }"> 
												<td colspan="4">
													<input type="button" value="수정하기">
												</td>
											</c:if>
										</tr>
										 --%>
										
										</tbody>
									</table>
									<hr id="boardTitleHrStyle2">
									</c:forEach>
									</div>
									
									<!-- 답변 작성하는 부분 -->
									<div id="qnaReplyWritter">
										<table>
											<colgroup>
												<col width="10%" />
												<col width="*%" />
												<col width="10%" />
											</colgroup>
											<tr>
												<td><i class="fa fa-key fa-2x"></i></td>
												<td>
													<textarea cols="75" rows="2" id="answerContent" placeholder="댓글을 입력하세요."></textarea>
												</td>
												<td>
													<input type="button" value="등록" id="answerRegist" class="boardButtonStyle3">
												</td>
											</tr>
										</table>
									</div>
								</form>
							</section>
						</div>
				</div>
				
				<!-- footer -->
					<jsp:include page="../layout/footer.jsp"></jsp:include>
					
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