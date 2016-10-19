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
	<c:if test="${ Users.userId!=null}" >
	<h1>답변등록하기</h1>
	<table>
	<tr>
	<td><textarea rows="4" cols="100"></textarea></td>
	<td><input type="button" value="답변 등록하기"></td>
	<tr>
	</table>
	</c:if>
	<hr>
	<h1>답변</h1>
	<hr>
	<c:forEach var="answer" items="${answers }">
	<table class="board_view" border="1">
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
		
	</table>
	</c:forEach>
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "qna?page=1";
		});
		
		
	</script>
	
	
	
	
</body>
</html>