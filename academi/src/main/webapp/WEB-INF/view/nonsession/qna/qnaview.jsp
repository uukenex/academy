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
									<table class="board_view" border="1">
										<colgroup>
											<col width="15%" />
											<col width="*%" />
											<col width="15%" />
											<col width="20%" />
										</colgroup>
										<h1>질문</h1>
								            <tr>
								                <th scope="row">제목</th>
								                <td colspan="3">${qna.qnaTitle }</td>
								                <input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
											</tr>
								            <tr>
								                <th scope="row">작성자</th>
								                <input type="hidden" name="userId" value="${qna.userId }" />
								                <td>${qna.users.userNick }</td>
								                <th scope="row">작성일</th>
								                <td><fmt:formatDate value="${qna.qnaDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}</td>
								            </tr>
										<tr>
											<th scope="row">Content</th>
											<td colspan="3">${qna.qnaQuestion }</td>
										</tr>
										<tr align="right">
											<td colspan="4">
											<input type="button" value="목록으로" id="listview">
											<c:if test="${qna.userId==Users.userId }"> 
											<input type="submit" value="수정하기" formaction="/session/qnaUpdate" formmethod="post">
											</c:if>
											</td>
										</tr>
									</table>
								</form>
									<hr>
									<h1>답변등록하기</h1>
									<table>
									<tr>
									<td><textarea rows="4" cols="100" id="answerContent"></textarea></td>
									<td><input type="button" value="답변 등록하기" id="answerRegist"></td>
									<tr>
									</table>
									
									<hr>
									<h1>답변</h1>
									<hr>
								
								
									<table class="board_view" border="1">
										<tbody id="tbody">
										<c:forEach var="answer" items="${answers }">
										<colgroup>
											<col width="15%" />
											<col width="*%" />
											<col width="15%" />
											<col width="20%" />
										</colgroup>
										
								            <tr>
								                <th scope="row">작성자</th>
								                <td>${answer.users.userNick }</td>
								                <th scope="row">작성일</th>
								                <td><fmt:formatDate value="${answer.answerDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}</td>
								            </tr>
										<tr>
											<th scope="row">Content</th>
											<td colspan="3">${answer.answerContent }</td>
										</tr>
										<tr align="right">
										<c:if test="${qna.userId==Users.userId }"> 
											<td colspan="4">
											<input type="button" value="수정하기"></td>
											</c:if>
										</tr>
										</c:forEach>
										</tbody>
										
									</table>
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