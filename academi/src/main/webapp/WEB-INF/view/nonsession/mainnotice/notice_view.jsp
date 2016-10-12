<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.example.dto.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>게시글 상세보기</title>
</head>
<body>

    <table class="board_view" border="1">
        <colgroup>
            <col width="15%"/>
            <col width="*"/>
            <col width="15%"/>
            <col width="20%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <tbody>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${comment.commentName}</td>
			</tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${userNick}</td>
                <th scope="row">작성일</th>
                <td>
                <fmt:formatDate value="${comment.commentDate}" pattern="yy-MM-dd" var="fmtDate"/>
                ${fmtDate}</td>
            </tr>
            <tr>
               	<th scope="row">Content</th>
                <td colspan="3">${comment.commentContent}</td>
            </tr>
            <tr align="right">
        	    <td colspan="4">
            		<input type="button" value="목록으로">
    				<input type="button" value="수정하기">
            	</td>
            </tr>
        </tbody>
    </table>
     
     
</body>
</html>