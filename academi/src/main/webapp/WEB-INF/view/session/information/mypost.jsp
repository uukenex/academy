<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/mypage.css" />
<title>${Users.userNick}님의 후기</title>
</head>
<style>
	td{
		border : solid 2px;
	}

</style>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
		
		
	<!-- My Page Post view -->
	
		<div id="page-wrapper" class="boardPage-Wrapper">
			<div id="main">
				<div class="container">
				<h2 class="mypage_mypost_title">My Page_${Users.userNick }님의 여행 후기</h2>
					<div class="row main-row">
						
						<div class="1u"></div>
						<div class="10u 12(moblie) important(moblie)">
						
							<form>
							<c:forEach var="Review" items="${Review }">
									<table class="mypage_mypost_viewTable">
										<colgroup>
											<col width="10%">
											<col width="*%">
										</colgroup>
										<tr>
											<th rowspan="2">
												<input type="checkbox" name="mypage_mypost_chk">
											</th>
											<td>
												${Users.userNick}님의 ${Review.reviewTitle }
												<fmt:formatDate value="${Review.reviewDate}"
													pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}
											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" value="${Review.reviewNo }">
												<a href="/postView?reviewNo=${Review.reviewNo }">여행 후기 보기</a>
												<input type="button" value="여행 후기 삭제">
											</td>
										</tr>
									</table>
								</c:forEach>
							</form>
						</div>
						<div class="1u"></div>
					</div>
				</div>
			</div>
		</div>
		
<%-- 	
	<form>
	
	<c:forEach var="Review" items="${Review }">
	<table>
		<tr align="center">
			<td width="300px">${Users.userNick}님의 ${Review.reviewTitle }
			</td>
			<td width="100px"><fmt:formatDate value="${Review.reviewDate}"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
			
		</tr>
		<tr align="center">
			<td colspan="2" >
			<input type="hidden" value="${Review.reviewNo }">
			<a href="/postView?reviewNo=${Review.reviewNo }">여행 후기 보기</a>
			<input type="button" value="여행 후기 삭제"></td>
			
		</tr>
	</table>
	</c:forEach>
	</form>
--%>
			<div id="posts_paging">
		<%!int i;%>
		<%
			for (int i = 1; i <= Integer.parseInt(request.getAttribute(("totalPage")).toString()); i++) {
		%>
		<a href="/session/mypageReview?page=<%=i%>"><%=i%> </a>
		<%
			}
		%>
	</div>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>

</script>
</html>