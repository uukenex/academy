<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
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
		
<title>Q & A</title>
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
					
					<!-- Board Left Menu -->
						<jsp:include page="../layout/board_left_menu.jsp" />
						
					<!-- Board Body part -->
						<div class="8u 12u(mobile) important(mobile)">
							<section class="middle-content">
								<form id="frm">
									<section class="questionView">
										<input type="button" value="목록" id="listview" class="boardButtonStyle2">
										<table class="questionViewTable" align="center">
											<input type="hidden" name="qnaNo" value="${qna.qnaNo }" />
											<tr>
												<th colspan="2">
													<ul class="boardButtonList">
														<li>
													 		<c:if test="${qna.userId==Users.userId }">
																<input type="submit" value="삭제" formaction="/qnaDelete"
																			formmethod="post" class="boardButtonStyle1">
															</c:if>
													 	</li>
													 	<li>
													 		<c:if test="${qna.userId==Users.userId }">
																<input type="submit" value="수정" formaction="/session/qnaUpdate"
																			formmethod="post" class="boardButtonStyle1">
															</c:if>
													 	</li>
													 </ul>
												</th>
											</tr>
											<tr>
												<th rowspan="2" align="center">
													<i class="fa fa-question-circle-o fa-4x"></i>
												</th>
												<td>
													<p id="questionViewTitle">${qna.qnaTitle }<p>
													<ul class="questionViewUl">
														<input type="hidden" name="userId" value="${qna.userId }" />
														<li>${qna.users.userNick }</li>
														<li><fmt:formatDate value="${qna.qnaDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}</li>
														<li>${qna.qnaCount }</li>
													</ul>
												</td>
											</tr>
											<tr class="questionContentStyle">
												<td>
													${qna.qnaQuestion }
												</td>
											</tr>
											<tr>
												<th colspan="2">
													<input type="button" value="답변하기" class="qnaAnswerButton">
												</th>
											</tr>
										</table>
									</section>
									
									<section class="answerView">
										
											<table class="answerViewTable" align="center">
												<colgroup>
													<col width="10%">
													<col width="*%">
												</colgroup>
												<tbody id="replyContentViewTableBody">
												<c:forEach var="answer" items="${answers }">
												<tr>
													<td rowspan="2" style="padding-left: 1.5em">
														<i class="fa fa-font fa-2x"></i>
													</td>
													<th colspan="2" class="questionContentStyle">
														${answer.answerContent }
													</th>
												</tr>
												<tr>
													<td>
														<ul class="questionViewUl">
															<li>${answer.users.userNick }</li>
															<li><fmt:formatDate value="${answer.answerDate }"
														pattern="yy-MM-dd hh:mm:ss" var="fmtDate" /> ${fmtDate}</li>
														</ul>
													</td>
													<td class="qnaSubmitButtonStyle">
														<c:if test="${answer.userId==Users.userId }">
															<input type="submit" value="삭제" formaction="/qnaDelete"
																		formmethod="post" class="boardButtonStyle1">
														</c:if>
														<c:if test="${answer.userId==Users.userId }">
															<input type="submit" value="수정" formaction="/session/qnaUpdate"
																		formmethod="post" class="boardButtonStyle1">
														</c:if>
													</td>
												</tr>
												<tr>
												</tr>
												</c:forEach>
												</tbody>
											</table>
										
									</section>
									
									<hr id="boardTitleHrStyle2">
									
									<div id="boardReplyWritter">
										<table class="answerViewTable">
											<colgroup>
												<col width="10%" />
												<col width="*%" />
												<col width="10%" />
											</colgroup>
											<tr>
												<td><label for="replyContent"><i class="fa fa-key fa-2x"></i></label></td>
												<td>
													<textarea cols="75" rows="4" id="answerContent" placeholder="댓글을 입력하세요."></textarea>
												</td>
												<td id="qnaWritterButton">
													<input type="button" value="등록" id="answerRegist" class="boardButtonStyle3">
												</td>
											</tr>
										</table>
									</div>
								</form>
							</section>
					</div>
				</div>
				<!-- footer -->
					<jsp:include page="../layout/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$("#listview").on("click", function() {
			location.href = "qna?page=1";
		});
		
		<c:url value="/session/replyRegist3" var="replyRegist" />
		
			$("#answerRegist").on("click",function() {
						$.ajax({
							type : "post",
							url : "${replyRegist}",
							data : {
								userId : "${Users.userId}",
								answerContent : $("#answerContent").val(),
								qnaNo : "${qna.qnaNo}"
							},
							success : function(res) {
								$("#replyContentViewTableBody").empty();
								$("#answerContent").val("");
								alert("등록완료");
								$(res).each(function(idx,item){
									var answerId = item.userId;
									var date=new Date(item.answerDate);
									var year = date.getFullYear().toString();
									var month = (date.getMonth()+1).toString();
									var date = date.getDate().toString();
									if(date<10){
										date="0"+date;
									}
									year=year.substr(2,2);
									var newDate = year+"-"+month+"-"+date;
									/* 여기는 수정부분 */
									if(answerId=='${Users.userId}'){
										$("#replyContentViewTableBody")[0].innerHTML +=
											"<tr> <td rowspan='2' style='padding-left: 1.5em'>"
											+ "<i class='fa fa-font fa-2x'></i> </td>"
											+ "<th colspan='2' class='questionContentStyle'>"
											+ item.answerContent
											+ "</th> </tr> <tr> <td>"
											+ "<ul class='questionViewUl'> <li>"
											+ item.users.userNick
											+ "</li> <li>"
											+ newDate + "</li> </ul> </td>"
											+ "<td class='qnaSubmitButtonStyle'>"
											+ "<input type='submit' value='삭제' formaction='/qnaDelete'"
											+ "formmethod='post' class='boardButtonStyle1'>"
											+ "<input type='submit' value='수정' formaction='/session/qnaUpdate'"
											+ "formmethod='post' class='boardButtonStyle1'>"
											+ "</td> </tr> <tr> </tr>";
									}
									else {
										$("#replyContentViewTableBody")[0].innerHTML +=
											"<tr> <td rowspan='2' style='padding-left: 1.5em'>"
											+ "<i class='fa fa-font fa-2x'></i> </td>"
											+ "<th colspan='2' class='questionContentStyle'>"
											+ item.answerContent
											+ "</th> </tr> <tr> <td>"
											+ "<ul class='questionViewUl'> <li>"
											+ item.users.userNick
											+ "</li> <li>"
											+ newDate + "</li> </ul> </td>"
											+ "<td class='qnaSubmitButtonStyle'>"
											+ "</td> </tr> <tr> </tr>";
									}
								});
								
								
								
							},
							error : function(xhr, status, error) {
								alert(error);
							}
						});
					});
	</script>
	
</body>
</html>