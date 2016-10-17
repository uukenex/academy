<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>게시글 상세보기</title>
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
			<input type="hidden" name="commentNo" value="${comment.commentNo }" />
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
				<input type="submit" value="수정하기" formaction="/session/freeUpdate"
				formmethod="post">
				</c:if>
				</td>
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
			location.href = "free?page=1";
		});
		
		<c:url value="/session/replyRegist" var="replyRegist" />
		$("#replyRegist").on("click",function(){
			$.ajax({
			type:"post",
			url:"${replyRegist}",
			data:{
				userId:"${Users.userId}",
				replyContent:$("#replyContent").val(),
				commentNo:"${comment.commentNo}"
			},
			success:function(res){
				alert("등록완료");
				$("#tbody").append(	$("<tr><td>"+res.id+
				"</td><td colspan='3'>"+res.content+
				"</td></tr>"));
				$("#replyContent").val("");
			},
			error:function(xhr,status,error){
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
	</script>
</body>
</html>