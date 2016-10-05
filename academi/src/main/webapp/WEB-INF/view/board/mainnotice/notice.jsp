<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
<h2>자유 게시판</h2>
<form action="./boardsign" >
<table style="border:1px solid #ccc">
	<colgroup>
		<col width="*"/>
		<col width="15%"/>
		<col width="20%"/>
		<col width="10%"/>
	</colgroup>
		<tr>
			
			<th scope="col">제목</th>
			<th scope="col">작성자</th>
			<th scope="col">작성일</th>
			<th scope="col">조회수</th>
		</tr>
				<tr>
					<td colspan="4">조회된 결과가 없습니다.</td>
				</tr>
</table>
<input type="submit" value="글쓰기">
</form>
</body>
</html> 


