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

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/post_script.css" />

<title>여행 후기 게시판</title>
<body>
	<h3>현재 접속 Nick : "${Users.userNick }"</h3>
	
	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
		
		
	<!-- Main body part -->
	
		<!-- Wrapper -->
		<div id="post_wrapper">
			
			<!-- Main -->
				<div id="post_main">
					<div class="post_inner">
					
						<!-- post Section -->
							<section>
								<header class="post_major">
									<h2>다녀온 여행 후기!</h2>
								</header>
								<div class="edi_posts">
									<article>
										<a href="#" class="post_image"><img alt="" src="/images/cloud.jpg"></a>
										<h3>여행 추천 후기 1</h3>
										<p>아아아아아아아아아아아아아아아아아아아아아아아아 아무거나 쓰면 되지요~ 이건 Test!</p>
										<ul>
											<li><a href="#" class="post_button">More</a></li>
										</ul>
									</article>
									<article>
										<a href="#" class="post_image"><img alt="" src="/images/cloud.jpg"></a>
										<h3>여행 추천 후기 1</h3>
										<p>아아아아아아아아아아아아아아아아아아아아아아아아 아무거나 쓰면 되지요~ 이건 Test!</p>
										<ul>
											<li><a href="#" class="post_button">More</a></li>
										</ul>
									</article>
									<article>
										<a href="#" class="post_image"><img alt="" src="/images/cloud.jpg"></a>
										<h3>여행 추천 후기 1</h3>
										<p>아아아아아아아아아아아아아아아아아아아아아아아아 아무거나 쓰면 되지요~ 이건 Test!</p>
										<ul>
											<li><a href="#" class="post_button">More</a></li>
										</ul>
									</article>
									<article>
										<a href="#" class="post_image"><img alt="" src="/images/cloud.jpg"></a>
										<h3>여행 추천 후기 1</h3>
										<p>아아아아아아아아아아아아아아아아아아아아아아아아 아무거나 쓰면 되지요~ 이건 Test!</p>
										<ul>
											<li><a href="#" class="post_button">More</a></li>
										</ul>
									</article>
									<article>
										<a href="#" class="post_image"><img alt="" src="/images/cloud.jpg"></a>
										<h3>여행 추천 후기 1</h3>
										<p>아아아아아아아아아아아아아아아아아아아아아아아아 아무거나 쓰면 되지요~ 이건 Test!</p>
										<ul>
											<li><a href="#" class="post_button">More</a></li>
										</ul>
									</article>
								</div>
							</section>
					</div>
				</div>
		</div>

	<div class="allDiv">
		<div class="mainDiv">
			<c:forEach var="post" items="${posts }" begin="0" end="3">
				<div class="main">
					<div>
						<a href="postView?reviewNo=${post.reviewNo} ">${post.reviewNo }사진</a>
					</div>
					제목 ${post.reviewTitle } 추천수 ${post.reviewStar }
				</div>
			</c:forEach>
		</div>
		<div class="normalDiv">
			<c:forEach var="post" items="${posts }" begin="4">
				<div class="normal">
					<div>
						<a href="postView?reviewNo=${post.reviewNo} ">${post.reviewNo }사진</a>
					</div>
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
	<div>
		<form action="/session/postsign">
			<input type="submit" value="글쓰기" class="btn">
		</form>
	</div>
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		});
	</script>
</body>
</html>