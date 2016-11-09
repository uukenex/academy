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
<style>
	td{
		border : solid 2px;
	}

</style>
<body>
	
	<form>
	
	<c:forEach var="Route" items="${Route }">
	<input type="hidden" value="${Route.routeNo }" name="routeNo">
	<table>
		<tr>
			<td>${Users.userNick}님의 ${Route.routeName }</td>
		</tr>
		<tr>
			<td>
			<input type="text" value="${Route.routeNo }">
			<a href="/routeupdate?routeNo=${Route.routeNo }">여행 계획 보기</a>
			
			<input type="button" value="여행 계획 삭제">
			</td>
		</tr>
	</table>
	</c:forEach>
	</form>
			<div id="posts_paging">
		<%!int i;%>
		<%
			for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
		%>
		<a href="/session/mypageRoute?page=<%=i%>"><%=i%> </a>
		<%
			}
		%>
	</div>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
 
</script>
</html>