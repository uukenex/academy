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
<div>

<label for="searchNick" >닉네임 검색</label>
<input type="text" id="searchNick" name="searchNick">
<input type="button" id="search" value="검색" > 
</div>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$("#search").on("click",function(){
	$.ajax({
		
	});
});
</script>

</body>
</html>