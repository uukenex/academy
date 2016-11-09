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
<title>${Users.userNick}님의 여행일정</title>
</head>

<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
		
		
	<!-- My Page Plan view -->
	
		<div id="page-wrapper" class="boardPage-Wrapper">
			<div id="main">
				<div class="container">
					<h2 class="mypage_mypost_title">My Page _ ${Users.userNick }님의 여행 계획</h2>
					<div class="row main-row">
						
						<div class="1u"></div>
						<div class="10u 12u(moblie) important(moblie)">
						<div id="choiceButtonDiv">
							<input type="button" value="선택 계획 삭제"  class="mypage_myplan_buttonStyle2">
						</div>
							<c:forEach var="Route" items="${Route }">
								<input type="hidden" value="${Route.routeNo }" name="routeNo">
								<form>
									<div id="mypage_myplan_viewDiv">
										<table class="mypage_myplan_viewTable">
											<colgroup>
												<col width="10%">
												<col width="*%">
											</colgroup>
											<tr>
												<th rowspan="2">
													<input type="checkbox" name="mypage_mypost_chk" id="${Route.routeNo }">
													<label for="${Route.routeNo }"></label>
												</th>
												<td>
													<b class="mypage_mypost_postTitle">${Users.userNick}님의 ${Route.routeName }</b>
													&emsp;
													<fmt:formatDate value="${Review.reviewDate}"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}
												</td>
											</tr>
											<tr>
												<td>
													<input type="hidden" value="${Route.routeNo }">
													<a href="/routeupdate?routeNo=${Route.routeNo }"  class="mypage_mypost_buttonStyle1">여행 계획 보기</a>
													<input type="submit" value="여행 계획 수정"  class="mypage_mypost_buttonStyle1">
													<input type="submit" value="여행 계획 삭제" class="mypage_mypost_buttonStyle1">
												</td>
											</tr>
										</table>
									</div>
								</form>
							</c:forEach>
							
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
						</div>
					</div>
					
					<!-- footer -->
						<jsp:include page="../../nonsession/layout/footer.jsp" />
				</div>
			</div>
		</div>
<%-- 	
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
	</form> --%>
			
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
 
</script>
</html>