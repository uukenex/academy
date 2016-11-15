<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/post_script.css" />
<title>후기: ${post.reviewTitle}</title>
</head>
<body>

	<!-- Drop Menu Header -->
		<jsp:include page="../../nonsession/layout/dropMenu_header.jsp" />
	<!-- Menu Bar Header -->
		<jsp:include page="../../nonsession/layout/menubar_header.jsp" />
		
		
	<!-- Post view body part -->
	
		<div id="page-wrapper" class="boardPage-Wrapper">
			<div id="main">
				<div class="container">
					<div class="row main-row">
					
						<div class="1u"></div>
						
						<div class="10u">
			
							<!-- Map image view part -->
							<form>
							<input type="hidden" name="userId" value="${post.userId }" />
							<input type="hidden" name="reviewNo" value="${post.reviewNo }" />
							
								<table id="post_route_table">
									<colgroup>
										<col width="50%">
										<col width="25%">
										<col width="*%">
									</colgroup>
									<tr>
										<td colspan="3">
											<input type="button" value="목록으로" id="listview">
										</td>
									</tr>
									<tr>
										<th rowspan="2" id="post_review_title">${post.reviewTitle}</th>
										
										<td>작성자: ${post.users.userNick}</td>
										<td>작성일: <fmt:formatDate value="${post.reviewDate}"
															pattern="yy-MM-dd HH:mm:ss" var="fmtDate" /> ${fmtDate}
										</td>
									</tr>
									<tr>
										<td>
											추천 수: <output id="result" > ${post.reviewStar}</output>
											<c:if test="${!empty Users.userId }">
											<input type="button" id="star" value="추천하기">
											</c:if>
			
										</td>
										<td>
										<c:choose>
											<c:when test="${post.userId==Users.userId }">
												<input type="submit" value="글 수정"
													formaction="/session/postUpdate" formmethod="post">
													<input type="submit" value="글 삭제"
													formaction="/reviewDelete" formmethod="post">
											</c:when>
											<c:when test="${'admin'==Users.userId }">
												<input type="submit" value="글 수정"
													formaction="/session/postUpdate" formmethod="post">
													<input type="submit" value="글 삭제"
													formaction="/reviewDelete" formmethod="post">
											</c:when>
										</c:choose>
										</td>
									</tr>
									
									
									<c:if test="${'0' != post.routeNo }">
									<tr><td colspan="3"><hr id="post_divider"></tr>
									<tr><td colspan="3"><header class="post_major"><h2>여행 경로 보기</h2></header></tr>
									<tr>
										<th class="map_image_view">
											<iframe src="/route?routeNo=${post.routeNo }"
												height="600px" width="600px"  scrolling="no" frameborder="0">
											</iframe>
										</th>
										<td colspan="2" id="detailAddressView">
												<c:forEach var="addRoute" items="${addRoute }">
											<p>
												<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
												 ${addRoute }
												<br>
											</p>
											</c:forEach>
										</td>
									</tr>
									</c:if>
									<tr><td colspan="3"><hr id="post_divider"></tr>
									<tr><td colspan="3"><header class="post_major"><h2>여행 계획 보기</h2></header></tr>
									<tr>
										<td colspan="3">
											
												<ul class="day_tab">
													<li><a href="javascript:void(0)" class="day_tablinks"
																onclick="openDays(event, 'day1')" id="defaultDayOpen">
															Day 01
															</a>
													</li>
													<c:if test="${!empty post.reviewContent1 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day2')">
																Day 02
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent2 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day3')">
																Day 03
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent3 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day4')">
																Day 04
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent4 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day5')">
																Day 05
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent5 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day6')">
																Day 06
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent6 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day7')">
																Day 07
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent7 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day8')">
																Day 08
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent8 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day9')">
																Day 09
																</a>
														</li>
													</c:if>
													<c:if test="${!empty post.reviewContent9 }">
														<li><a href="javascript:void(0)" class="day_tablinks"
																	onclick="openDays(event, 'day10')">
																Day 10
																</a>
														</li>
													</c:if>
												</ul>
												
												<div id="day1" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 01</h3>
													<p> ${post.reviewContent0}</p>
												</div>
												<div id="day2" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 02</h3>
													<p> ${post.reviewContent1}</p>
												</div>
												<div id="day3" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 03</h3>
													<p> ${post.reviewContent2}</p>
												</div>
												<div id="day4" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 04</h3>
													<p> ${post.reviewContent3}</p>
												</div>
												<div id="day5" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 05</h3>
													<p> ${post.reviewContent4}</p>
												</div>
												<div id="day6" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 06</h3>
													<p> ${post.reviewContent5}</p>
												</div>
												<div id="day7" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 07</h3>
													<p> ${post.reviewContent6}</p>
												</div>
												<div id="day8" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 08</h3>
													<p> ${post.reviewContent7}</p>
												</div> 
												<div id="day9" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 09</h3>
													<p> ${post.reviewContent8}</p>
												</div>
												<div id="day10" class="day_tabContent">
													<span onclick="this.parentElement.style.display='none'"
																class="topright">x</span>
													<h3>Day 10</h3>
													<p> ${post.reviewContent9}</p>
												</div>
												
												<!-- day_tab Menu 이동 Script -->
												<script>
													function openDays(evt, dayNumber){
														var i, day_tabContent, day_tablinks;
														day_tabContent = document.getElementsByClassName("day_tabContent");
														for(i=0; i < day_tabContent.length; i++) {
															day_tabContent[i].style.display = "none";
														}
														day_tablinks = document.getElementsByClassName("day_tablinks");
														for(i=0; i<day_tablinks.length; i++) {
															day_tablinks[i].className = day_tablinks[i].className.replace("active", "");
														}
														document.getElementById(dayNumber).style.display = "block";
														evt.currentTarget.className += "active";
													}
													
													// Get the element with id="defaultDayOpen" and click on it
													document.getElementById("defaultDayOpen").click();
												</script>
										</td>
									</tr>
								</table>
							</form>
								<hr id="post_divider">
								
								
								<!-- Post Reply part -->
									<table class="post_reply_view">
										<colgroup>
											<col width="12%">
											<col width="*%">
											<col width="15%">
										</colgroup>
										<tr>
											<th><i class="fa fa-commenting fa-flip-horizontal"></i></th>
											<td><input type="text" id="replyContent"></td>
											<c:if test="${!empty Users.userId }">
											<td><input type="button" value="등록" id="replyRegist"></td>
											</c:if>
										</tr>
										<tbody id="postReplyContentViewTableBody">
										<form>
										<c:forEach var="reply" items="${replys }">
											<tr>
												<th>${reply.users.userNick}</th>
												<td id="post_reply_date">
													<fmt:formatDate value="${post.reviewDate}"
															pattern="yy-MM-dd HH:mm:ss" var="fmtDate" /> ${fmtDate}
												</td>
												<td>
													<c:if test="${reply.userId==Users.userId }">
														<input type="hidden" name="replyNo" value="${ reply.replyNo}">
														<input type="hidden" name="replyReviewNo" value="${reply.replyReviewNo }">
														<input type="submit" value="삭제" formaction="/reviewReplyDelete"
																	formmethod="post" id="postButtonStyle1">
													</c:if>
												</td>
											</tr>
											<tr>
												<td> </td>
												<td colspan="2" id="post_reply_content">${reply.replyContent }</td>
											</tr>
										</c:forEach>
										</form>
										</tbody>
										
									</table>
									
						</div>
						
						<div class="1u"></div>
					</div>
				</div>
				<!-- footer -->
				<jsp:include page="../../nonsession/layout/footer.jsp"></jsp:include>
			</div>
		</div>
		

<%-- 
		
	<!-- 기본 작성 Table!! 완성될 때까지 절대 삭제 금지!!!----------------------------------------------------------- -->
	<form>
		<table class="board_view" border="1">
			<colgroup>
				<col width="15%" />
				<col width="*%" />
				<col width="15%" />
				<col width="20%" />
			</colgroup>
			<caption>게시글 상세</caption>
			<tbody id="tbody">
				<input type="hidden" name="reviewNo" value="${post.reviewNo }" />
				<tr>
					<th scope="row">제목</th>
					<td colspan="1">${post.reviewTitle} </td> <td>추천수 : 
					<output id="result" > ${post.reviewStar}</output></td>
					<td> <input type="button" id="star" value="추천하기"></td>


				</tr>
				<tr>
					<th scope="row">작성자</th>
					<input type="hidden" name="userId" value="${post.userId }" />
					<td>${post.users.userNick}</td>
					<th scope="row">작성일</th>
					<td><fmt:formatDate value="${post.reviewDate}"
							pattern="yy-MM-dd" var="fmtDate" /> ${fmtDate}</td>
				</tr>
				
				<tr style="height: 8em;">
				<td colspan='4'>
				<iframe src="/route?routeNo=${post.routeNo }"
				height="600px" width="600px"  scrolling="no" frameborder="0">
				</iframe></td>
				</tr>
				
				<tr>
					<th scope="row">Content0</th>
					<td colspan="3">${post.reviewContent0}</td>
				</tr>
				
				<c:if test="${!empty post.reviewContent1 }">
				<tr>
					<th scope="row">Content1</th>
					<td colspan="3">${post.reviewContent1}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent2 }">
				<tr>
					<th scope="row">Content2</th>
					<td colspan="3">${post.reviewContent2}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent3 }">
				<tr>
					<th scope="row">Content3</th>
					<td colspan="3">${post.reviewContent3}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent4}">
				<tr>
					<th scope="row">Content4</th>
					<td colspan="3">${post.reviewContent4}</td>
				</tr>
				</c:if>
				<c:if test="${!empty post.reviewContent5 }">
				<tr>
					<th scope="row">Content5</th>
					<td colspan="3">${post.reviewContent5}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent6}">
				<tr>
					<th scope="row">Content6</th>
					<td colspan="3">${post.reviewContent6}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent7 }">
				<tr>
					<th scope="row">Content7</th>
					<td colspan="3">${post.reviewContent7}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent8}">
				<tr>
					<th scope="row">Content8</th>
					<td colspan="3">${post.reviewContent8}</td>
				</tr>
				</c:if>
				
				<c:if test="${!empty post.reviewContent9}">
				<tr>
					<th scope="row">Content9</th>
					<td colspan="3">${post.reviewContent9}</td>
				</tr>
				</c:if>
				
				
				<tr align="right">
					<td colspan="4"><input type="button" value="목록으로"
						id="listview"> <c:if test="${post.userId==Users.userId }">
							<input type="submit" value="수정하기"
								formaction="/session/postUpdate" formmethod="post">
						</c:if></td>
				</tr>


				<tr align="center">
					<td>댓글</td>
					<td colspan="2"><input type="text" id="replyContent"></td>
					<td><input type="button" value="등록" id="replyRegist"></td>
				</tr>
				<c:forEach var="reply" items="${replys }">
					<tr>
						<td>${reply.users.userNick}</td>
						<td colspan="3">${reply.replyContent }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</form> --%>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "post?page=1";
		});

		<c:url value="/session/replyRegist2" var="replyRegist" />
		$("#replyRegist").on(
				"click",
				function() {
					$.ajax({
						type : "post",
						url : "${replyRegist}",
						data : {
							userId : "${Users.userId}",
							replyContent : $("#replyContent").val(),
							reviewNo : "${post.reviewNo}"
						},
						success : function(res) {
							console.log(res);
							$("#postReplyContentViewTableBody").empty();
							$("#replyContent").val("");
							alert("등록완료");
							$(res).each(function(idx, item){
								console.log(item);
								var replyId = item.userId;
								var date = new Date(item.replyDate);
								var year = date.getFullYear().toString();
								var month = (date.getMonth()+1).toString();
								var day = date.getDate().toString();
								var hour = date.getHours();
								var minute= date.getMinutes();
								var second= date.getSeconds();
								if(day<10){
									day="0"+day;
								}
								year=year.substr(2,2);
								var newDate = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
								
								
								if(replyId=='${Users.userId}') {
									$("#postReplyContentViewTableBody")[0].innerHTML +=
										"<tr> <th>"+item.users.userNick +"</th>"
										+ "<td id='post_reply_date'>" + newDate +"</td>"
										+"<td>"
										+"<input type='submit' value='수정' formaction='/session/replyUpdate'"
										+"formmethod='post' id='postButtonStyle1'>"
										+"<input type='hidden' name='replyNo' value='${ reply.replyNo}'>"
										+"<input type='submit' value='삭제' formaction='/replyDelete'"
										+"formmethod='post' id='postButtonStyle1'>"
										+"</td></tr> <tr> <td> </td> <td colspan='2' id='post_reply_content'>"
										+ item.replyContent
										+"</td> </tr>";
								}
								
								else {
									$("#postReplyContentViewTableBody")[0].innerHTML +=
										"<tr> <th>"+item.users.userNick +"</th>"
										+ "<td id='post_reply_date'>" + newDate +"</td>"
										+"<td></td></tr>"
										+"<tr> <td> </td>"
										+"<td colspan='2' id='post_reply_content'>"
										+ item.replyContent
										+"</td> </tr>";
								}
							});
						},
						error : function(xhr, status, error) {
							alert("로그인이 필요합니다");
						}
					});
				});

		$(document).on("ready", function() {
			if ("${message}" != null && "${message}" != ("")) {
				alert("${message}");
	<%session.removeAttribute("message");%>
		}
		});
		
		
		<c:url value="/session/star" var="star" />
			$("#star").on(
					"click",
					function() {
						$.ajax({
							type : "get",
							url : "${star}",
							data : {
								userId : "${Users.userId}",
								reviewNo : "${post.reviewNo}"
							},
							success : function(res) {
								var html="";
								
								$("#result").val(Number.parseInt($("#result").val())+1);
								alert("추천완료");
							},
							error : function(xhr, status, error) {
								alert("로그인이 필요합니다");
							}
						});
					});
		
		
	</script>

</body>
</html>