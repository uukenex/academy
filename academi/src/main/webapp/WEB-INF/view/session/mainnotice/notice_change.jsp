<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.example.dto.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>게시글 수정</title>
</head>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <caption>게시글 수정</caption>
            <tbody>
                <tr>
                    <th scope="row">작성자</th>
                    <td>
                        <input type="hidden" id="IDX" name="IDX" value="">
                        ${userNick}
                    </td>
                    <th scope="row">작성일</th>
                    
                    <td><fmt:formatDate value="${comments.commentDate}"
						pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td colspan="3">
                        <input type="text" id="TITLE" name="TITLE" class="wdp_90" value="${comments.commentName}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS">${comments.commentContent }</textarea>
                    </td>
                </tr>
                <tr align="right">
                	<td colspan="4">
                 	<input type="button" value="목록으로">
    			 	<input type="button" value="삭제하기">
    			 	<input type="button" value="저장하기">
                	</td>
                </tr>
            </tbody>
        </table>
    </form>
   
</body>
</html>
