<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${Users.userNick }님의 공유 설정</title>
</head>
<body>


<c:forEach var="sharePerson" items="${sharePersonList }">
<div>
<label for="shareId1" >공유자1</label>
<input type="text" name="shareId1" id="shareId1" 
readonly="readonly" value="${sharePerson.photoShareId1}"
onclick="window.open('/searchNick', 'shareId1',
'width=0, height=0');" >
<input type="button" value="삭제하기">
</div>

<div>
<label for="shareId2" >공유자2</label>
<input type="text" name="shareId2" id="shareId2" 
readonly="readonly" value="${sharePerson.photoShareId2}"
onclick="window.open('/searchNick', 'shareId2',
'width=0, height=0');" >
<input type="button" value="삭제하기">
</div>

<div>
<label for="shareId3" >공유자3</label>
<input type="text" name="shareId3" id="shareId3" 
readonly="readonly" value="${sharePerson.photoShareId3}"
onclick="window.open('/searchNick', 'shareId3',
'width=0, height=0');" >
<input type="button" value="삭제하기">
</div>

<div>
<label for="shareId4" >공유자4</label>
<input type="text" name="shareId4" id="shareId4" 
readonly="readonly" value="${sharePerson.photoShareId4}"
onclick="window.open('/searchNick', 'shareId4',
'width=0, height=0');" >
<input type="button" value="삭제하기">
</div>

</c:forEach>
</body>
</html>