<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 보기</title>
</head>
<body>
	<form>
		<table class="board_view" border="1">
			<colgroup>
				<col width="15%" />
				<col width="*%" />
				<col width="15%" />
				<col width="20%" />
			</colgroup>
			<caption>게시글 상세</caption>
			<tbody id="tbody">
				<input type="hidden" name="commentNo" value="${post.reviewNo }" />
				<tr>
					<th scope="row">제목</th>
					<td colspan="3">${post.reviewTitle}</td>


				</tr>
				<tr>
					<th scope="row">작성자</th>
					<input type="hidden" name="userId" value="${post.userId }" />
					<td>${post.users.userNick}</td>
					<th scope="row">작성일</th>
					<td><fmt:formatDate value="${post.reviewDate}"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
				</tr>
				<tr>
					<th scope="row">Content</th>
					<td colspan="3">${post.reviewContent}</td>
				</tr>
				<tr align="right">
					<td colspan="4"><input type="button" value="목록으로"
						id="listview"> <c:if
							test="${post.userId==Users.userId }">
							<input type="submit" value="수정하기"
								formaction="/session/postUpdate" formmethod="post">
						</c:if></td>
				</tr>


				<tr align="center">
					<td>댓글</td>
					<td colspan="2"><input type="text" id="replyContent"></td>
					<td><input type="button" value="등록" id="replyRegist"></td>
				</tr>
				<c:forEach var="reply" items="${replys }">
					<tr>
						<td>${reply.users.userNick}</td>
						<td colspan="3">${reply.replyContent }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</form>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "post?page=1";
		});
	</script>

</body>
</html>