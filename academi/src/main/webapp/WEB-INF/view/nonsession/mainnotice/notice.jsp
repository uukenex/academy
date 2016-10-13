<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body>
<a href="index.jsp">임시홈으로</a>
	<h2>공지 사항</h2>
	<h3>현재 접속 Nick : "${Users.userNick }"</h3>
	<form action="/session/noticeWrite">
		<table style="border: 1px solid #ccc">
			<colgroup>
				<col width="*" />
				<col width="15%" />
				<col width="20%" />
				<col width="10%" />
			</colgroup>
			<tr>

				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
				<th scope="col">조회수</th>
			</tr>
			<c:forEach var="comment" items="${comments }">
				<tr>
					<td><a href="noticeView?commentNo=${comment.commentNo} ">${comment.commentName }</a></td>
					<td>${comment.users.userNick}</td>
					<td><fmt:formatDate value="${comment.commentDate }"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate }</td>
					<td>${comment.commentCount }</td>
				</tr>
			</c:forEach>
			<c:if test="${totalPage ==0}">
				<td colspan="4">조회된 결과가 없습니다.</td>
			</c:if>
		</table>
		<input type="submit" value="글쓰기"> <input type="button"
			id="logout" value="logout" />
		<%!int i;%>
		<%
			for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
		%>
		<a href="/notice?page=<%=i%>"><%=i%> </a>
		<%
			}
		%>

	</form>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		})
	</script>

</body>
</html>


