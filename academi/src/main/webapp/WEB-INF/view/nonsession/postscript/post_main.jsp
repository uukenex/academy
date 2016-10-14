<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE>
<html>
<head>
<style>
.allDiv {
	width: 1100px;
	height: 2000px;
	border: 1px solid black;
	margin: 0 auto;
}

.mainDiv {
	width: 90%;
	height: 450px;
	border: 1px solid black;
	margin: 30 auto;
}

.main {
	width: 20%;
	height: 420px;
	border: 1px solid black;
	float: left;
	margin-left: 23px;
	margin-top: 12px;
	margin-bottom: 12px;
}

.main div {
	width: 95%;
	height: 360px;
	border: 1px solid black;
	float: left;
	margin: 7px;
}

.normalDiv {
	width: 90%;
	height: 1400px;
	border: 1px solid black;
	margin: 30 auto;
}

.normal {
	width: 200px;
	height: 420px;
	border: 1px solid black;
	float: left;
	margin-left: 23px;
	margin-top: 15px;
	margin-bottom: 15px;
}

.normal div {
	width: 95%;
	height: 360px;
	border: 1px solid black;
	float: left;
	margin: 7px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<body>
	<h3>현재 접속 Nick : "${Users.userNick }"</h3>

	<div class="allDiv">
		<div class="mainDiv">
			<c:forEach var="post" items="${posts }" begin="0" end="3">
				<div class="main">
					<div><a href="postView?reviewNo=${post.reviewNo} ">${post.reviewNo }사진</a></div>
					제목 ${post.reviewTitle } 추천수 ${post.reviewStar }
				</div>
			</c:forEach>
		</div>
		<div class="normalDiv">
			<c:forEach var="post" items="${posts }" begin="4">
				<div class="normal">
					<div><a href="postView?reviewNo=${post.reviewNo} ">${post.reviewNo }사진</a></div>
					제목 ${post.reviewTitle } 추천수 ${post.reviewStar }
				</div>
			</c:forEach>
		</div>
	</div>
	<%!int i;%>
		<%
			for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
		%>
		<a href="/post?page=<%=i%>"><%=i%> </a>
		<%
			}
		%>
</body>
</html>