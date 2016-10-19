<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			</tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${qna.users.userNick }</td>
                <th scope="row">작성일</th>
                <td>${qna.qnaDate }</td>
            </tr>
		<tr>
			<th scope="row">Content</th>
			<td colspan="3">${qna.qnaQuestion }</td>
		</tr>
		<tr align="right">
			<td colspan="4"><input type="button" value="목록으로"> <input
				type="button" value="수정하기"></td>
		</tr>
	</table>
	<hr>
	<c:forEach var="answer" items="${answers }">
	<table class="board_view" border="1">
		<colgroup>
			<col width="15%" />
			<col width="*%" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<h1>답변</h1>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3"></td>
			</tr>
            <tr>
                <th scope="row">작성자</th>
                <td></td>
                <th scope="row">작성일</th>
                <td></td>
            </tr>
		<tr>
			<th scope="row">Content</th>
			<td colspan="3"></td>
		</tr>
		<tr align="right">
			<td colspan="4"><input type="button" value="목록으로"> <input
				type="button" value="수정하기"></td>
		</tr>
		
	</table>
	</c:forEach>
</body>
</html>