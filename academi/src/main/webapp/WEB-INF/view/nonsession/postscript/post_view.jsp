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
				<input type="hidden" name="reviewNo" value="${post.reviewNo }" />
				<tr>
					<th scope="row">제목</th>
					<td colspan="1">${post.reviewTitle} </td> <td>추천수 : 
					<output id="result" > ${post.reviewStar}</output></td>
					<td> <input type="button" id="star" value="추천하기"></td>


				</tr>
				<tr>
					<th scope="row">작성자</th>
					<input type="hidden" name="userId" value="${post.userId }" />
					<td>${post.users.userNick}</td>
					<th scope="row">작성일</th>
					<td><fmt:formatDate value="${post.reviewDate}"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
				</tr>
				
				<tr style="height: 8em;">
				<td colspan='4'>
				<iframe src="/route?routeNo=${post.routeNo }"
				height="600px" width="600px"  scrolling="no" frameborder="0">
				</iframe></td>
				</tr>
				
				<tr>
					<th scope="row">Content0</th>
					<td colspan="3">${post.reviewContent0}</td>
				</tr>
				
				<c:if test="${!empty post.reviewContent1 }">
				<tr>
					<th scope="row">Content1</th>
					<td colspan="3">${post.reviewContent1}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent2 }">
				<tr>
					<th scope="row">Content2</th>
					<td colspan="3">${post.reviewContent2}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent3 }">
				<tr>
					<th scope="row">Content3</th>
					<td colspan="3">${post.reviewContent3}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent4}">
				<tr>
					<th scope="row">Content4</th>
					<td colspan="3">${post.reviewContent4}</td>
				</tr>
				</c:if>
				<c:if test="${!empty post.reviewContent5 }">
				<tr>
					<th scope="row">Content5</th>
					<td colspan="3">${post.reviewContent5}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent6}">
				<tr>
					<th scope="row">Content6</th>
					<td colspan="3">${post.reviewContent6}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent7 }">
				<tr>
					<th scope="row">Content7</th>
					<td colspan="3">${post.reviewContent7}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent8}">
				<tr>
					<th scope="row">Content8</th>
					<td colspan="3">${post.reviewContent8}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent9}">
				<tr>
					<th scope="row">Content9</th>
					<td colspan="3">${post.reviewContent9}</td>
				</tr>
				</c:if>
				
				
				<tr align="right">
					<td colspan="4"><input type="button" value="목록으로"
						id="listview"> <c:if test="${post.userId==Users.userId }">
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

		<c:url value="/session/replyRegist2" var="replyRegist" />
		$("#replyRegist").on(
				"click",
				function() {
					$.ajax({
						type : "post",
						url : "${replyRegist}",
						data : {
							userId : "${Users.userId}",
							replyContent : $("#replyContent").val(),
							reviewNo : "${post.reviewNo}"
						},
						success : function(res) {
							alert("등록완료");
							$("#tbody").append(
									$("<tr><td>" + res.id
											+ "</td><td colspan='3'>"
											+ res.content + "</td></tr>"));
							$("#replyContent").val("");
						},
						error : function(xhr, status, error) {
							alert("로그인이 필요합니다");
						}
					});
				});

		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		});
		
		
		<c:url value="/session/star" var="star" />
			$("#star").on(
					"click",
					function() {
						$.ajax({
							type : "get",
							url : "${star}",
							data : {
								userId : "${Users.userId}",
								reviewNo : "${post.reviewNo}"
							},
							success : function(res) {
								var html="";
								
								$("#result").val(Number.parseInt($("#result").val())+1);
								alert("추천완료");
							},
							error : function(xhr, status, error) {
								alert("로그인이 필요합니다");
							}
						});
					});
		
		
	</script>

</body>
</html>