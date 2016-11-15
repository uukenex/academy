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
								
								<!-- write button -->
									<div class="post_write_button_div">
										<div class="best_posts_image">
											<img alt="" src="/images/BEST.png">
										</div>
										<form action="/session/postsign">
										
											<input type="submit" value="글쓰기" class="btn post_write_button">
											<br><br>
													<div class="postSearchBar">
														<select id="searchCategory">
															<option value="제목">제목</option>
															<option value="내용">내용</option>
															<option value="경로">경로</option>
															<option value="닉네임">닉네임</option>
														</select>
														<input type="search" id="search" />
														<input type="button" id="searchBtn" value="검색" />
													</div>
												
										</form>
									</div>
								
								<!-- 추천 후기 맨 위 상단에 띄워주는 part -->
								<hr id="best_posts_hr">
								<div class="edi_posts">
									<c:forEach var="post" items="${posts }" begin="0" end="2">
										<article>
										<form method="GET" action="/postView">
											<a href="/postView?reviewNo=${post.reviewNo }" class="post_image"><img alt="" src="/photo_upload/${post.reviewImage }"></a>
											<h3>${post.reviewTitle }</h3>
											<p>추천수 ${post.reviewStar } <input type="hidden" value="${post.routeNo }" name="inputRouteNo"></p>
											<ul>
												<li><li><a href="postView?reviewNo=${post.reviewNo}" class="post_button">More</a></li></li>
											</ul>
										</form>
										</article>
								</c:forEach>
								</div>
								<hr id="best_posts_hr">
								
								<!-- 사용자가 등록한 모든 후기 띄워주는 part -->
								<output id="result">
								<div class="edi_posts edi_posts_body">
									<c:forEach var="post" items="${posts }" begin="3">
										
										<article>
											<a href="/postView?reviewNo=${post.reviewNo }" class="post_image">
											<img alt="" src="/photo_upload/${post.reviewImage }"></a>
											<h3>${post.reviewTitle }</h3>
											<p>추천수 ${post.reviewStar } <input type="hidden" value="${post.routeNo }" name="inputRouteNo"></p>
											<ul>
												<li><li><a href="postView?reviewNo=${post.reviewNo}&routeNo=${post.routeNo } " class="post_button">More</a></li></li>
											</ul>
										</article>
										
									</c:forEach>
								</div>
								</output>
								
							</section>
					</div>
				</div>
		</div>
<%-- 
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
 --%>	
	
	
	<!-- paging 처리 part -->
	<div id="posts_paging">
		<%!int i;%>
		<%
			for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
		%>
		<a href="/post?page=<%=i%>"><%=i%> </a>
		<%
			}
		%>
	</div>
	
	<!-- footer -->
		<jsp:include page="../../nonsession/layout/footer.jsp"></jsp:include>
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
	$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		});
	
	
	
	
	
	
	<c:url value="/searchpost" var="search" />
		$("#searchBtn").on("click",function(){
			$.ajax({
			type:"post",
			url:"${search}",
			data:{
				category:$("#searchCategory").val(),
				keyword:$("#search").val()
			},
			success:function(res){
				$("#result")[0].innerHTML="";
				var html="";
				html+='<div class="edi_posts edi_posts_body">';
				$(res).each(function(idx,item){ 
					console.log(item);
				
				html+='<article>';
				html+='<a href="/postView?reviewNo='+item.reviewNo +'" class="post_image">';
				html+='<img alt="" src="/photo_upload/'+item.reviewImage+'"></a>';
				html+='<h3>'+item.reviewTitle+'</h3>';
				html+='<p>추천수 '+item.reviewStar +' <input type="hidden" value="'+item.routeNo +'" name="inputRouteNo"></p>';
				html+='<ul>';
				html+='<li><li><a href="postView?reviewNo='+item.reviewNo+'&routeNo='+item.routeNo +'" class="post_button">More</a></li></li>';
				html+='</ul>';
				html+='</form>';
				html+='</article>';
				
				});
				html+='</div>';
				$("#result")[0].innerHTML=html;
			},
			error:function(xhr,status,error){
				alert(error);
			}
			}); 
		});
	
	
	
	
	
	
	
	
	</script>
</body>
</html>