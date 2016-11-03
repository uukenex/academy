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
	내공유페이지
	<br>
	<a href="/session/shareList">벤자민버튼</a>
	<div>
		내 폴더 리스트
		<c:forEach var="myFolder" items="${myFolderList }">
			<br>
		<a href="#" onclick="window.open('/session/shareList?folderName=${myFolder.photoFolderName }', 'win1',
		'width=0, height=0');" onkeypress="this.onclick()">
		${myFolder.photoFolderName }</a>
		<br>
			<br>
		</c:forEach>
	</div>
	<div>
		공유받은 폴더
		<c:forEach var="shareFolder" items="${sharedFolderList }">
			<br>
	  ${shareFolder.users.userNick }의 포토북 -${shareFolder.photoFolderName } 
	 <br>
			<br>
		</c:forEach>
	</div>

</body>
</html>