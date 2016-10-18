<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
<meta name="author" content="Nathan Searles">
  		
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/fancy.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">

<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body>
	
	<!-- Drop Menu Header -->
		<jsp:include page="../layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../layout/menubar_header.jsp" />

	<div id="page-wrapper" class="boardPage-Wrapper">
		<div id="main">
			<div class="container">
				<div class="row main-row">
					<!-- d -->
					<div class="3u 12u(mobile)">

						<!-- Left Board Menu -->
						<section class="boardSection">
							<h2>게 시 판</h2>
							<ul class="link-list">
								<li><a href="#">공지사항</a></li>
								<li><a href="#">Q & A</a></li>
								<li><a href="#">자유 게시판</a></li>
								<li><a href="#">사이트 이용방법</a></li>
							</ul>
						</section>
					</div>

					<!-- Board Body part -->
					<div class="8u 12u(mobile) important(mobile)">
						<section class="middle-content">
							<h2>공 지 사 항</h2>
							<h3>현재 접속 Nick : "${Users.userNick }"</h3>
							<select id="searchCategory">
								<option value="제목">제목</option>
								<option value="내용">내용</option>
								<option value="닉네임">닉네임</option>
							</select>
							<input type="search" id="search" />
							<input type="button" id="searchBtn" value="검색" />
							<input type="submit" value="글쓰기" class="writeBoard">
							<form action="/session/noticeWrite">
								<table>
									
									<colgroup>
										<col width="10%" />
										<col width="*" />
										<col width="15%" />
										<col width="20%" />
										<col width="10%" />
									</colgroup>
									<thead>
									<tr>
										<th scope="col">글번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">작성일</th>
										<th scope="col">조회수</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach var="qna" items="${qnas }">
										<tr>
											<td>${qna.qnaNo }</td>
											<td id="boardTitle"><a href="qnaView?qnaNo=${qna.qnaNo} ">${qna.qnaTitle }</a></td>
											<td>${qna.users.userNick}</td>
											<td><fmt:formatDate value="${qna.qnaDate }"
													pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate }</td>
											<td>${qna.qnaCount }</td>
										</tr>
									</c:forEach>
									
									<c:if test="${totalPage ==0}">
										<td colspan="4">조회된 결과가 없습니다.</td>
									</c:if>
									</tbody>
								</table>
								<%!int i;%>
								<%
									for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
								%>
								<a href="/notice?page=<%=i%>"><%=i%> </a>
								<%
			}
		%>
							</form>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>