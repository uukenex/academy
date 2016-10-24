<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
 	<meta name="author" content="Nathan Searles">
  		
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">

<title>공지사항: ${comment.commentName}</title>
</head>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../layout/menubar_header.jsp" />

	<form action="/session/noticeUpdate" method="post">
		<table class="board_view" border="1">
			<colgroup>
				<col width="15%" />
				<col width="*" />
				<col width="15%" />
				<col width="20%" />
			</colgroup>
			<caption>게시글 상세</caption>
			<tbody>
				<input type="hidden" name="commentNo" value="${comment.commentNo }" />
				<%-- <c:set var="commentNo" value="${comment.commentNo }" scope="request" /> --%>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3">${comment.commentName}</td>
				</tr>
				<tr>
					<th scope="row">작성자</th>

					<input type="hidden" name="userId" value="${comment.userId }" />

					<td>${comment.users.userNick}</td>
					<th scope="row">작성일</th>
					<td><fmt:formatDate value="${comment.commentDate}"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
				</tr>
				<tr>
					<th scope="row">Content</th>
					<td colspan="3">${comment.commentContent}</td>
				</tr>
				<tr align="right">
				<td colspan="4">
				<input type="button" value="목록으로" id="listview"> 
				<c:if test="${comment.userId==Users.userId }">
				<input type="submit" value="수정하기"	>
				</c:if>
				</td>
			</tr>
			</tbody>
		</table>
	</form>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "notice?page=1";
		})
	</script>


</body>
</html>