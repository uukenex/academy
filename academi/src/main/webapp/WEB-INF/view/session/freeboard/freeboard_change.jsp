<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 글쓰기</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
	<input type="hidden" name="commentNo" value="${comment.commentNo }" />
                   <tr>
                 <input type="hidden" name="commentNo" value="${comment.commentNo }" />
                    <th scope="row">작성자</th>
                    <td>
                        <input type="hidden" id="IDX" name="IDX" value="">
                        ${comment.users.userNick}
                    </td>
                    <th scope="row">작성일</th>
                    <td><fmt:formatDate value="${comment.commentDate}"
						pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
                </tr>
	<form action="/commentWrite" method="post" id="frm">
	제목 : <input type="text"  name="title" size="108px" value="${comment.commentName}"><br>
    <textarea name="content" id="content" rows="10" cols="100" style="width:766px; height:412px;">${comment.commentContent }</textarea>
    <input type="button" id="savebutton" value="완료" />
     <input type="button" name="Submit2" value="취소" onclick="history.back();">
</form>
<script>
$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "content",
        sSkinURI: "/smarteditor/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true, 
        }
    });
     
    //전송버튼 클릭이벤트
    $("#savebutton").click(function(){
        //id가 content인 textarea에 에디터에서 대입
        editor_object.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})
</script>
</body>
</html>