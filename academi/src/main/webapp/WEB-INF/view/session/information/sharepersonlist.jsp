<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="sharePerson" items="${sharePersonList }">
<div>
<label for="shareId1" >공유자1</label>
<input type="text" name="shareId1" id="shareId1" 
readonly="readonly" value="${sharePerson.photoShareId1}"
onclick="window.open('/session/shareList?folderName=${myFolder.photoFolderName }', 'win2',
'width=0, height=0');" >
<input type="button" value="선택하기">
</div>

</c:forEach>
</body>
</html>