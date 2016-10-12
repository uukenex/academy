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
	<h2>자유 게시판</h2>
	<form action="./boardsign">
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
					<td>
					<a href="noticeView?commentNo=${comment.commentNo} ">${comment.commentName }</a></td>
					<td>${userNick}</td>
					<td><fmt:formatDate value="${comment.commentDate }"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate }</td>
					<td>${comment.commentCount }</td>
					<!--  <td colspan="4">조회된 결과가 없습니다.</td>-->
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>


